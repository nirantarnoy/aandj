<?php

namespace backend\controllers;

use backend\models\Suplier;
use Yii;
use backend\models\SuplierSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\web\UploadedFile;

use \backend\models\AddressBook;

/**
 * SuplierController implements the CRUD actions for Vendor model.
 */
class SuplierController extends Controller
{
    public $enableCsrfValidation = false;
    /**
     * @inheritdoc
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
                        'actions'=>['index','create','update','delete','view','import'],
                        'roles'=>['@'],
                    ]
                ]
            ]
        ];
    }

    /**
     * Lists all Vendor models.
     * @return mixed
     */

    public function actionIndex()
    {
        $pageSize = \Yii::$app->request->post("perpage");
        $searchModel = new SuplierSearch();
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
     * Displays a single Vendor model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Vendor model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Suplier();
        $model_address_plant = AddressBook::find()->where(['party_type_id'=>2])->one();
        $model_address = new AddressBook();
        if ($model->load(Yii::$app->request->post())&& $model_address->load(Yii::$app->request->post())) {
            if($model->save(false)){
//                $model_address->party_type_id = 2; // vendor
//                $model_address->party_id = $model->id;
//                $model_address->save(false);
                $session = Yii::$app->session;
                $session->setFlash('msg','บันทึกรายการเรียบร้อย');
                return $this->redirect(['index']);
            }

        }

        return $this->render('create', [
            'model' => $model,
            'model_address' => $model_address,
            'model_address_plant' => $model_address_plant,
        ]);
    }

    /**
     * Updates an existing Vendor model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $model_address_plant = AddressBook::find()->where(['party_type_id'=>2,'party_id'=>$id])->one();
        $model_address = new AddressBook();
        if ($model->load(Yii::$app->request->post())&& $model_address->load(Yii::$app->request->post())) {
            if($model->save(false)){
                $model_address->party_type_id = 2; // vendor
                $model_address->party_id = $id;

                $model_address->save(false);


                $session = Yii::$app->session;
                $session->setFlash('msg','บันทึกรายการเรียบร้อย');
                return $this->redirect(['index']);
            }

        }

        return $this->render('update', [
            'model' => $model,
            'model_address' => $model_address,
            'model_address_plant' => $model_address_plant,
        ]);
    }

    /**
     * Deletes an existing Vendor model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

            $session = Yii::$app->session;
            $session->setFlash('msg','บันทึกรายการเรียบร้อย');
            return $this->redirect(['index']);

    }

    /**
     * Finds the Vendor model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Vendor the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Suplier::findOne($id)) !== null) {
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
                        $modelsup = \backend\models\Suplier::find()->where(['name'=>$rowData[0]])->one();
                        if(count($modelsup)>0){
                            // $data_all +=1;
                            // array_push($data_fail,['name'=>$rowData[0][1]]);
                            continue;
                        }

                        $modelx = new \backend\models\Suplier();
                        $modelx->name = $rowData[0];
                        $modelx->description = $rowData[1];
                        $modelx->vendor_group_id = $rowData[4] ;
                        $modelx->id_card = $rowData[2];
                        $modelx->tel = $rowData[3];
                        $modelx->iscompany = $rowData[5];
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
}
