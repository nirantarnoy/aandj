<?php

namespace backend\controllers;

use Yii;
use backend\models\Cuttable;
use backend\models\CuttableSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use kartik\mpdf\Pdf;

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

        $model = \backend\models\Cuttable::find()->one();
        if($model){
            return $this->redirect(['update','id'=>$model->id]);
        }else{
            return $this->redirect(['create']);
        }
//        $pageSize = \Yii::$app->request->post("perpage");
//        $searchModel = new CuttableSearch();
//        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
//        $dataProvider->pagination->pageSize = $pageSize;
//
//        return $this->render('index', [
//            'searchModel' => $searchModel,
//            'dataProvider' => $dataProvider,
//            'perpage' => $pageSize,
//        ]);
    }
    public function actionShowcalendar(){
        $modelevent = new \common\models\Event();
        return $this->render('_cutcalendar',['modelevent'=>$modelevent,]);
    }
    public function actionFindevent(){
        $datefind = Yii::$app->request->post('datefind');
        // return strtotime($datefind ."+1 days");
        $times = date('Y-m-d',strtotime($datefind));
        // return $times;
        // return date('d-m-Y',$times);
        if($datefind !='') {
//            $model = \backend\models\Purchplan::find()->where(['>','id',1])->all();
//            if($model){
//                return Json::encode($model);
//            }


            $sql = "SELECT plan_type,SUM(plan_qty)as qty FROM purch_plan_line WHERE trans_date = '$times'  GROUP BY plan_type";
            $query = Yii::$app->db->createCommand($sql)->queryAll();
            $data = [];
            for ($i = 0; $i < sizeof($query); $i++) {
                array_push($data, ['no' => $i + 1, 'product' => \backend\models\Product::findName($query[$i]['plan_type']), 'qty' => number_format($query[$i]['qty'])]);
            }

            $modelwork = \backend\models\Workschedule::find()->where(['trans_date' => $times])->one();
            $data2 = [];
            if($modelwork){
                array_push($data2, ['no' => 1, 'orchard' => \backend\models\Orchard::getName($modelwork->orchard_id),
                    'team_cut' => \backend\models\Team::findName($modelwork->team_cut),
                    'team_pick'=> \backend\models\Team::findName($modelwork->team_pick)]);
            }
            $x=[];
            $m=[];
            $xdata = [];
//            array_push($x,['name'=>'niran']);
//            array_push($m,['name'=>'tarlek']);
            // return Json::encode($data);
            $xdata[0]= $data;
            $xdata[1]= $data2;
            return Json::encode($xdata);
        }
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
        $list = [];
        if($modelline){
            foreach ($modelline as $value){
                array_push($list,$value->orcard_id);
            }
        }
        $model_orcard =  \backend\models\Orchard::find()->where(['NOT IN','id',$list])->all();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('_create', [
            'model' => $model,
            'modelline'=>$modelline,
            'orcardall' => $model_orcard,

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

                    $detail = 'สวน '.\backend\models\Orchard::getName($orcard[$i]);
                    $this->createEvent($modelline->cut_next_date,$detail,\backend\helpers\EventType::TYPE_CUT,$model->id);

                }
            }
            $this->redirect(['index']);
        }


    }
    public function actionCalendaritem($start=NULL,$end=NULL,$_=NULL){

        \Yii::$app->response->format = \yii\web\Response::FORMAT_JSON;

        // $times = \app\modules\timetrack\models\Timetable::find()->where(array('category'=>\app\modules\timetrack\models\Timetable::CAT_TIMETRACK))->all();
        $times = \common\models\Event::find()->where(['event_type'=>2])->all();
        // $times = \common\models\PurchPlan::find()->all();
        $events = [];


        foreach ($times AS $time){
            //Testing
            $bgcolor = 'green';

            if($time->event_type == 2){$bgcolor = "blue";}

            $Event = new \yii2fullcalendar\models\Event();
            $Event->id = $time->id;
            $Event->title = $time->title;
            //  $Event->start = date('Y-m-d\TH:i:s\Z');
            $Event->start = date('Y-m-d',strtotime($time->trans_date));
            // $Event->end = date('Y-m-d\TH:i:s\Z',strtotime($time->end.' '.$time->end));
            $Event->backgroundColor = $bgcolor;
            $events[] = $Event;
        }

        return $events;
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
                    $this->deleteEvent($cutid);
                    for($i=0;$i<=count($orcard)-1;$i++){
                        $modelline = new \backend\models\Cutline();
                        $modelline->cut_id = $model->id;
                        $modelline->orcard_id = $orcard[$i];
                        $modelline->product_id = $product[$i];
                        $modelline->cut_team = $teamcut[$i];
                        $modelline->cut_date = $cutdate[$i];
                        $modelline->cut_next_date = $cutnextdate[$i];
                        $modelline->save();
                        $detail = 'สวน '.\backend\models\Orchard::getName($orcard[$i]);
                        $this->createEvent($modelline->cut_next_date,$detail,\backend\helpers\EventType::TYPE_CUT,$model->id);


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
    public function deleteEvent($lineid){
        \backend\models\Event::deleteAll(['event_type'=>2,'ref_type'=>$lineid]);
    }
    public function createEvent($date,$title,$type,$lineid){
      //  \backend\models\Event::deleteAll(['title'=>$title]);
        if($date !=''){
            $model = new \backend\models\Event();
            $model->title = $title;
            $model->start = strtotime($date);
            $model->event_type = $type;
            $model->trans_date = $date;
            $model->ref_type = $lineid; // id of cut table
            if($model->save(false)){
                return true;
            }
            return false;
        }
    }
    public function actionFinddays(){
        $id = Yii::$app->request->post('id');
        if($id){
            $model = \backend\models\Orchard::find()->where(['id'=>$id])->one();
            if($model){
                return $model->cut_interval;
            }else{
                return 0;
            }
        }
    }
    public function actionPrintcuttable(){
        $model = \backend\models\Cuttable::find()->one();
        $modelline = \backend\models\Cutline::find()->where(['cut_id'=>$model->id])->all();
        $pdf = new Pdf([
            'mode' => Pdf::MODE_ASIAN, // leaner size using standard fonts
            //  'format' => [150,236], //manaul
            //'format' => $papersize ==1? Pdf::FORMAT_A4:[100,200],
            'format' =>  Pdf::FORMAT_A4,
            'orientation' => Pdf::ORIENT_PORTRAIT,
            'destination' => Pdf::DEST_BROWSER,
            'content' => $this->renderPartial('_printcuttable',[
                'model'=>$model,
                'modelline' => $modelline,
            ]),
            //'content' => "nira",
            'defaultFont' => '@backend/web/fonts/config.php',
            'cssFile' => '@backend/web/css/pdf.css',
            'options' => [
                'title' => 'รายงานระหัสินค้า',
                'subject' => ''
            ],
            'methods' => [
                //  'SetHeader' => ['รายงานรหัสสินค้า||Generated On: ' . date("r")],
                //  'SetFooter' => ['|Page {PAGENO}|'],
                //'SetFooter'=>'niran',
            ],

        ]);
        //return $this->redirect(['genbill']);
        return $pdf->render();
    }
}
