<?php

namespace backend\controllers;

use backend\models\Purchplanline;
use Yii;
use backend\models\Purchplan;
use backend\models\PurchplanSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\helpers\Json;
use yii\db\Expression;
use yii\web\ForbiddenHttpException;
/**
 * PurchplanController implements the CRUD actions for Purchplan model.
 */
class PurchplanController extends Controller
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
                    'delete' => ['POST','GET'],
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
     * Lists all Purchplan models.
     * @return mixed
     */

    public function actionIndex()
    {
//        $times = date('Y-m-d');
//        $sql = "SELECT plan_type,SUM(plan_qty)as qty FROM purch_plan_line WHERE trans_date = '$times'  GROUP BY plan_type";
//        $query = Yii::$app->db->createCommand($sql)->queryAll();
//        $data = [];
//        for($i=0;$i<sizeof($query);$i++){
//            array_push($data,['no'=>$i+1,'product'=>\backend\models\Product::findName($query[$i]['plan_type']),'qty'=>number_format($query[$i]['qty'])]);
//        }
//        echo Json::encode($data);
//        return;
        $pageSize = \Yii::$app->request->post("perpage");
        $searchModel = new PurchplanSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider->pagination->pageSize = $pageSize;

        $modelevent = new \common\models\Event();

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'perpage' => $pageSize,
            'modelevent'=>$modelevent,
        ]);
    }

    /**
     * Displays a single Purchplan model.
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
     * Creates a new Purchplan model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Purchplan();

        if ($model->load(Yii::$app->request->post())) {
            $model->plan_date = strtotime($model->plan_date);
            if($model->save()){
                $session = Yii::$app->session;
                $session->setFlash('msg','บันทึกรายการเรียบร้อย');
                return $this->redirect(['index']);
            }
        }

        return $this->render('_newform', [
            'model' => $model,
            'title'=>'สร้างแผนสั่งซื้อ'
        ]);
    }

    /**
     * Updates an existing Purchplan model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $modelline = \backend\models\Purchplanline::find()->where(['plan_id'=>$id])->orderBy(['id'=>SORT_ASC])->all();
        $modelrow = \backend\models\Purchplanline::find()->select('plan_type')->where(['plan_id'=>$id])->distinct()->orderBy(['plan_type'=>SORT_ASC])->all();

        if ($model->load(Yii::$app->request->post())) {
           // $pdate = date_create($model->plan_date);

            $model->plan_date = strtotime($model->plan_date);
            if($model->save()){
                $session = Yii::$app->session;
                $session->setFlash('msg','บันทึกรายการเรียบร้อย');
                return $this->redirect(['index']);
            }
        }

        return $this->render('_test', [
            'model' => $model,
            'modelline'=> $modelline,
            'modelrow'=>$modelrow,
            'title'=>'แก้ไขแผน'
        ]);
    }

    /**
     * Deletes an existing Purchplan model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        \backend\models\Purchplanline::deleteAll(['plan_id'=>$id]);
        $this->findModel($id)->delete();

            $session = Yii::$app->session;
            $session->setFlash('msg','บันทึกรายการเรียบร้อย');
            return $this->redirect(['index']);
    }

    /**
     * Finds the Purchplan model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Purchplan the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Purchplan::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
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
    public function actionCalendaritem($start=NULL,$end=NULL,$_=NULL){

        \Yii::$app->response->format = \yii\web\Response::FORMAT_JSON;

       // $times = \app\modules\timetrack\models\Timetable::find()->where(array('category'=>\app\modules\timetrack\models\Timetable::CAT_TIMETRACK))->all();
        $times = \common\models\Event::find()->where(['event_type'=>1])->all();
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
    public function actionCreatetitle(){
        $model = new \common\models\Event();
        if($model->load(Yii::$app->request->post())){
          //  echo Yii::$app->request->post('plan_date');return;
            $pdate = date_create(Yii::$app->request->post('plan_date'));
            //echo date_format($pdate,'d-m-Y');return;
            $model->start = strtotime(date_format($pdate,'d-m-Y'));
            if($model->save()){
                return $this->redirect(['index']);
            }
        }
    }
    public function actionShowcalendar(){
        $modelevent = new \common\models\Event();
        return $this->render('_plancalendar',['modelevent'=>$modelevent,]);
    }

    public function actionTestsave(){
        $post = Yii::$app->request->post();
        $rows = Yii::$app->request->post('row');
        $row_edit = Yii::$app->request->post('row_id');
        // echo count($rows);

        if($this->checktodayplan()){
            $session = Yii::$app->session;
            $session->setFlash('error','แผนสั่งซื้อประจำวันที่ '.date('d-m-Y'). ' มีในระบบแล้ว');
            return $this->redirect(['index']);
        }

        if($post){
            $model = new \backend\models\Purchplan();
            $model->name = "แผนซื้อประจำวันที่ ".date('d-m-Y');
            $model->plan_date = strtotime(date('d-m-Y'));
            $model->status = 1;
            $model->trans_date = date('Y-m-d');
            if($model->save(false)){
                $this->createEvent($model->trans_date,$model->name,\backend\helpers\EventType::TYPE_PURCH);
                for($i=0;$i<=count($rows)-1;$i++){
                    $sup = 0;
                    $plan_qty = 0;
                    $qty = 0;
                    $price = 0;
                    $plan_type = Yii::$app->request->post("plan_row_".($i+1)."_type")[0];

                    $row_col = Yii::$app->request->post("row_".($i+1)."_col");


                    for($x=0;$x<=$row_col[0]-1;$x++){
                        $r_sup = 'plan_row_'.($i+1).'_sub_'.($x+1);
                        $r_p_qty = 'plan_row_'.($i+1).'_plan_qty_'.($x+1);
                        $r_qty = 'plan_row_'.($i+1).'_qty_'.($x+1);
                        $r_price = 'plan_row_'.($i+1).'_price_'.($x+1);
                        // echo $xi;
                        // return;
                        if(Yii::$app->request->post($r_sup)!== null){
                            $sup =Yii::$app->request->post($r_sup)[0];
                        }
                        if(Yii::$app->request->post($r_p_qty)!== null){
                            $plan_qty = Yii::$app->request->post($r_p_qty)[0];
                        }
                        if(Yii::$app->request->post($r_qty)!== null){
                            $qty = Yii::$app->request->post($r_qty)[0];
                        }
                        if(Yii::$app->request->post($r_price)!== null){
                            $price = Yii::$app->request->post($r_price)[0];
                        }


                        $modelline = new \backend\models\Purchplanline();
                        $modelline->plan_type = $plan_type;
                        $modelline->plan_id = $model->id;
                        $modelline->sup_id = $sup;
                        $modelline->plan_qty = $plan_qty;
                        $modelline->received_qty = $qty;
                        $modelline->plan_price = $price;
                        $modelline->trans_date = date('Y-m-d');
                        $modelline->save(false);


                    }

                    // print_r($plan_qty);


                }
                $session = Yii::$app->session;
                $session->setFlash('msg','บันทึกรายการเรียบร้อย');
                return $this->redirect(['index']);
            }
        }

//        $session = Yii::$app->session;
//        $session->setFlash('msg','บันทึกรายการเรียบร้อย');
        return $this->redirect(['index']);

//        echo "<pre>";
//        print_r($post);
//        echo "</pre>";



    }
    public function actionUpdateplan(){
        $post = Yii::$app->request->post();
        $rows = Yii::$app->request->post('row');
        $planid = Yii::$app->request->post('planid');
        $row_edit = Yii::$app->request->post('row_id');
        // echo count($rows);
//
//        echo "<pre>";
//        print_r($post);
//        echo "</pre>";
//
//        return;

        if($post){
            $model =\backend\models\Purchplan::find()->where(['id'=>$planid])->one();
            $model->name = "แผนซื้อประจำวันที่ ".date('d-m-Y');
            $model->plan_date = strtotime(date('d-m-Y'));
            $model->status = 1;
            if($model->save(false)){
                \backend\models\Purchplanline::deleteAll(['plan_id'=>$planid]);
                $this->createEvent($model->trans_date,$model->name,\backend\helpers\EventType::TYPE_PURCH);
                for($i=0;$i<=count($rows)-1;$i++){
                    $sup = 0;
                    $plan_qty = 0;
                    $qty = 0;
                    $price = 0;
                    $plan_type = Yii::$app->request->post("plan_row_".($i+1)."_type")[0];

                    $row_col = Yii::$app->request->post("row_".($i+1)."_col");


                    for($x=0;$x<=$row_col[0]-1;$x++){
                        $r_sup = 'plan_row_'.($i+1).'_sub_'.($x+1);
                        $r_p_qty = 'plan_row_'.($i+1).'_plan_qty_'.($x+1);
                        $r_qty = 'plan_row_'.($i+1).'_qty_'.($x+1);
                        $r_price = 'plan_row_'.($i+1).'_price_'.($x+1);
                        // echo $xi;
                        // return;
                        if(Yii::$app->request->post($r_sup)!== null){
                            $sup =Yii::$app->request->post($r_sup)[0];
                        }
                        if(Yii::$app->request->post($r_p_qty)!== null){
                            $plan_qty = Yii::$app->request->post($r_p_qty)[0];
                        }
                        if(Yii::$app->request->post($r_qty)!== null){
                            $qty = Yii::$app->request->post($r_qty)[0];
                        }
                        if(Yii::$app->request->post($r_price)!== null){
                            $price = Yii::$app->request->post($r_price)[0];
                        }
                        //echo $sup." ".$plan_qty." ".$qty." ".$price."<br />";

                        $modelline = new \backend\models\Purchplanline();
                        $modelline->plan_type = $plan_type;
                        $modelline->plan_id = $model->id;
                        $modelline->sup_id = $sup;
                        $modelline->plan_qty = $plan_qty;
                        $modelline->received_qty = $qty;
                        $modelline->plan_price = $price;
                        $modelline->save(false);


                    }

                    // print_r($plan_qty);


                }
            }
        }

        $session = Yii::$app->session;
        $session->setFlash('msg','บันทึกรายการเรียบร้อย');
        return $this->redirect(['index']);




    }
    public function createEvent($date,$title,$type){
        \backend\models\Event::deleteAll(['title'=>$title]);
        if($date !=''){
            $model = new \backend\models\Event();
            $model->title = $title;
            $model->start = strtotime($date);
            $model->event_type = $type;
            $model->trans_date = $date;
            if($model->save(false)){
                return true;
            }
            return false;
        }
    }
    public function actionCopyplan(){
        $plan = Yii::$app->request->post('planid');
        if($plan){
           // return $plan;
            $model = \backend\models\Purchplan::find()->where(['id'=>$plan])->one();
            if($model){
                $newmodel = new \backend\models\Purchplan();
                $newmodel->setAttributes($model->getAttributes());
                $newmodel->name = "แผนซื้อประจำวันที่ ".date('d-m-Y');
                $newmodel->plan_date = strtotime(date('d-m-Y'));
                $newmodel->status = 1;
                $newmodel->trans_date = date('Y-m-d');
                if($newmodel->save(false)){
                    $modeloldline = \backend\models\Purchplanline::find()->where(['plan_id'=>$model->id])->all();
                    if($modeloldline){
                        \backend\models\Purchplanline::deleteAll(['plan_id'=>$newmodel->id]);
                        $this->createEvent($newmodel->trans_date,$newmodel->name,\backend\helpers\EventType::TYPE_PURCH);
                        foreach($modeloldline as $data){
                                $modelline = new \backend\models\Purchplanline();
                                $modelline->plan_type = $data->plan_type;
                                $modelline->plan_id = $newmodel->id;
                                $modelline->sup_id = $data->sup_id;
                                $modelline->plan_qty = $data->plan_qty;
                                $modelline->received_qty = 0;
                                $modelline->plan_price = $data->plan_price;
                                $modelline->save(false);
                            }

                        }
                    }



                    $session = Yii::$app->session;
                    $session->setFlash('msg','บันทึกรายการเรียบร้อย');
                    return $this->redirect(['index']);
                }
            }
        }

        public function actionCheckoldplan(){
            $date = date('Y-m-d',strtotime(date('d-m-Y')));
            $model = \backend\models\Purchplan::find()->where(['trans_date'=>$date])->count();
            return $model;
        }
        public function checktodayplan(){
            $date = date('Y-m-d',strtotime(date('d-m-Y')));
            $model = \backend\models\Purchplan::find()->where(['trans_date'=>$date])->count();
            return $model;
        }

    }

