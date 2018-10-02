<?php

namespace backend\controllers;

use backend\models\Zone;
use Yii;
use backend\models\Prodissue;
use backend\models\ProdissueSearch;
use yii\helpers\Json;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\web\ForbiddenHttpException;

/**
 * ProdissueController implements the CRUD actions for Prodissue model.
 */
class ProdissueController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
            'access'=>[
                'class'=>AccessControl::className(),
                'denyCallback' => function ($rule, $action) {
                    throw new ForbiddenHttpException('คุณไม่ได้รับอนุญาติให้เข้าใช้งาน!');
                },
                'rules'=>[
                    [
                        'allow'=>true,
                        'roles'=>['@'],
                        'matchCallback'=>function($rule,$action){
                            $currentRoute = Yii::$app->controller->getRoute();
                            if(Yii::$app->user->can($currentRoute)){
                                return true;
                            }
                        }
                    ]
                ]
            ]
        ];
    }

    /**
     * Lists all Prodissue models.
     * @return mixed
     */
    public function actionIndex()
    {
        $pageSize = \Yii::$app->request->post("perpage");
        $searchModel = new ProdissueSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider->pagination->pageSize = $pageSize;

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'perpage' => $pageSize,
        ]);
    }

    /**
     * Displays a single Prodissue model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Prodissue model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Prodissue();

        if ($model->load(Yii::$app->request->post())) {

            $section = Yii::$app->request->post('line_section');
            $emp = Yii::$app->request->post('line_emp');
            $zone = Yii::$app->request->post('zone_id');
            $lot_no = Yii::$app->request->post('line_lot');
            $qty = Yii::$app->request->post('line_qty');
            $note = Yii::$app->request->post('line_note');

            $model->status = 1;
            $model->issue_by = \Yii::$app->user->id;
            $model->trans_date = strtotime($model->trans_date);
          //  $model->section_id = \backend\models\Section::findUserdept(\Yii::$app->user->id);
            if($model->save()){
                if(count($section)>0){
                    for($i=0;$i<=count($section)-1;$i++){
                        if($section[$i]==''){continue;}

                        $modelrec = new \common\models\ProdIssueLine();
                        $modelrec->prod_issue_id = $model->id;
                        $modelrec->section_id = $section[$i];
                        $modelrec->emp_id = $emp[$i];
                        $modelrec->zone_id = $zone[$i];
                        $modelrec->lot_no = $lot_no[$i];
                        $modelrec->qty = $qty[$i];

                     //   $modelrec->line_type = 2; // เบิกสินค้า

                        if($modelrec->save(false)){

                            $this->updateissue($modelrec->zone_id,$modelrec->qty);

              //              array_push($data,['product_id'=>$prod_recid[$i],'qty'=>$qty[$i],'price'=>0]);
              //              \backend\models\Journal::createTrans($line_zone[$i],$data,'',\backend\helpers\RunnoTitle::RUNNO_ISSUE);
                        }
                    }
                    $this->updateIssueQty($model->id);
                }
                $session = Yii::$app->session;
                $session->setFlash('msg','บันทึกรายการเรียบร้อย');
                return $this->redirect(['index']);
            }
        }

        return $this->render('create', [
            'model' => $model,
            'runno' => $model->getLastNo(),
        ]);
    }

    /**
     * Updates an existing Prodissue model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $modelline =\backend\models\Prodissueline::find()->where(['prod_issue_id'=>$id])->all();

        if ($model->load(Yii::$app->request->post())) {
            if($model->save()){
                $session = Yii::$app->session;
                $session->setFlash('msg','บันทึกรายการเรียบร้อย');
                return $this->redirect(['index']);
            }
        }

        return $this->render('update', [
            'model' => $model,
            'modelline'=>$modelline,
        ]);
    }

    /**
     * Deletes an existing Prodissue model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        $session = Yii::$app->session;
        $session->setFlash('msg','ทำรายการเรียบร้อย');
        return $this->redirect(['index']);

    }

    /**
     * Finds the Prodissue model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Prodissue the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Prodissue::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }
    public function updateissue($zoneid,$qty){
        $model = \backend\models\Zoneproduct::find()->where(['zone_id'=>$zoneid,'qty'=>$qty])->one();
        if($model){
            $model->status = 1 ; // ล๊อกระหว่างเบิก
            $model->wip_qty = $qty;
            $model->remain_qty = $qty;
            $model->save(false);
        }
    }
    public function findProduct($zoneid){
        $model = Zone::find()->where(['id'=>$zoneid])->one();
    }
    public function actionShowemp($id){
        $model = \common\models\Employee::find()->where(['section_id' => $id])->all();

        if (count($model) > 0) {
            echo "<option>เลือกผู้เบิก</option>";
            foreach ($model as $value) {

                echo "<option value='" . $value->id . "'>$value->first_name $value->last_name</option>";

            }
        } else {
            echo "<option>เลือกผู้เบิก</option>";
        }
    }
//    public function actionShowzone($id){
//        $modelzonetype = \backend\models\Product::find()->where([''])->one();
//        $model = \common\models\Employee::find()->where(['section_id' => $id])->all();
//
//        if (count($model) > 0) {
//            echo "<option>เลือกผู้เบิก</option>";
//            foreach ($model as $value) {
//
//                echo "<option value='" . $value->id . "'>$value->first_name $value->last_name</option>";
//
//            }
//        } else {
//            echo "<option>เลือกผู้เบิก</option>";
//        }
//    }
    public function actionGetzoneinfo(){
        $id = Yii::$app->request->post('id');
        if($id){
            $model = \backend\models\Zoneproduct::find()->where(['zone_id'=>$id])->one();
            if($model){
                $data = [['qty'=>$model->qty,'lot_no'=>$model->lot_no]];
                return Json::encode($data);
            }else{
                return null;
            }
        }
    }
    public function updateIssueQty($id){
        $qty = 0;
        $model = \backend\models\Prodissueline::find()->where(['prod_issue_id'=>$id])->all();
        if($model){
            foreach ($model as $value) {
                $qty += $value->qty;
            }
            $modelupdate = \backend\models\Prodissue::find()->where(['id'=>$id])->one();
            $modelupdate->qty = $qty;
            $modelupdate->save(false);
        }
    }
    public function actionCancel(){
        $id = \Yii::$app->request->post('id');
        if($id){
            $model = \backend\models\Prodissue::find()->where(['id'=>$id])->one();
            if($model){
                $model->status = 2;
                if($model->save(false)){
                    $modelline = \backend\models\Prodissueline::find()->where(['prod_issue_id'=>$id])->all();
                    if($modelline){
                        foreach ($modelline as $value){
                           $modelzone = \backend\models\Zoneproduct::find()->where(['zone_id'=>$value->zone_id])->one();
                           if($modelzone){
                               $modelzone->wip_qty = $modelzone->wip_qty - $value->qty;
                               $modelzone->remain_qty = $modelzone->remain_qty - $value->qty;
                               $modelzone->status = 0;
                               $modelzone->save(false);
                           }
                        }
                    }
                }
                $session = Yii::$app->session;
                $session->setFlash('msg','ยกเลิกรายการเรียบร้อย');
                return $this->redirect(['index']);
            }
        }
    }
}
