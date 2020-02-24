<?php

namespace backend\controllers;

use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
/**
 * SequenceController implements the CRUD actions for Sequence model.
 */
class ReportController extends Controller
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
                        'actions'=>['index','create','update','delete','printsummary','printsummary2'],
                        'roles'=>['@'],
                    ]
                ]
            ]
        ];
    }

    /**
     * Lists all Sequence models.
     * @return mixed
     */

    public function actionIndex()
    {
        return $this->render('index', []);
    }
    public function actionPrintsummary(){
        $from_date = \Yii::$app->request->post('from_date');
        $to_date = \Yii::$app->request->post('to_date');

//        echo $from_date;return;
        $model = \common\models\QueryReceiveProd::find()->all();
      return $this->render('_summary',[
          'model'=>$model,
          'from_date'=>$from_date,
          'to_date'=>$to_date
      ]);
    }
    public function actionPrintsummary2(){
        $from_date = \Yii::$app->request->post('from_date');
        $to_date = \Yii::$app->request->post('to_date');

        $model = \common\models\QueryReceiveProd::find()->all();
        return $this->render('_summary2',[
            'model'=>$model,
            'from_data'=>$from_date,
            'to_date'=>$to_date
        ]);
    }

}
