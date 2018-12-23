<?php

namespace backend\controllers;

use Yii;
use backend\models\Cuttable;
use backend\models\CuttableSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * CuttableController implements the CRUD actions for Cuttable model.
 */
class CuttableController extends Controller
{
    public $enableCsrfValidation = false;
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
        ];
    }

    /**
     * Lists all Cuttable models.
     * @return mixed
     */
    public function actionIndex()
    {
        $pageSize = \Yii::$app->request->post("perpage");
        $searchModel = new CuttableSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider->pagination->pageSize = $pageSize;

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'perpage' => $pageSize,
        ]);
    }

    /**
     * Displays a single Cuttable model.
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
     * Creates a new Cuttable model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Cuttable();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('_create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Cuttable model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $modelline = \backend\models\Cutline::find()->where(['cut_id'=>$id])->all();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('_create', [
            'model' => $model,
            'modelline'=>$modelline,

        ]);
    }

    /**
     * Deletes an existing Cuttable model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Cuttable model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Cuttable the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Cuttable::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
    public function actionCutcreate(){
        $orcard = Yii::$app->request->post('orcard_id');
        $product = Yii::$app->request->post('product');
        $teamcut = Yii::$app->request->post('team');
        $cutdate = Yii::$app->request->post('cut_date');
        $cutnextdate = Yii::$app->request->post('cut_next_date');

        if(count($orcard)){
            $model = new \backend\models\Cuttable();
            $model->status  =1;
            $model->cut_no = ''.($this->findMax()+1);
            if($model->save()){
                for($i=0;$i<=count($orcard)-1;$i++){
                    $modelline = new \backend\models\Cutline();
                    $modelline->cut_id = $model->id;
                    $modelline->orcard_id = $orcard[$i];
                    $modelline->product_id = $product[$i];
                    $modelline->cut_team = $teamcut[$i];
                    $modelline->cut_date = $cutdate[$i];
                    $modelline->cut_next_date = $cutnextdate[$i];
                    $modelline->save();
                }
            }
            $this->redirect(['index']);
        }


    }
    public function actionCutupdate(){
        $cutid = Yii::$app->request->post('cut_id');
        $orcard = Yii::$app->request->post('orcard_id');
        $product = Yii::$app->request->post('product');
        $teamcut = Yii::$app->request->post('team');
        $cutdate = Yii::$app->request->post('cut_date');
        $cutnextdate = Yii::$app->request->post('cut_next_date');

       // echo $cutid;return;

        if(count($cutid)){
            $model = \backend\models\Cuttable::find()->where(['id'=>$cutid])->one();
            $model->status  =1;
            if($model->save()){
                if(count($orcard)){
                    \backend\models\Cutline::deleteAll(['cut_id'=>$cutid]);
                    for($i=0;$i<=count($orcard)-1;$i++){
                        $modelline = new \backend\models\Cutline();
                        $modelline->cut_id = $model->id;
                        $modelline->orcard_id = $orcard[$i];
                        $modelline->product_id = $product[$i];
                        $modelline->cut_team = $teamcut[$i];
                        $modelline->cut_date = $cutdate[$i];
                        $modelline->cut_next_date = $cutnextdate[$i];
                        $modelline->save();
                    }
                }

            }
            $this->redirect(['index']);
        }


    }
    public function findMax(){
        $model = \backend\models\Cuttable::find()->max('id');
        return $model;
    }
}
