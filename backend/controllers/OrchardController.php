<?php

namespace backend\controllers;

use Yii;
use backend\models\Orchard;
use backend\models\OrchardSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\web\UploadedFile;

/**
 * OrchardController implements the CRUD actions for Orchard model.
 */
class OrchardController extends Controller
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
                'rules'=>[
                    [
                        'allow'=>true,
                        'actions'=>['index','create','update','delete','view','import','treatrecord'],
                        'roles'=>['@'],
                    ]
                ]
            ]
        ];
    }

    /**
     * Lists all Orchard models.
     * @return mixed
     */
    public function actionIndex()
    {
        $pageSize = \Yii::$app->request->post("perpage");
        $searchModel = new OrchardSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider->pagination->pageSize = $pageSize;

        $modelFile = new \backend\models\Modelfile();

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'perpage' => $pageSize,
            'modelFile'=>$modelFile,
        ]);
    }

    /**
     * Displays a single Orchard model.
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
     * Creates a new Orchard model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Orchard();

        if ($model->load(Yii::$app->request->post())) {
            $liststandard = '';
            if(count($model->standard)){
                for($i=0;$i<=count($model->standard)-1;$i++){
                    if($i == 0){
                        $liststandard .= $model->standard[$i];
                    }
                    else{
                        $liststandard .= ','.$model->standard[$i];
                    }
                }
            }
            //echo $liststandard;return;
            $model->standard = $liststandard;
            if($model->save()){
                $session = Yii::$app->session;
                $session->setFlash('msg','บันทึกรายการเรียบร้อย');
                return $this->redirect(['index']);
            }
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Orchard model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $model_treat = \backend\models\Orchardtreat::find()->where(['orchard_id'=>$id])->all();

        if ($model->load(Yii::$app->request->post())) {
            $liststandard = '';
            if(count($model->standard)){
                for($i=0;$i<=count($model->standard)-1;$i++){
                    if($i == 0){
                        $liststandard .= $model->standard[$i];
                    }
                    else{
                        $liststandard .= ','.$model->standard[$i];
                    }
                }
            }
            //echo $liststandard;return;
            $model->standard = $liststandard;
            if($model->save()){
                $session = Yii::$app->session;
                $session->setFlash('msg','บันทึกรายการเรียบร้อย');
                return $this->redirect(['index']);
            }
        }

        return $this->render('update', [
            'model' => $model,
            'modeltreat' => $model_treat,
        ]);
    }

    /**
     * Deletes an existing Orchard model.
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
     * Finds the Orchard model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Orchard the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Orchard::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }

    public function actionImport(){
        $modelfile = new \backend\models\Modelfile();
        //echo "KK";return;
        // $dataProvider->query->orderby(['name'=>SORT_ASC]);
        if($modelfile->load(Yii::$app->request->post())){

                $uploaded = UploadedFile::getInstance($modelfile,'file');
                if(!empty($uploaded)){
                    //echo "niran";return;
                    //echo $uploaded;return;
                    // $data = [];
                    // $data_save = 0;
                    // $data_fail = [];
                    // $data_all = 0;
                    $upfiles = time() . "." . $uploaded->getExtension();
                    if($uploaded->saveAs('../web/uploads/files/'.$upfiles)){
                        //echo "okk";return;
                        $myfile = '../web/uploads/files/'.$upfiles;
                        $file = fopen($myfile, "r");
                        fwrite($file, "\xEF\xBB\xBF");
                        // header('Content-Type: text/html; charset=UTF-8');
                        // iconv_set_encoding("internal_encoding", "UTF-8");
                        // iconv_set_encoding("output_encoding", "UTF-8");
                        // setlocale(LC_ALL, 'th_TH.utf8');
                        setlocale ( LC_ALL, 'th_TH.TIS-620' );
                        $i = -1;
                        while (($rowData = fgetcsv($file, 10000, ",")) !== FALSE)
                        {
                            $i+=1;
                            if($rowData[0] =='' || $i == 0){
                                continue;
                            }

                            // $rowData = array_map('utf8_encode', $rowData);
                            // if( mb_detect_encoding($rowData[1], 'UTF-8','auto') !== false ){
                            //     echo "utf-8";
                            //     echo $rowData[1];
                            // }else{
                            //    $x = utf8_encode($rowData[1]);
                            //    echo $x;
                            // }
                            // break;
                            $modelorchard = \backend\models\Orchard::find()->where(['name'=>$rowData[0]])->one();
                            if(count($modelorchard)>0){
                                // $data_all +=1;
                                // array_push($data_fail,['name'=>$rowData[0][1]]);
                                continue;
                            }

                            $modelx = new \backend\models\Orchard();
                            $modelx->name = $rowData[0];
                            $modelx->description = $rowData[1];
                            $modelx->type_id = $rowData[2] ;
                            //    $modelx->category_id = $rowData[0][3];
                            $modelx->area_size = $rowData[3];
                            $modelx->contact_name = $rowData[4];
                            $modelx->wage = $rowData[5];
                            $modelx->transport_wage = $rowData[6];
                            $modelx->cut_interval = $rowData[7];
                            $modelx->status = 1;

                            if($modelx->save(false)){
                                // $data_save += 1;
                                // $data_all +=1;
                                // array_push($data,['product_id'=>$modelx->id,'qty'=>$modelx->qty,'warehouse'=>1]);
                            }
                            // }

                        }
                        fclose($file);

                        unlink('../web/uploads/files/'.$upfiles);
                        //  print_r($data_insert);return;
                    }else{
                        //echo "not";
                    }

                }
           }
            //$modellastupdate = Product::find()->max('updated_at');
            return $this->redirect(['index']);
    }
    public function actionTreatrecord(){
        $treat_id = Yii::$app->request->post('treat_title');
        $trans_date =  Yii::$app->request->post('trans_date');
        $qty =  Yii::$app->request->post('treat_qty');
        $orchardid =  Yii::$app->request->post('orchard_id');

        if($treat_id != ''){
            $model = new \backend\models\Orchardtreat();
            $model->orchard_id = $orchardid;
            $model->action_date = date('d-m-Y H:s:i',strtotime($trans_date));
            $model->job_id = $treat_id;
            $model->use_qty = $qty;
            $model->save(false);
        }
        $this->redirect(['orchard/update','id'=>$orchardid]);
    }
}
