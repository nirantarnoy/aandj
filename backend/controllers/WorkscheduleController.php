<?php

namespace backend\controllers;

use Yii;
use backend\models\Workschedule;
use backend\models\WorkscheduleSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\web\ForbiddenHttpException;

/**
 * WorkscheduleController implements the CRUD actions for Workschedule model.
 */
class WorkscheduleController extends Controller
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
                'rules' => [
//                    [
//                        'allow'=>true,
//                        'actions'=>['update'],
//                        'roles'=>['@'],
//                        'matchCallback'=>function($rule,$action){
//                            $model = $this->findModel(Yii::$app->request->get('id'));
//                            if (\Yii::$app->user->can('workschedule/update',['model'=>$model])) {
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
     * Lists all Workschedule models.
     * @return mixed
     */
    public function actionIndex()
    {
        $pageSize = \Yii::$app->request->post("perpage");
        $searchModel = new WorkscheduleSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider->pagination->pageSize = $pageSize;

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'perpage' => $pageSize,
        ]);
    }

    /**
     * Displays a single Workschedule model.
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
     * Creates a new Workschedule model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Workschedule();

        if ($model->load(Yii::$app->request->post())) {
            $sttime = strtotime($model->trans_date);
            $model->trans_date = date('Y-m-d',$sttime);
            if($model->save(false)){

                $this->createEvent($model->trans_date,$model->note);

                $session = Yii::$app->session;
                $session->setFlash('msg','บันทึกรายการเรียบร้อย');
                return $this->redirect(['index']);
            }
        }

        return $this->render('_create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Workschedule model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post())) {
           $sttime = strtotime($model->trans_date);
           $model->trans_date = date('Y-m-d',$sttime);
            if($model->save(false)){
                $this->createEvent($model->trans_date,$model->note);
                $session = Yii::$app->session;
                $session->setFlash('msg','บันทึกรายการเรียบร้อย');
                return $this->redirect(['index']);
            }
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Workschedule model.
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
     * Finds the Workschedule model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Workschedule the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Workschedule::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }
    public function createEvent($date,$title){
        \backend\models\Event::deleteAll(['title'=>$title]);
        if($date !=''){
            $model = new \backend\models\Event();
            $model->title = $title;
            $model->start = strtotime($date);
            $model->trans_date = $date;
            if($model->save(false)){
                return true;
            }
            return false;
        }
    }
}
