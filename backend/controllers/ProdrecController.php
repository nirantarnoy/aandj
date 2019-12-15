<?php

namespace backend\controllers;

use Yii;
use backend\models\Prodrec;
use backend\models\ProdrecSearch;
use yii\helpers\Json;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use kartik\mpdf\Pdf;
use yii\web\ForbiddenHttpException;


date_default_timezone_set('Asia/Bangkok');
/**
 * ProdrecController implements the CRUD actions for Prodrec model.
 */
class ProdrecController extends Controller
{
    public $enableCsrfValidation =false;
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
                        'actions'=>['index','create','update','view','bill','invoice',
                                     'findzone','callbill','findsupcode','addqc','createinv','genbill','purchoverview'],
                        'roles'=>['@'],
                    ],
//                    [
//                        'allow'=>true,
//                        'actions'=>['delete'],
//                        'roles'=>['System Administrator'],
//                    ]
//                    [
//                        'allow'=>true,
//                        'actions'=>['update'],
//                        'roles'=>['@'],
//                        'matchCallback'=>function($rule,$action){
//                            $model = $this->findModel(Yii::$app->request->get('id'));
//                            if (\Yii::$app->user->can('blog/update',['model'=>$model])) {
//                                return true;
//                            }
//                        }
//                    ],
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
     * Lists all Prodrec models.
     * @return mixed
     */
    public function actionIndex()
    {
        //$dt = new DateTime('UTC');                          1546826086
       // print(date('Y-m-d h:i:sa',(1546826950858/1000)));return;
//       $datetime = new \DateTime('01-07-2018');
//       echo $datetime->getTimestamp()."<br/>";
//       echo date('d-m-Y',$datetime->getTimestamp());
//       return;
       // $this->notifymessage('test');return;
        //print_r($this->numtothai(200));return;
       // echo $this->numtothai(2555);return;
        //print_r($this->findQc('PDR18000006',1));return;
        //$this->createMessage('ทดสอบ','ควั่น','A1',1000,'PDR18000006',1);return;
        // $this->getMoneyText(100);
//        $num = '34';
//        $return_str = "";
//        $txtnum1 = array('','หนึ่ง','สอง','สาม','สี่','ห้า','หก','เจ็ด','แปด','เก้า');
//        $txtnum2 = array('','สิบ','ร้อย','พัน','หมื่น','แสน','ล้าน');
//        $num_arr = str_split($num);
//        $count = count($num_arr);
//        foreach($num_arr as $key=>$val)
//        {
//            echo $count." ".$val." ".$key." ".($count-$key-1)."</br>";
//            if($count > 1 && $val == 1 && $key ==($count-1)) {
//                $return_str .= "เอ็ด";
//            }else if($count > 1 && $val == 1 && $key == 2) {
//                $return_str .= $txtnum2[$val];
//            }else if($count > 1 && $val == 2 && $key ==($count-2)){
//                $return_str .="ยี่".$txtnum2[$count-$key-1];
//            }else if($count > 1 && $val ==0){
//
//            }
//            else{
//                $return_str .= $txtnum1[$val].$txtnum2[$count-$key-1];
//            }
//
//        } echo $return_str;
//        return;
         $this->removeQcNotSave();

        $post = Yii::$app->request->post();

        $txt_search = '';
        $sup_select = '';
        $bill_date =  '';

        $txt_search = Yii::$app->request->post('txt_search');
        $bill_date = explode('ถึง',Yii::$app->request->post('bill_range'));
        $sup_select = explode(',',Yii::$app->request->post('sup_select'));

       //print_r($bill_date);return;

        if($bill_date[0]!= null) {
            $from_date = strtotime($bill_date[0]);
            $to_date = strtotime($bill_date[1]);
        }else{
            $bill_date[0] = date('d-m-Y');
            $bill_date[1] = date('d-m-Y',strtotime(date('d-m-Y').'+7 days'));
            $from_date = strtotime($bill_date[0]);
            $to_date = strtotime($bill_date[1]);
        }


        $pageSize = \Yii::$app->request->post("perpage");
        $searchModel = new ProdrecSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        $dataProvider->query->andFilterWhere(['or',['LIKE','journal_no',$txt_search],['LIKE','qty',$txt_search]]);
     //   $dataProvider->query->andFilterWhere(['and',['>=','trans_date',$from_date],['<=','trans_date',$to_date]]);
        $dataProvider->query->andFilterWhere(['LIKE','suplier_id',$sup_select]);


        $dataProvider->pagination->pageSize = $pageSize;

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'txt_search' => $txt_search,
            'sup_select' => $sup_select,
            'from_date'=>trim($bill_date[0]),
            'to_date'=>trim($bill_date[1]),
            'perpage' => $pageSize,
        ]);
    }

    /**
     * Displays a single Prodrec model.
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
     * Creates a new Prodrec model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Prodrec();

        if ($model->load(Yii::$app->request->post())) {

            $prod_recid = Yii::$app->request->post('product_id');
            $line_zone = Yii::$app->request->post('line_zone_id');
            $line_zone_name = Yii::$app->request->post('line_zone');
            $line_lot = Yii::$app->request->post('line_lot');
            $line_qty = Yii::$app->request->post('line_zone_qty');
            $line_orchard = Yii::$app->request->post('line_orchard');
            $line_team = Yii::$app->request->post('line_team');
            $line_team2 = Yii::$app->request->post('line_transport_team');
            $line_qc = Yii::$app->request->post('line_qc');


            $has_issue = Yii::$app->request->post('has_issue');
            $product_issue_id = Yii::$app->request->post('product_issue_id');
            $line_issue_qty = Yii::$app->request->post('line_issue_qty');
            $line_issue_price = Yii::$app->request->post('line_issue_price');

             // echo count($product_issue_id);return;

             //print_r($line_qty);return;

            $model->status = 1;
            $model->lot_no = $line_lot[0];
            $model->trans_date = strtotime($model->trans_date);
            $model->rec_date = date('Y-m-d');
            if($model->save(false)){
                  $this->createNotify($model->journal_no,$model->suplier_id,count($prod_recid)); // สร้าง notify
                if(count($prod_recid)>0){

                    for($i=0;$i<=count($prod_recid)-1;$i++){
                        if($prod_recid[$i]==''){continue;}
                        $zone_line = explode(",",$line_zone_name[$i]);
                        $qty_line = explode(",",$line_qty[$i]);

                        $zone_message = '';
                        $qty_message = 0;

                        if(count($zone_line)>0){
                                for($m=0;$m<=count($zone_line)-1;$m++){
                                    $data = [];
                                    $rec_for_zone = $this->findZoneid($zone_line[$m]);
                                    $modelrec = new \backend\models\Prodrecline();
                                    $modelrec->prod_rec_id = $model->id;
                                    $modelrec->product_id = $prod_recid[$i];
                                  //  $modelrec->zone_id = $zone_line[$m];
                                    $modelrec->zone_id = $rec_for_zone;
                                    $modelrec->lot_no = $line_lot[$i];
                                    $modelrec->qty = $qty_line[$m];
                                    $modelrec->line_type = 1; // รับสินค้า
                                  //  $modelrec->list_zone = $line_zone[$i];
                                    $modelrec->list_zone = $line_zone_name[$i];
                                    $modelrec->list_qty = $line_qty[$i];
                                    $modelrec->orchard = $line_orchard[$i];
                                    $modelrec->team1 = $line_team[$i];
                                    $modelrec->team2 = $line_team2[$i];
                                    $modelrec->qc_note = $line_qc[$i];
                                    $modelrec->price = $this->findPlanprice($model->plan_id,$model->suplier_id,$prod_recid[$i]);

                                    if($modelrec->save(false)){
                                        $modelzoneproduct = new \backend\models\Zoneproduct();
                                        $modelzoneproduct->zone_id = $this->findZoneid($zone_line[$m]);
                                        $modelzoneproduct->product_id = $prod_recid[$i];
                                        $modelzoneproduct->lot_no = $line_lot[$i];
                                        $modelzoneproduct->qty = $qty_line[$m];
                                        $modelzoneproduct->status = 0;
                                        $modelzoneproduct->save(false);

                                        $zone_message = $zone_message.\backend\models\Zone::findName($zone_line[$m]);
                                        $qty_message = $qty_message + $qty_line[$m];


                                        array_push($data,['product_id'=>$prod_recid[$i],'qty'=>$qty_line[$m],'price'=>$model->plan_price]);
                                        \backend\models\Journal::createTrans($rec_for_zone,$data,'',\backend\helpers\RunnoTitle::RUNNO_PRODREC);
                                    }
                                  $this->updatePurchPlan($model->plan_id,$prod_recid[$i],$model->suplier_id,$qty_line[$m]);
                                  $this->updateReceiveQty($model->id,$model->lot_no);
                                }
                            }
                        $this->createMessage(\backend\models\Suplier::findName($model->suplier_id),\backend\models\Product::findName($prod_recid[$i])
                            ,$zone_message,$qty_message,$model->journal_no,$prod_recid[$i]);
                    }
                }

                if($has_issue ==1 && count($product_issue_id)>0){
                    for($i=0;$i<=count($product_issue_id)-1;$i++){
                        $data = [];
                        if($product_issue_id[$i]==''){continue;}

                        $modelrec = new \backend\models\Prodrecline();
                        $modelrec->prod_rec_id = $model->id;
                        $modelrec->product_id = $product_issue_id[$i];
                       // $modelrec->zone_id = $line_zone[$i];
                       // $modelrec->lot_no = $line_lot[$i];
                        $modelrec->qty = $line_issue_qty[$i];
                        $modelrec->price = $line_issue_price[$i];
                        $modelrec->line_type = 2; // เบิกสินค้า

                        if($modelrec->save(false)){

//                            array_push($data,['product_id'=>$prod_recid[$i],'qty'=>$line_qty[$i],'price'=>$model->plan_price]);
//                            \backend\models\Journal::createTrans($line_zone[$i],$data,'','');
                        }
                    }
                }

                //array_push($data,['product_id'=>$model->raw_type,'qty'=>$model->qty,'price'=>$model->plan_price]);
               // print_r($data);return;
                //\backend\models\Journal::createTrans($model->zone_id,$data,'','');

                $session = Yii::$app->session;
                $session->setFlash('msg','บันทึกรายการเรียบร้อย');
                return $this->redirect(['index']);
            }
        }
          $suptype = 0;
        return $this->render('create', [
            'model' => $model,
            'runno' => $model->getLastNo(),
            'modelissue'=>null,
            'suptype'=>$suptype,
        ]);
    }
    public function findZoneid($name){
        $model = \backend\models\Zone::find()->where(['name'=>trim($name)])->one();
        return count($model)>0?$model->id:0;
    }

    /**
     * Updates an existing Prodrec model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $modelrec = \backend\models\Prodrecline::find()->where(['prod_rec_id'=>$id,'line_type'=>1])->all();
        $modelissue = \backend\models\Prodrecline::find()->where(['prod_rec_id'=>$id,'line_type'=>2])->all();
        $modelrecline = \common\models\QueryProdrecline::find()->where(['prod_rec_id'=>$id])->all();

        $suptype = 0; // ประเภทผู้ขาย
        if(\backend\models\Suplier::suptype($model->suplier_id)){
           $suptype = 1;
        }

        if ($model->load(Yii::$app->request->post())) {

            $prod_recid = Yii::$app->request->post('product_id');
            $line_zone = Yii::$app->request->post('line_zone_id');
            $line_lot = Yii::$app->request->post('line_lot');
            $line_qty = Yii::$app->request->post('line_zone_qty');
            $line_orchard = Yii::$app->request->post('line_orchard');
            $line_team = Yii::$app->request->post('line_team');
            $line_team2 = Yii::$app->request->post('line_transport_team');
            $line_qc = Yii::$app->request->post('line_qc');

           // print_r($line_qty);return;

            $has_issue = Yii::$app->request->post('has_issue');
            $product_issue_id = Yii::$app->request->post('product_issue_id');
            $line_issue_qty = Yii::$app->request->post('line_issue_qty');
            $line_issue_price = Yii::$app->request->post('line_issue_price');

            $model->status = 1;
            $model->trans_date = strtotime($model->trans_date);
            if($model->save()){

                if(count($prod_recid)>0){
                    $this->checkupdate($prod_recid,$line_zone,$model->id);
                    \backend\models\Prodrecline::deleteAll(['prod_rec_id'=>$model->id,'line_type'=>1]);
                   // \backend\models\Prodrecline::deleteAll(['prod_rec_id'=>$model->id,'line_type'=>1]);
                    for($i=0;$i<=count($prod_recid)-1;$i++){
                        if($prod_recid[$i]==''){continue;}
                       // print_r($prod_recid);return;
                        $zone_line = explode(",",$line_zone[$i]);
                        $qty_line = explode(",",$line_qty[$i]);
                        $data = [];
                        if(count($zone_line)>0){

                            for($m=0;$m<=count($zone_line)-1;$m++){

                                $modelrec = new \backend\models\Prodrecline();
                                $modelrec->prod_rec_id = $model->id;
                                $modelrec->product_id = $prod_recid[$i];
                                $modelrec->zone_id = $zone_line[$m];
                                $modelrec->lot_no = $line_lot[$i];
                                $modelrec->qty = $qty_line[$m];
                                $modelrec->line_type = 1; // รับสินค้า
                                $modelrec->list_zone = $line_zone[$i];
                                $modelrec->list_qty = $line_qty[$i];
                                $modelrec->orchard = $line_orchard[$i];
                                $modelrec->team1 = $line_team[$i];
                                $modelrec->team2 = $line_team2[$i];
                                $modelrec->qc_note = $line_qc[$i];

                                if($modelrec->save(false)){

                                    //echo $zone_line[$m];return;

                                    \backend\models\Zoneproduct::deleteAll(['zone_id'=>$zone_line[$m]]);
                                    $modelzoneproduct = new \backend\models\Zoneproduct();
                                    $modelzoneproduct->zone_id = $zone_line[$m];
                                    $modelzoneproduct->product_id = $prod_recid[$i];
                                    $modelzoneproduct->lot_no = $line_lot[$i];
                                    $modelzoneproduct->qty = $qty_line[$m];
                                    $modelzoneproduct->status = 0;
                                    $modelzoneproduct->save(false);

                                   // $this->updateZone($model->id,$)

                                    array_push($data,['product_id'=>$prod_recid[$i],'qty'=>$qty_line[$m],'price'=>$model->plan_price]);
                                    \backend\models\Journal::createTrans($zone_line[$m],$data,'',\backend\helpers\RunnoTitle::RUNNO_PRODREC);
                                }
                            }
                        }

                    }
                }

                if($has_issue ==1 && count($product_issue_id)>0){
                    \backend\models\Prodrecline::deleteAll(['prod_rec_id'=>$model->id,'line_type'=>2]);
                    for($i=0;$i<=count($product_issue_id)-1;$i++){
                        if($product_issue_id[$i]==''){continue;}

                        $modelrec = new \backend\models\Prodrecline();
                        $modelrec->prod_rec_id = $model->id;
                        $modelrec->product_id = $product_issue_id[$i];
                        // $modelrec->zone_id = $line_zone[$i];
                        // $modelrec->lot_no = $line_lot[$i];
                        $modelrec->qty = $line_issue_qty[$i];
                        $modelrec->price = $line_issue_price[$i];
                        $modelrec->line_type = 2; // เบิกสินค้า

                        if($modelrec->save(false)){
//                            array_push($data,['product_id'=>$prod_recid[$i],'qty'=>$line_qty[$i],'price'=>$model->plan_price]);
//                            \backend\models\Journal::createTrans($line_zone[$i],$data,'','');
                        }
                    }
                }else{
                    \backend\models\Prodrecline::deleteAll(['prod_rec_id'=>$model->id,'line_type'=>2]);
                }

                $session = Yii::$app->session;
                $session->setFlash('msg','บันทึกรายการเรียบร้อย');
                return $this->redirect(['index']);
            }
        }

        return $this->render('update', [
            'model' => $model,
            'modelrec'=> $modelrec,
            'modelissue'=>$modelissue,
            'modelrecline'=>$modelrecline,
            'suptype'=>$suptype,

        ]);
    }

    /**
     * Deletes an existing Prodrec model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        \backend\models\Prodrecline::deleteAll(['prod_rec_id'=>$id]);
        $this->findModel($id)->delete();

        $session = Yii::$app->session;
        $session->setFlash('msg','บันทึกรายการเรียบร้อย');
        return $this->redirect(['index']);
    }

    /**
     * Finds the Prodrec model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Prodrec the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Prodrec::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }

    public function updateReceiveQty($recid,$lot){
        $qty = 0;
        $model = \backend\models\Prodrecline::find()->where(['prod_rec_id'=>$recid,'lot_no'=>$lot])->all();
        if($model){
            foreach ($model as $value){
                $qty += $value->qty;
            }
        }
        $modelupdate = \backend\models\Prodrec::find()->where(['id'=>$recid])->one();
        if($modelupdate){
            $modelupdate->qty = $qty;
            $modelupdate->save(false);
        }
    }

    public function checkupdate($prod_recid,$line_zone,$recid){
        for($i=0;$i<=count($prod_recid)-1;$i++) {
            if ($prod_recid[$i] == '') {
                continue;
            }
            // print_r($prod_recid);return;
            $zone_line = explode(",", $line_zone[$i]);
            if (count($zone_line) > 0) {
                for ($m = 0; $m <= count($zone_line) - 1; $m++) {
                    $this->updateline($recid,$prod_recid[$i],$zone_line[$m]);
                }
            }
        }
    }
    public function updateline($prodrecid,$prodid,$zoneid){
        $model = \backend\models\Prodrecline::find()->where(['prod_rec_id'=>$prodrecid])->all();
        if($model){
            foreach ($model as $data){
                if($data->zone_id == $zoneid && $data->product_id == $prodid){continue;}
                $modelzone = \backend\models\Zone::find()->where(['id'=>$data->zone_id])->one();
                $modelzone->qty = 0;
                $modelzone->lock = 0;
                $modelzone->save(false);

                \backend\models\Zoneproduct::deleteAll(['zone_id'=>$data->zone_id,'product_id'=>$prodid]);
            }
        }
    }
    public function actionCallbill(){
        return $this->render('_tezt');
    }
    public function actionBill(){

       // print_r(Yii::$app->request->post()); return;

        $sup = Yii::$app->request->post('vendor');
        $papersize = Yii::$app->request->post('paper_size');
        $dateselect = Yii::$app->request->post('date_select');
        $data = Yii::$app->request->post('listdata');
        $datefilter = explode('ถึง',trim($dateselect)); //return $datefilter[1];

        $from_date = '';
        $to_date = '';



        if(count($datefilter)==2){
            $from_date = date('Y-m-d',strtotime($datefilter[0]));
            $to_date = date('Y-m-d',strtotime($datefilter[1]));
        }

        $model = \backend\models\Plant::find()->one();
        $modeladdress = \backend\models\AddressBook::find()->where(['party_id'=>1])->one();


        $supname = '';
        $modelsup = \backend\models\Suplier::find()->where(['id'=>$sup])->one();
        if($modelsup){
            $supname = $modelsup->name;
        }

        $modelrec = \backend\models\Prodrec::find()
            //->andFilterWhere(['or',['LIKE','journal_no',$txt_search],['LIKE','qty',$txt_search]])
            ->andFilterWhere(['and',['>=','rec_date',$from_date],['<=','rec_date',$to_date]])
            ->andFilterWhere(['like','suplier_id',$sup])->all();

        if(count($modelrec)>0){
            $lineid = [];
            foreach ($modelrec as $value){
                array_push($lineid,$value->id);
            }

            $sql = Yii::$app->db->createCommand('SELECT product_id,sum(qty) as qty,sum(price * qty) as amount 
                                                      FROM prod_rec_line WHERE line_type =1 group by product_id');

            $sql2 = Yii::$app->db->createCommand('SELECT product_id,sum(qty) as qty,sum(price * qty) as amount 
                                                      FROM prod_rec_line WHERE line_type =2 group by product_id');

            $modelline = $sql->queryAll();
            $modelissue = $sql2->queryAll();

            if(!$modelline){ return;}

            $total1 = 0;
            $totalamt1 = 0;
            $total2 = 0;
            $totalamt2 = 0;
            for($i=0;$i<=count($modelline)-1;$i++){
                $total1+=$modelline[$i]['qty'];
                $totalamt1+=$modelline[$i]['amount'];
            }
            for($i=0;$i<=count($modelissue)-1;$i++){
                $total2+=$modelissue[$i]['qty'];
                $totalamt2+=$modelissue[$i]['amount'];
            }


            $customFontsConfig = Yii::$app->params['mpdfCustomFontsPath'];
            $customFonts = Yii::$app->params['mpdfCustomFonts'];
            define("_MPDF_SYSTEM_TTFONTS_CONFIG", $customFontsConfig);
            define("_MPDF_SYSTEM_TTFONTS", $customFonts);

            $pdf = new Pdf([
                'mode' => Pdf::MODE_ASIAN, // leaner size using standard fonts
                //  'format' => [150,236], //manaul
                'format' => $papersize ==1? Pdf::FORMAT_A4:[100,200],
                'orientation' => Pdf::ORIENT_PORTRAIT,
                'destination' => Pdf::DEST_BROWSER,
                'content' => $this->renderPartial('_bill',[
                    'model'=>$model,
                    'modelline'=>$modelline,
                    'modelissue'=>$modelissue,
                    'modeladdress' => $modeladdress,
                    'sup'=>$supname,
                    'total1'=>$total1,
                    'totalamt1'=>$totalamt1,
                    'total2'=>$total2,
                    'totalamt2'=>$totalamt2,
                    'bill_date'=>$from_date,
                    // 'list'=>$modellist,
                    // 'from_date'=> $from_date,
                    // 'to_date' => $to_date,
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
      //  return $this->redirect(['index']);



    }
    public function actionGenbill(){
        echo "okk";
    }
    public function actionFindsupcode(){
        $id = Yii::$app->request->post('id');
        $planid = Yii::$app->request->post('plan_id');
        $supid = Yii::$app->request->post('id');
        $plandata = [];
        if($planid !='' && $supid !=''){
            $model= \backend\models\Purchplanline::find()->where(['plan_id'=>$planid,'sup_id'=>$supid])->all();
            if($model){
                foreach ($model as $value){
                    array_push($plandata,['product_id'=>$value->plan_type,'product_code'=>\backend\models\Product::findName($value->plan_type),'planqty'=>$value->plan_qty]);
                }
            }
        }
        $model = \backend\models\Suplier::find()->where(['id'=>$id])->one();
        //echo count($model)>0?$model->vendor_code:'';
       // echo $id;
        $res = [];
        if($model){
            array_push($res,['code'=>$model->vendor_code,'company'=>$model->iscompany,'plandata'=>$plandata]);
            return Json::encode($res);
        }
        return $res;
    }
    public function actionFindzone($id,$qty,$state,$listzone){
       //return $id;

        $modelprod = \backend\models\Product::find()->where(['id'=>$id])->one();
        $list = [];

        if($modelprod){
            //return count($modelprod);
            $zonegroup = '';
            if($modelprod->zone_group==1){
                $zonegroup = 'A';
            }
            else if($modelprod->zone_group==2){
                $zonegroup = 'B';
            }
            else if($modelprod->zone_group==3){
                $zonegroup = 'C';
            }

            //return $state;
          //  $maxqty = $modelprod->zone_qty_per;
          //  $currentqty = $modelprod->all_qty;
           if($zonegroup !=''){
               //return Json::encode($list);
               if($state == 0){ // new
                   $modelzone = \backend\models\Zone::find()->where(['like','name',$zonegroup])->andFilterWhere(['lock'=>0])->all();
                   if($modelzone){

                      // return count($modelzone);
                       $json = [];
                       $xqty = $qty;
                       $mqty = 0;
                       foreach ($modelzone as $data){
                          // return $data->qty;
                           $html = '';
                          if($mqty == $qty){continue;}
                          // $zon = $data->name;
                           if($data->qty == 0 && $xqty > 0){
                               if($data->max_qty > $xqty){
                                   $html = "<option value='" .$data->id. "' selected>$data->name</option>";
                                   array_push($json,['id'=>$data->id,'name'=>$data->name,'qty'=>$xqty,'html'=>$html]);
                                 //  $mqty =  $mqty + $xqty;
                                  // return Json::encode($json);
                               }else{
                                   if($qty > $data->max_qty){
                                       $html = "<option value='" .$data->id. "'>$data->name</option>";
                                       array_push($json,['id'=>$data->id,'name'=>$data->name,'qty'=>$data->max_qty,'html'=>$html]);
                                       $xqty = $xqty - $data->max_qty;
                                       //$mqty =  $mqty + $xqty;
                                   }else{
                                       $html = "<option value='" .$data->id. "'>$data->name</option>";
                                       array_push($json,['id'=>$data->id,'name'=>$data->name,'qty'=>$xqty,'html'=>$html]);
                                       //$mqty =  $mqty + $xqty;
                                   }

                               }
                               //echo "<option value='" .$data->id. "'>$data->name</option>";
                               // array_push($json,['id'=>$data->id,'name'=>$data->name,'qty'=>$data->max_qty]);
                           }

                       }
                      // if($qty <= 0){
                           return Json::encode($json);
                      // }

                   }else{
                       //echo "<option>-</option>";
                       return null;
                   }
               }else{ // edit
                   $xzone = explode(',',$listzone);
                   if(count($xzone)>0){

                      for($m=0;$m<=count($xzone)-1;$m++){
                          $unlockzone = \backend\models\Zone::find()->where(['id'=>$xzone[$m]])->one();
                          if($unlockzone){
                              $unlockzone->lock = 0;
                              $unlockzone->save(false);
                          }
                      }
                   }

                   $modelzone = \backend\models\Zone::find()->where(['like','name',$zonegroup])->andFilterWhere(['lock'=>0])->all();
                   if($modelzone){
                       $json = [];
                       $xqty = 0;
                       foreach ($modelzone as $data){
                           $html = '';
                           $zon = $data->name;
                           if($data->lock == 0){
                               if($data->max_qty > $qty){
                                   $html = "<option value='" .$data->id. "'>$data->name</option>";
                                   array_push($json,['id'=>$data->id,'name'=>$data->name,'qty'=>$qty,'html'=>$html]);
                                   return Json::encode($json);
                               }else{
                                   if($qty > $data->max_qty){
                                       $html = "<option value='" .$data->id. "'>$data->name</option>";
                                       array_push($json,['id'=>$data->id,'name'=>$data->name,'qty'=>$data->max_qty,'html'=>$html]);
                                       $qty = $qty - $data->max_qty;
                                   }else{
                                       $html = "<option value='" .$data->id. "'>$data->name</option>";
                                       array_push($json,['id'=>$data->id,'name'=>$data->name,'qty'=>$qty,'html'=>$html]);
                                   }

                               }
                               //echo "<option value='" .$data->id. "'>$data->name</option>";
                               // array_push($json,['id'=>$data->id,'name'=>$data->name,'qty'=>$data->max_qty]);
                           }
                       }
                       return Json::encode($json);
                   }else{
                       //echo "<option>-</option>";
                       return null;
                   }
               }
           }
        }else{
            return "no data";
        }

//        if (count($model) > 0) {
//            foreach ($model as $value) {
//
//                echo "<option value='" . $value->DISTRICT_ID . "'>$value->DISTRICT_NAME</option>";
//
//            }
//        } else {
//            echo "<option>-</option>";
//        }
    }
    public function createNotify($title,$supid,$cnt){
        if($title !=''){
            $model = new \backend\models\Message();
            $model->title = 'รับวัตถุดิบเลขที่ '.$title;
            $model->detail = 'รับเข้าวัตถุดิบของ '.\backend\models\Suplier::findName($supid).' จำนวน '.$cnt.'รายการ';
            $model->message_type =1;
            $model->status = 1;
            if($model->save()){
                return true;
            }else{
                return false;
            }
        }
    }
    public function createMessage($sup,$product_type,$zone,$qty,$order_no,$prodid){
        $qcitem = $this->findQc($order_no,$prodid);
        $intervalday = $this->findIntervalday($order_no,$prodid);
       // print_r($intervalday);
        $mess = '
            ประจำวันที่ '.date('d-m-Y').'
             ชื่อพ่อค้า : '.$sup.' ประเภทที่ส่ง : '.$product_type.'
              กอง : '.$zone.'
               จำนวนส่ง : '.number_format($qty,0).'
                รอบตัด : '.$intervalday[0].' วัน
             
                เล็กตกไซต์ : '.$qcitem[0].'
                เล็กควบ2  : '.$qcitem[1].'
                เล็กจิ๋ว  : '.$qcitem[2].'
                ลูกช้ำ : '.$qcitem[3].'
                แก่ : '.$qcitem[4].'
                อ่อน : '.$qcitem[5].'
                ปากกา : '.$qcitem[6].'
                มะพร้าวกลาย : '.$qcitem[7].'
              
 ';
//        ตัดวันที่ : '.date('d-m-Y',$intervalday[1]).'
  //echo $mess;
     //   $this->notifymessage($mess);
    }
    public function notifymessage($message)
    {
        //$message = "This is test send request from camel paperless";
        $line_api = 'https://notify-api.line.me/api/notify';
        $line_token = 'I1cho6FL9cC0WBLMgLD3XNHgK0W5AjceuITPeFSccL1';
       // $line_token = 'N3x9CANrOE3qjoAejRBLjrJ7FhLuTBPFuC9ToXh0szh';

        // $queryData = array('message' => $message);
        $queryData = array('message' => $message);
        $queryData = http_build_query($queryData, '', '&');
        $headerOptions = array(
            'http' => array(
                'method' => 'POST',
                'header' => "Content-Type: application/x-www-form-urlencoded\r\n"
                    . "Authorization: Bearer " . $line_token . "\r\n"
                    . "Content-Length: " . strlen($queryData) . "\r\n",
                'content' => $queryData
            )
        );
        $context = stream_context_create($headerOptions);
        $result = file_get_contents($line_api, FALSE, $context);
        $res = json_decode($result);
        return $res;
    }

    public function findQc($order_no,$prod_id){
      $model = \backend\models\Quality::find()->where(['order_no'=>$order_no,'product_id'=>$prod_id])->all();
      $qcitem = [];
      if($model){
          foreach ($model as $value){
              $modelline = \backend\models\Qualityline::find()->where(['quality_order_id'=>$value->id])->all();
              if($modelline){
                  $i =0;
                  foreach ($modelline as $data){
                      $i+=1;
                     if($i == 1){
                         array_push($qcitem,$data->qty);
                     }else if($i == 2){
                         array_push($qcitem,$data->qty);
                     }else if($i == 3){
                         array_push($qcitem,$data->qty);
                     }else if($i == 4){
                         array_push($qcitem,$data->qty);
                     }else if($i == 5){
                         array_push($qcitem,$data->qty);
                     }else if($i == 6){
                         array_push($qcitem,$data->qty);
                     }else if($i == 7){
                         array_push($qcitem,$data->qty);
                     }else if($i == 8){
                         array_push($qcitem,$data->qty);
                     }
                  }
              }
          }
      }
      if(count($qcitem)<=0){
          for($i=0;$i<=7;$i++){
              array_push($qcitem,0);
          }
      }
      return $qcitem;
    }
    public function findIntervalday($order_no,$prodid){
        $model = \backend\models\Quality::find()->where(['order_no'=>$order_no,'product_id'=>$prodid])->one();
        $data = [];
        if($model){
            $data[0] = $model->interval_day;
            $data[1] = $model->action_date;
            return $data;
        }else{
            $data[0] = '0';
            $data[1] = '';
            return $data;
        }
    }
    public function actionAddqc(){
        if(Yii::$app->request->isAjax){
            $journalno = Yii::$app->request->post('journalno');
            $prodid = Yii::$app->request->post('prodid');
            $num_cut = Yii::$app->request->post('interval_cut');
            $date_cut = Yii::$app->request->post('cut_date');

          //  return $journalno;
            $num_qty = Yii::$app->request->post('num_qty');
//            $num_cut = Yii::$app->request->post('num_cust');
//            $num_cut = Yii::$app->request->post('num_cust');
//            $num_cut = Yii::$app->request->post('num_cust');
//            $num_cut = Yii::$app->request->post('num_cust');
//            $num_cut = Yii::$app->request->post('num_cust');
//            $num_cut = Yii::$app->request->post('num_cust');
//            $num_cut = Yii::$app->request->post('num_cust');
//            $num_cut = Yii::$app->request->post('num_cust');

            if($journalno != '' && $prodid != '' && $num_cut !=''){
                $model = new \backend\models\Quality();
                $model->trans_date = strtotime($date_cut);
                $model->quality_no = Prodrec::getLastQcNo();
                $model->order_no = $journalno;
                $model->action_date = strtotime($date_cut);
                $model->interval_day = $num_cut;
                $model->product_id = $prodid;
                $model->status = 1;
                if($model->save()){
                    if(count($num_qty)>0){
                        for($i=0;$i<=count($num_qty)-1;$i++){
                            $modelline = new \backend\models\Qualityline();
                            $modelline->qty = $num_qty[$i];
                            $modelline->quality_title = $i+1;
                            $modelline->quality_order_id = $model->id;
                            $modelline->save();
                        }
                    }
                    return true;
                }else{
                    return false;
                }
            }
        }
    }
    public function removeQcNotSave(){
        $model = \backend\models\Quality::find()->where(['order_no'=>''])->all();
        if($model){
            foreach ($model as $value){
                \backend\models\Qualityline::deleteAll(['quality_order_id'=>$value->id]);
            }
            \backend\models\Quality::deleteAll(['order_no'=>'']);
        }
    }
    public function updatePurchPlan($planid,$product,$supid,$qty){
        $model = \common\models\PurchPlanLine::find()->where(['plan_id'=>$planid,'plan_type'=>$product,'sup_id'=>$supid])->one();
        if($model){
            $model->received_qty = $qty;
            $model->save(false);
        }

    }
    public function actionCreateinv(){
       $listid = Yii::$app->request->post('list');
       if(count($listid)>0){
           $list = explode(',',$listid);
           //return $list;
           $modelinv = new \backend\models\Invoice();
           $modelinv->invoice_no = \backend\models\Invoice::getLastNo();
           $modelinv->invoice_date = strtotime(date('d-m-Y'));
           $modelinv->suplier_id = 1;
           $modelinv->status = 1;
           if($modelinv->save()){
               $total_issue = 0;
               $total_prod_amt = 0;
               for($x=0;$x<sizeof($list);$x++){
                   $linedata = $this->getrecitem($list[$x]);
                 //  return count($linedata);
                   if(count($linedata)>0){
                      // return $list[$x];
                       $chang_status = 0;
                       foreach ($linedata as $value){
                           $modelline = new \backend\models\Invoiceline();
                           $modelline->invoice_id = $modelinv->id;
                           $modelline->product_id = $value->product_id;
                           $modelline->qty = $value->qty;
                           $modelline->price = $value->price;
                           $modelline->total = (float)$value->qty * (float)$value->price;
                           $modelline->trans_date_ref = $value->created_at;
                           $modelline->status = 0;
                           $modelline->prodrec_id = $list[$x];
                           if($modelline->save(false)){
                               $chang_status =1;
                               $total_prod_amt = $total_prod_amt + ((float)$modelline->qty * (float)$modelline->price);
                           }
                       }
                       if($chang_status == 1){
                           $this->changeStatusProdRec($list[$x]);
                       }
                   }
                  // $total_issue = $total_issue + (float)$this->findIssue($list[$x]);
               }
               //echo $this->numtothai('2,000.00');;return;
               $this->updateTotalIssue($modelinv->id,$total_issue,$total_prod_amt);
               $session = Yii::$app->session;
               $session->setFlash('msg','สร้างใบเสร็จรับเงินเรียบร้อย');
               return $this->redirect(['index']);
           }
       }
    }

    public function getrecitem($recid){
        $model = \backend\models\Prodrecline::find()->where(['prod_rec_id'=>$recid])->all();
        return $model;
    }
    public function findIssue($prodrec_id){
        $model = \backend\models\Prodrecline::find()->where(['line_type'=>2,'prod_rec_id'=>$prodrec_id])->sum('qty * price');
        return $model;
    }
    public function updateTotalIssue($inv_id,$issue_amt,$total_prod_amt){
        $model = \backend\models\Invoice::find()->where(['id'=>$inv_id])->one();
        if($model){
            $model->total_issue = $issue_amt;
            $model->total_text = $this->numtothai($total_prod_amt);
            if($model->save(false)){
                return true;
            }else{
                return false;
            }
        }else{
            return false;
        }
    }
    public function changeStatusProdRec($prodrecid){
        $model = \backend\models\Prodrec::find()->where(['id'=>$prodrecid])->one();
        if($model){
            $model->status= 2;
            if($model->save(false)){
                return true;
            }else{
                return false;
            }
        }else{
            return false;
        }
    }
    public function numtothaistring($num)
    {
        $return_str = "";
        $txtnum1 = array('','หนึ่ง','สอง','สาม','สี่','ห้า','หก','เจ็ด','แปด','เก้า');
        $txtnum2 = array('','สิบ','ร้อย','พัน','หมื่น','แสน','ล้าน');
        $num_arr = str_split($num);
        $count = count($num_arr);
        foreach($num_arr as $key=>$val)
        {
           // echo $count." ".$val." ".$key."</br>";
            if($count > 1 && $val == 1 && $key ==($count-1)) {
                $return_str .= "เอ็ด";
            }else if($count > 1 && $val == 1 && $key == 2) {
                $return_str .= $txtnum2[$val];
            }else if($count > 1 && $val == 2 && $key ==($count-2)){
                $return_str .="ยี่".$txtnum2[$count-$key-1];
            }else if($count > 1 && $val ==0){}
            else{
                $return_str .= $txtnum1[$val].$txtnum2[$count-$key-1];
            }

        }
        return $return_str ;
    }
    public function numtothai($num)
    {
        $return = "";
        $num = str_replace(",","",$num);
        $number = explode(".",$num);
        if(sizeof($number)>2){
            return 'รูปแบบข้อมุลไม่ถูกต้อง';
            exit;
        }else if(sizeof($number)==1){
            $number[1]=0;
        }
       // return $number[0];
        $return .= $this->numtothaistring($number[0])."บาท";

        $stang = intval($number[1]);
        // return $stang;
        if($stang > 0)
            $return.= $this->numtothaistring($stang)."สตางค์";
        else
            $return .= "ถ้วน";
        return $return ;
    }
    public function findPlanprice($planid,$supid,$prodid){
        $model = \backend\models\Purchplanline::find()->where(['plan_id'=>$planid,'sup_id'=>$supid,'plan_type'=>$prodid])->one();
        return count($model)>0?$model->plan_price:0;
    }
    public function actionCancelqc(){
        $refno = \Yii::$app->request->post('refno');
        if($refno){
            $model = \backend\models\Quality::find()->where(['order_no'=>$refno])->all();
            if($model){
                foreach ($model as $value){
                    if(\backend\models\Qualityline::deleteAll(['quality_order_id'=>$value->id])){
                        \backend\models\Quality::deleteAll(['id'=>$value->id]);
                    }
                }

            }
        }
//        $session = Yii::$app->session;
//        $session->setFlash('msg','ยกเลิกบันทึกคุณภาพเรียบร้อย');
//        return $this->redirect(['index']);
        return true;
    }
    public function actionPurchoverview(){
        return $this->render('_purchoverview');
    }

    public function actionProdrecall(){
        return $this->render('_prodrecall');
    }
}
