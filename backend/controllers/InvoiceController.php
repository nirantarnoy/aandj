<?php

namespace backend\controllers;

use Yii;
use backend\models\Invoice;
use backend\models\InvoiceSearch;
use yii\helpers\Json;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use kartik\mpdf\Pdf;
use yii\web\ForbiddenHttpException;
/**
 * InvoiceController implements the CRUD actions for Invoice model.
 */
class InvoiceController extends Controller
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
     * Lists all Invoice models.
     * @return mixed
     */
    public function actionIndex()
    {
//        $x = \backend\models\Invoice::getLastNo();
//        echo $x;return;
       // echo $this->numtothai(199);return;
        $pageSize = \Yii::$app->request->post("perpage");
        $searchModel = new InvoiceSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider->pagination->pageSize = $pageSize;

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'perpage' => $pageSize,
        ]);
    }

    /**
     * Displays a single Invoice model.
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
     * Creates a new Invoice model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Invoice();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
            'runno' => $model->getLastNo(),
        ]);
    }

    /**
     * Updates an existing Invoice model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $modelline = \backend\models\Invoiceline::find()->where(['invoice_id'=>$id])->all();
       // $modelcus_add = \backend\models\AddressBook::find()->where(['party_type_id'=>2,'party_id'=>$model->suplier_id])->one();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
            'runno' => null,
            'modelline' => $modelline,

        ]);
    }

    /**
     * Deletes an existing Invoice model.
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
     * Finds the Invoice model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Invoice the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Invoice::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }
    public function actionShowsup(){
        $id = Yii::$app->request->post('id');
        if($id){
            $model = \backend\models\Suplier::find()->where(['id'=>$id])->one();
            if($model){
                $data = [];
                $addressbook = \backend\models\AddressBook::findAddress($id);
                array_push($data,['name'=>$model->name,'id_card'=>$model->id_card,'tel'=>$model->tel,'address'=>$addressbook]);
                return Json::encode($data);
            }
        }
    }
    public function actionBill(){

        $inv = Yii::$app->request->post('listid');

             $model = \backend\models\Invoice::find()->where(['id'=>$inv])->one();
             $modelline = \backend\models\Invoiceline::find()->where(['invoice_id'=>$inv])->all();
             $comaddress = \backend\models\AddressBook::findAddresscom();
             $comtel = \backend\models\Plant::find()->one();
             $supaddress = \backend\models\AddressBook::findAddress($model->suplier_id);
             $supinfo = \backend\models\Suplier::find()->where(['id'=>$model->suplier_id])->one();

             $total = 0;
             if($modelline){
                 foreach ($modelline as $value){
                     $total+=$value->total;
                 }
             }

        $pdf = new Pdf([
                    'mode' => Pdf::MODE_UTF8, // leaner size using standard fonts
                    //  'format' => [150,236], //manaul
                    'format' => Pdf::FORMAT_A4,
                    'orientation' => Pdf::ORIENT_PORTRAIT,
                    'destination' => Pdf::DEST_BROWSER,
                    'content' => $this->renderPartial('_bill',
                        [
                            'invoice_no'=>$model->invoice_no,
                            'invoice_line'=>$modelline,
                            'comaddress'=>$comaddress,
                            'comtel'=>$comtel->phone,
                            'comtax'=>$comtel->tax_id,
                            'supaddress'=>$supaddress,
                            'supinfo'=>$supinfo,
                            'comname'=>$comtel->name,
                            'total_text'=>$model->total_text,
                            'total_amount'=>$total - $model->total_issue,
                            'amount'=>$total,
                            'total_issue'=>$model->total_issue,
                        ]),
                    //'content' => "nira",
                    'cssFile' => '@backend/web/css/pdf.css',
                    //'jsFile'=>'@backend/web/js',
                    'defaultFont' => 'Cloud-Light',
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
                return $pdf->render();

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
            if($count > 1 && $val == 1 && $key ==($count-1))
                $return_str .= "เอ็ด";
            else
                $return_str .= $txtnum1[$val].$txtnum2[$count-$key-1];
        }
        return $return_str ;
    }
    public function numtothai($num)
    {
        $return = "";
        $num = str_replace(",","",$num);
        $number = explode(".",number_format($num,2));
        if(sizeof($number)>2){
            return 'รูปแบบข้อมุลไม่ถูกต้อง';
            exit;
        }else if(sizeof($number)==1){
            $number[1]=0;
        }
        $return .= $this->numtothaistring($number[0])."บาท";
        $stang = intval($number[1]);
       // return $stang;
        if($stang > 0)
            $return.= $this->numtothaistring($stang)."สตางค์";
        else
            $return .= "ถ้วน";
        return $return ;
    }
}
