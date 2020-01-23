<?php

namespace backend\controllers;

use Yii;
use backend\models\Productionrec;
use backend\models\ProductionrecSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\helpers\Json;
use yii\web\ForbiddenHttpException;
use kartik\mpdf\Pdf;
/**
 * ProductionrecController implements the CRUD actions for Productionrec model.
 */
class ProductionrecController extends Controller
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
     * Lists all Productionrec models.
     * @return mixed
     */
    public function actionIndex()
    {
        $full_data = [];
        $rec_data = [];
        $modelx = \backend\models\Productionrec::find()->where(['product_id'=>1])->all();
        if($modelx){
            $id = [];
            foreach($modelx as $value){
                if($value->id){
                    $modelemp = \backend\models\ProductionrecLine::find(['emp_id'])->where(['production_rec_id'=>$value->id])->groupBy('emp_id')->all();
                    foreach ($modelemp as $val){
                        $modelline = \backend\models\ProductionrecLine::find()->select(['line_qty'])->where(['production_rec_id'=>$value->id,'emp_id'=>$val->emp_id])->asArray()->all();
                        array_push($rec_data,['emp_id'=>$val->emp_id,'trans'=>$modelline]);
                    }

                }
                array_push($full_data,['production_rec_id'=>$value->id,'data'=>$rec_data]);
            }

        }
      //  print_r($full_data);return;

        $pageSize = \Yii::$app->request->post("perpage");
        $searchModel = new ProductionrecSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider->pagination->pageSize = $pageSize;

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'perpage' => $pageSize,
        ]);
    }

    /**
     * Displays a single Productionrec model.
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
     * Creates a new Productionrec model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Productionrec();

        if ($model->load(Yii::$app->request->post())) {

            $emp_id = Yii::$app->request->post('emp_id');
            $time_one = Yii::$app->request->post('line_time_one');
            $time_two = Yii::$app->request->post('line_time_two');
            $time_three = Yii::$app->request->post('line_time_three');
            $time_four= Yii::$app->request->post('line_time_four');
            $time_five = Yii::$app->request->post('line_time_five');
            $time_six = Yii::$app->request->post('line_time_six');
            $time_seven = Yii::$app->request->post('line_time_seven');
            $time_eight = Yii::$app->request->post('line_time_eight');
            $time_nine = Yii::$app->request->post('line_time_nine');
            $time_ten = Yii::$app->request->post('line_time_ten');
            $time_eleven = Yii::$app->request->post('line_time_eleven');
            $time_twelve = Yii::$app->request->post('line_time_twelve');

            //  print_r($time_one);return;

            $model->trans_date = strtotime($model->trans_date);
            $model->zone_date = \backend\models\Zoneproduct::findZoneDate($model->zone_id);
            $model->product_id = \backend\models\Zoneproduct::findProduct($model->zone_id);

            if($model->save()){
                $data = [];
                for($x=0;$x<=count($emp_id)-1;$x++) {
                   // for ($m = 0; $m <= 11; $m++) {
                        $modelline = new \backend\models\ProductionrecLine();
                        $modelline->emp_id = $emp_id[$x];
                        $modelline->production_rec_id = $model->id;
                        //$modelline->product_id = \backend\models\Zoneproduct::findProduct($model->zone_id);
//                        if ($m == 0) {
//                            $modelline->line_qty = $time_one[$x];
//                        }else  if ($m == 1) {
//                            $modelline->line_qty = $time_two[$x];
//                        }
//                        else  if ($m == 2) {
//                            $modelline->line_qty = $time_three[$x];
//                        }
//                        else  if ($m == 3) {
//                            $modelline->line_qty = $time_four[$x];
//                        }
//                        else  if ($m == 4) {
//                            $modelline->line_qty = $time_five[$x];
//                        }
//                        else  if ($m == 5) {
//                            $modelline->line_qty = $time_six[$x];
//                        }
//                        else  if ($m == 6) {
//                            $modelline->line_qty = $time_seven[$x];
//                        }
//                        else  if ($m == 7) {
//                            $modelline->line_qty = $time_eight[$x];
//                        }
//                        else  if ($m == 8) {
//                            $modelline->line_qty = $time_nine[$x];
//                        }
//                        else  if ($m == 9) {
//                            $modelline->line_qty = $time_ten[$x];
//                        }
//                        else  if ($m == 10) {
//                            $modelline->line_qty = $time_eleven[$x];
//                        }
//                        else  if ($m == 11) {
//                            $modelline->line_qty = $time_twelve[$x];
//                        }

                    $modelline->line_qty = $time_one[$x];
                    $modelline->line_qty2 = $time_two[$x];
                    $modelline->line_qty3 = $time_three[$x];
                    $modelline->line_qty4 = $time_four[$x];
                    $modelline->line_qty5 = $time_five[$x];
                    $modelline->line_qty6 = $time_six[$x];
                    $modelline->line_qty7 = $time_seven[$x];
                    $modelline->line_qty8 = $time_eight[$x];
                    $modelline->line_qty9 = $time_nine[$x];
                    $modelline->line_qty10 = $time_ten[$x];
                    $modelline->line_qty11 = $time_eleven[$x];
                    $modelline->line_qty12 = $time_twelve[$x];
                    $modelline->status = 1;

                    // $modelline->list_qty = $listqty;
                        if($modelline->save(false)){
                          $this->createtran($model->zone_id,$modelline->line_qty,0);
                          $prodid = $this->findZoneproduct($model->zone_id);
                          if($prodid && $modelline->line_qty != null){
                              if($modelline->line_qty != 0 || $modelline->line_qty !=''){
                                  array_push($data,['product_id'=>$prodid,'qty'=>$modelline->line_qty,'price'=>0]);
                              }
                          }
                        }
                       // print_r($data);return;
                   // }
                    //echo count($emp_id);return;

                }
                if(count($data)>0){
                    \backend\models\Journal::createTrans($model->zone_id,$data,'',\backend\helpers\RunnoTitle::RUNN0_PDR);
                }
                $this->updateZoneproduct($model->zone_id,$model->id);
                $this->updateLineFirst($model->id);

                if($model->zone_status == 2){
                    $this->closeZone($model->zone_id);
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
    public function findZoneproduct($zone_id){
       $model = \backend\models\Zoneproduct::find()->where(['zone_id'=>$zone_id])->one();
       return count($model)>0?$model->product_id:0;
    }
    /**
     * Updates an existing Productionrec model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

 //       $modeltime1 = \backend\models\ProductionrecLine::find()->where(['production_rec_id'=>$id])->all();
        $modelline = \backend\models\ProductionrecLine::find()->where(['production_rec_id'=>$id])->all();
        $emp_line = [];
//        $modelline = [];
//        if(count($modeltime1)>0){
//            foreach ($modeltime1 as $value){
//                if(in_array($value->emp_id,$emp_line)){
//                    continue;
//                }
//                array_push($emp_line,$value->emp_id);
//            }
//
//            for($l=0;$l<=count($emp_line)-1;$l++){
//                $data1 = 0;
//                $data2 = 0;
//                $data3 = 0;
//                $data4 = 0;
//                $data5 = 0;
//
//                $data_line1 = '';
//
//
//                $modelx = \backend\models\ProductionrecLine::find()->where(['emp_id'=>$emp_line[$l]])->all();
//                if($modelx){
//                    $i = 0;
//                    foreach ($modelx as $val){
//                        $i+=1;
//                        if($i==1){
//                            $data1 = $val->line_qty;
//                            $data_line1 = $val->id;
//                        }
//                        if($i==2){
//                            $data2=$val->line_qty;
//                            $data_line1 = $data_line1.",".$val->id;
//                        }
//                        if($i==3){
//                           $data3 = $val->line_qty;
//                            $data_line1 = $data_line1.",".$val->id;
//                        }
//                        if($i==4){
//                            $data4 = $val->line_qty;
//                            $data_line1 = $data_line1.",".$val->id;
//                        }
//                        if($i==5){
//                           $data5 = $val->line_qty;
//                            $data_line1 = $data_line1.",".$val->id;
//                        }
//                    }
//                }
//                array_push($modelline,[$emp_line[$l],$data1,$data2,$data3,$data4,$data5,$data_line1]);
//            }
//        }

        if ($model->load(Yii::$app->request->post())) {
            $emp_id = Yii::$app->request->post('emp_id');
            $line_id = Yii::$app->request->post('line_id');
            $time_one = Yii::$app->request->post('line_time_one');
            $time_two = Yii::$app->request->post('line_time_two');
            $time_three = Yii::$app->request->post('line_time_three');
            $time_four= Yii::$app->request->post('line_time_four');
            $time_five = Yii::$app->request->post('line_time_five');

            //print_r($time_one);return;
            $model->trans_date = strtotime($model->trans_date);
            if($model->save()){
                $data = [];
                if(count($emp_id)>0){
                        for($x=0;$x<=count($emp_id)-1;$x++) {

                            $linenum = null;
                            $linenum = explode(',',$line_id[$x]);
                            for ($m = 0; $m <= 4; $m++) {
                                //  $line_id[$x];
                                $modelchk = \backend\models\ProductionrecLine::find()->where(['id'=>$linenum[$m],'emp_id'=>$emp_id[$x]])->one();
                                if(count($modelchk)>0){
                                    if ($m == 0) {
                                        $modelchk->line_qty = $time_one[$x];
                                    }else  if ($m == 1) {
                                        $modelchk->line_qty = $time_two[$x];
                                    }
                                    else  if ($m == 2) {
                                        $modelchk->line_qty = $time_three[$x];
                                    }
                                    else  if ($m == 3) {
                                        $modelchk->line_qty = $time_four[$x];
                                    }
                                    else  if ($m == 4) {
                                        $modelchk->line_qty = $time_five[$x];
                                    }
                                    if($modelchk->save(false)){
                                        //$this->updatetran();
                                        if(!$this->chkLineStatus($modelchk->id)) {
                                            $this->updateLineStatus($modelchk->id);
                                            $this->createtran($model->zone_id, $modelchk->line_qty, $modelchk->id);
                                            $prodid = $this->findZoneproduct($model->zone_id);
                                            if ($prodid && $modelchk->line_qty != null) {
                                                if ($modelchk->line_qty != 0 || $modelchk->line_qty != '') {
                                                    array_push($data, ['product_id' => $prodid, 'qty' => $modelchk->line_qty, 'price' => 0, 'oldjournal' => $model->productrec_no]);
                                                }
                                            }
                                        }
                                    }



                                }
                            }


                        }
                    $this->updateZoneproduct($model->zone_id,$model->id);
                    }
                   // print_r($data);return;
                if(count($data)>0){
                    \backend\models\Journal::createTrans2($model->zone_id,$data,'',\backend\helpers\RunnoTitle::RUNN0_PDR);
                }

                if($model->zone_status == 2){
                    $this->closeZone($model->zone_id);
                }

                $session = Yii::$app->session;
                $session->setFlash('msg','บันทึกรายการเรียบร้อย');
                return $this->redirect(['index']);
            }
        }

        return $this->render('update', [
            'model' => $model,
            'modelline' => $modelline,
        ]);
    }
public function countOld($prodrecid){
        $modelcount = \backend\models\ProductionrecLine::find()->select('emp_id')->where(['production_rec_id'=>$prodrecid])->distinct()->count();
        return $modelcount;
}
    public function createtran($zone_id,$qty,$line)
    {
        if($qty <=0){return false;}
        $modelproduct = \backend\models\Zoneproduct::find()->where(['zone_id'=>$zone_id])->one();
        if($modelproduct){
            $modelchk = \backend\models\Stockbalance::find()->where(['product_id'=>$modelproduct->product_id])->one();
            if($modelchk){

                $modelchk->qty = (float)$modelchk->qty + (float)$qty;
                //  $modelstock->lot_id = '';
                $modelchk->save(false);
            }else{
                $modelstock = new \backend\models\Stockbalance();
                $modelstock->product_id = $modelproduct->product_id;
                $modelstock->warehouse_id = 1; // default
                $modelstock->qty = $qty;
                $modelstock->location_id = 0;
                $modelstock->lot_no = '';
                $modelstock->save(false);
            }

            $modelbalance = \backend\models\Stockbalance::find()->where(['product_id'=>$modelproduct->id])->sum('qty');

            if($modelbalance){
                $modelproduct = \backend\models\Product::find()->where(['id'=>$modelproduct->id])->one();
                $modelproduct->all_qty = $modelbalance;
                $modelproduct->save(false);
            }


        }

    }

    /**
     * Deletes an existing Productionrec model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();
            $session = Yii::$app->session;
            $session->setFlash('msg','บันทึกรายการเรียบร้อย');
            return $this->redirect(['index']);
    }

    /**
     * Finds the Productionrec model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Productionrec the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Productionrec::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }
    public function actionFindemp(){
        $emp = Yii::$app->request->post('term');
        $model = \backend\models\Employee::find()->where(['LIKE','first_name',$emp])->all();
        if($model){
            return Json::encode($model);
        }
    }
    public function actionFindzonedate($id){
        if($id){
            $model = \backend\models\Zoneproduct::find()->where(['zone_id'=>$id])->one();
            if($model){
                return date('d-m-Y',$model->created_at);
            }else{
                return '';
            }
        }
    }
    public function actionFindzonebydept($id)
    {
        if($id != ''){
           $zone_id = \backend\models\Product::findProdZone($id);
           if($zone_id){
              // echo $zone_id;
               $zonename = '';
               if($zone_id == 1){$zonename='A';}
               if($zone_id == 2){$zonename='B';}
               if($zone_id == 3){$zonename='C';}

               $zone_by_group = \backend\models\Zone::find(['id'])->where(['LIKE','name',$zonename])->asArray()->all();

               $zone_arr = [];
               if(count($zone_by_group)){
                   foreach ($zone_by_group as $x){
                       array_push($zone_arr, $x['id']);
                   }
                   $zone_list = \backend\models\Zoneproduct::find()->where(['zone_id'=>$zone_arr])->all();

                   if($zone_list){
                      // print_r($zone_list);
                       $html = '';
                       foreach ($zone_list as $val){
                           if($val->zone_id == 0){continue;}
                           $zone_show_name = \backend\models\Zone::findName($val->zone_id);
                          // echo $zone_show_name.'<br />';
                           $html.="<option value='".$val->zone_id."'>".$zone_show_name."</option>";
                         //  echo $html;
                       }
                      return $html;
                   }
               }else{
                  // echo '';
               }


           }else{
              // echo "";
           }
        }else{
           // echo "";
        }
    }
    public function actionPrint(){
        $product = Yii::$app->request->post('selected_product');
        $from_date = date('Y-m-d',strtotime(Yii::$app->request->post('from_date')));
        $to_date = date('Y-m-d',strtotime(Yii::$app->request->post('to_date')));


        if($product!=""){

            $model = \backend\models\Productionrec::find()->where(['product_id'=>$product])
                                                    ->andFilterWhere(['and',['>=','rec_date',$from_date],['<=','rec_date',$to_date]])->all();
            if($model){
                $id = [];
                foreach($model as $value){
                    array_push($id,$value->id);
                }
                if(sizeof($id)){
                    $modelemp = \backend\models\ProductionrecLine::find(['emp_id'])->where(['production_rec_id'=>$id])->groupBy('emp_id')->all();
                    $modelline = \backend\models\ProductionrecLine::find()->where(['production_rec_id'=>$id])->all();
                }
            }
        }


        if($product !=''){
             $full_data = [];
            $rec_data = [];
            $prodrec = [];
            $modelx = \backend\models\Productionrec::find()->where(['product_id'=>$product])->all();
                    if($modelx){
                        $id = [];
                        foreach($modelx as $value){
                            array_push($prodrec,$value->id);
                            if($value->id){
                                $modelemp = \backend\models\ProductionrecLine::find(['emp_id'])->where(['production_rec_id'=>$value->id])->groupBy('emp_id')->all();
                                foreach ($modelemp as $val){
                                    $modelline = \backend\models\ProductionrecLine::find()->select(['line_qty'])->where(['production_rec_id'=>$value->id,'emp_id'=>$val->emp_id])->asArray()->all();
                                    array_push($rec_data,['emp_id'=>$val->emp_id,'trans'=>$modelline]);
                                }

                            }
                            array_push($full_data,['production_rec_id'=>$prodrec,'data'=>$rec_data]);
                        }

                    }
        }

        //echo count($modelzone);return;

        $pdf = new Pdf([
            'mode' => Pdf::MODE_ASIAN, // leaner size using standard fonts
            //  'format' => [150,236], //manaul
            'format' => Pdf::FORMAT_A4,
            'orientation' => Pdf::ORIENT_PORTRAIT,
            'destination' => Pdf::DEST_BROWSER,
            'content' => $this->renderPartial('_print',[
                'model'=>$model,
                'modelemp'=>$modelemp,
                'modelline'=>$modelline,
                'full_data'=>$full_data,
//                'modelissue'=>$modelissue,
//                'modeladdress' => $modeladdress,
//                'sup'=>$supname,
//                'total1'=>$total1,
//                'totalamt1'=>$totalamt1,
//                'total2'=>$total2,
//                'totalamt2'=>$totalamt2,
//                'bill_date'=>$from_date,
                // 'list'=>$modellist,
                 'from_date'=> $from_date,
                 'to_date' => $to_date,
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
    public function updateZoneproduct($zoneid,$id){
        if($id){
            $modelrec = \backend\models\ProductionrecLine::find()->where(['production_rec_id'=>$id])->sum('line_qty');

            $model = \backend\models\Zoneproduct::find()->where(['zone_id'=>$zoneid])->one();
            if($model){
                $model->remain_qty = $model->wip_qty - $modelrec;
                $model->save(false);
            }
        }
    }
    public function closeZone($zoneid){
        $model = \backend\models\Zoneproduct::find()->where(['zone_id'=>$zoneid])->one();
        if($model){
            $model->qty =0;
            $model->wip_qty = 0;
            $model->remain_qty = 0;
            $model->status = 0;
            if($model->save(false)){
                $modelzone = \backend\models\Zone::find()->where(['id'=>$zoneid])->one();
                if($modelzone){
                    $modelzone->lock = 0;
                    $modelzone->qty = 0;
                    $modelzone->save(false);
                }
            }
        }
    }
    public function chkLineStatus($line){
        $res = false;
        $modelline = \backend\models\ProductionrecLine::find()->where(['id'=>$line])->one();
        if($modelline){
            if($modelline->status ==1){
               $res = true;
            }
        }
        return $res;
    }
    public function updateLineStatus($line){
        $modelline = \backend\models\ProductionrecLine::find()->where(['id'=>$line])->one();
        if($modelline){
            $modelline->status = 1;
            $modelline->save(false);
        }
    }
    public function updateLineFirst($id){
        $model = \backend\models\ProductionrecLine::find()->where(['production_rec_id'=>$id])->all();
        if($model){
            foreach($model as $value){
                if($value->line_qty > 0){

                }else{
                    $modelline =\backend\models\ProductionrecLine::find()->where(['id'=>$value->id])->one();
                    $modelline->status = 0;
                    $modelline->save(false);
                }
            }
        }
    }
    public function actionFinditem(){
        $txt = \Yii::$app->request->post('txt');
        $list = [];
        if($txt == ''){
            return Json::encode($list);
            //return 'no';
        }else{
            if($txt == "*"){
                $model = \backend\models\Employee::find()
                    ->asArray()
                    ->all();
                return Json::encode($model);
            }else{
                $model = \backend\models\Employee::find()->where(['Like','first_name',$txt])
                    ->orFilterWhere(['like','last_name',$txt])
                    ->asArray()
                    ->all();
                return Json::encode($model);
            }


        }

    }
}
