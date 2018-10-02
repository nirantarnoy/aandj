<?php
namespace backend\controllers;

use Yii;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\LoginForm;
use yii\helpers\Json;
use yii\web\ForbiddenHttpException;

/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['login', 'error'],
                        'allow' => true,
                    ],
                    [
                        'actions' => ['logout', 'index'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post','get'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */

    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'backend\components\MathCaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? '42' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        $usertype = \backend\models\User::findUserType(\Yii::$app->user->id);
        if($usertype != "user"){
            $this->redirect(['prodrec/index']);
        }
      // echo uniqid();return;
        $from_date = '';
        $to_date = '';
        $name = [];
        $qty = [];

        $find_date = null;
        if(Yii::$app->request->isGet){
            $find_date = explode(' ถึง ',Yii::$app->request->get('date_select'));
        }

        //return;

        if(count($find_date)>0 && Yii::$app->request->get('date_select') != null){
            $from_date = $find_date[0];
            $to_date = $find_date[1];

            $received = \backend\models\Prodrecline::find()->where(['BETWEEN','created_at',strtotime($from_date),strtotime($to_date)])->sum('qty');
            $received_amt = \backend\models\Prodrecline::find()->where(['BETWEEN','created_at',strtotime($from_date),strtotime($to_date)])->sum('qty * price');

            $productreceive = \backend\models\ProductionrecLine::find()->where(['BETWEEN','created_at',strtotime($from_date),strtotime($to_date)])->sum('line_qty');
            $productreceive_amt = \backend\models\ProductionrecLine::find()->where(['BETWEEN','created_at',strtotime($from_date),strtotime($to_date)])->sum('line_qty * line_price');

            //$productreceive_qty = \common\models\QueryProductReceive::find()->where(['BETWEEN','trans_date',strtotime($from_date),strtotime($to_date)])->all();

            $f = strtotime($from_date);
            $t = strtotime($to_date);
            $sql_sub = "select product.name AS name,
                        sum(if((production_rec_line.line_qty > 0),production_rec_line.line_qty,0)) AS qty
                        from (((product left join zone_product on((product.id = zone_product.product_id))) 
                        left join production_rec on((production_rec.zone_id = zone_product.zone_id))) 
                        left join production_rec_line on((production_rec.id = production_rec_line.production_rec_id)))
                        where production_rec_line.created_at between '$f' and '$t'
                        group by product.name
                        order by product.id ASC";

            $row_sub = Yii::$app->db->createCommand($sql_sub)->queryAll();
            for($i=0;$i<sizeof($row_sub);$i++){
                $name[] = $row_sub[$i]['name'];
                $qty[] = (int)$row_sub[$i]['qty'];
            }

        }else{

            $received = \backend\models\Prodrecline::find()->sum('qty');
            $received_amt = \backend\models\Prodrecline::find()->sum('qty * price');

            $productreceive = \backend\models\ProductionrecLine::find()->sum('line_qty');
            $productreceive_amt = \backend\models\ProductionrecLine::find()->sum('line_qty * line_price');
            //$productreceive_qty = \common\models\QueryProductReceive::find()->all();

            $sql_sub = "select product.name AS name,
                        sum(if((production_rec_line.line_qty > 0),production_rec_line.line_qty,0)) AS qty
                        from (((product left join zone_product on((product.id = zone_product.product_id))) 
                        left join production_rec on((production_rec.zone_id = zone_product.zone_id))) 
                        left join production_rec_line on((production_rec.id = production_rec_line.production_rec_id)))
                        where product.name <>''
                        group by product.name
                        order by product.id ASC";

            $row_sub = Yii::$app->db->createCommand($sql_sub)->queryAll();
            for($i=0;$i<sizeof($row_sub);$i++){
                $name[] = $row_sub[$i]['name'];
                $qty[] = (int)$row_sub[$i]['qty'];
            }

//            $sql_sub = "SELECT n.number,
//        COUNT(IF(MONTH(date_out)=1,bi.id,NULL)) AS m1,
//        COUNT(IF(MONTH(date_out)=2,bi.id,NULL)) AS m2,
//        COUNT(IF(MONTH(date_out)=3,bi.id,NULL)) AS m3,
//        COUNT(IF(MONTH(date_out)=4,bi.id,NULL)) AS m4,
//        COUNT(IF(MONTH(date_out)=5,bi.id,NULL)) AS m5,
//        COUNT(IF(MONTH(date_out)=6,bi.id,NULL)) AS m6,
//        COUNT(IF(MONTH(date_out)=7,bi.id,NULL)) AS m7,
//        COUNT(IF(MONTH(date_out)=8,bi.id,NULL)) AS m8,
//        COUNT(IF(MONTH(date_out)=9,bi.id,NULL)) AS m9,
//        COUNT(IF(MONTH(date_out)=10,bi.id,NULL)) AS m10,
//        COUNT(IF(MONTH(date_out)=11,bi.id,NULL)) AS m11,
//        COUNT(IF(MONTH(date_out)=12,bi.id,NULL)) AS m12
//        FROM borrow_item bi
//        LEFT JOIN borrow b ON b.id = bi.borrow_id
//        LEFT JOIN number_sim ns ON ns.id = bi.number_sim_id
//        LEFT JOIN number n ON n.id = ns.number_id
//        WHERE YEAR(date_out) = '$y'
//        GROUP BY bi.number_sim_id";
//
//            $row_sub = Yii::$app->db->createCommand($sql_sub)->queryAll();
//            $sub = [];
//            foreach($row_sub as $rs){
//                $sub[] = [
//                    //'type' => 'column',
//                    'id' => $rs['number'],
//                    'name' => $rs['number'],
//                    'data' => [['ม.ค.', intval($rs['m1'])], ['ก.พ.', intval($rs['m2'])], ['มี.ค.', intval($rs['m3'])], ['เม.ย.', intval($rs['m4'])], ['พ.ค.', intval($rs['m5'])], ['มิ.ย.', intval($rs['m6'])], ['ก.ค.', intval($rs['m7'])], ['ส.ค.', intval($rs['m8'])], ['ก.ย.', intval($rs['m9'])], ['ต.ค.', intval($rs['m10'])], ['พ.ย.', intval($rs['m11'])], ['ธ.ค.', intval($rs['m12'])]]
//                ];
//            }
//
//            $dataProvider = new ArrayDataProvider([
//                'allModels' => $rows,
//                'sort' => [
//                    'attributes' => [
//
//                    ]
//                ]
//            ]);
//            return $this->render('index',[
//                'graph' => $graph,
//                'drilldown' => $sub,
//                'dataProvider' => $dataProvider,
//            ]);

        }
        $zonecout = \backend\models\Zone::find()->count();
        $last_trans = \backend\models\Journal::find()->limit(10)->all();


      //  $datecompare = \backend\models\Purchplan::find()->where(['>=','trans_date',date()])->asArray()->all();
     //   $qtysched = \backend\models\Purchplan::find()->sum('plan_qty')->where(['>=','trans_date',date()])->groupBy('trans_date')->asArray()->all();


        return $this->render('index',[
            'last_trans'=> $last_trans,
            'zonecout'=>$zonecout,
            'received'=>$received,
            'productreceive'=>$productreceive,
            'received_amt'=>$received_amt,
            'productreceive_amt'=>$productreceive_amt,
            'from_date' => $from_date,
            'to_date' => $to_date,
           // 'productreceive_qty' => $productreceive_qty,
            'name'=>$name,
            'qty'=>$qty,

        ]);
    }

    /**
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {
        $this->layout = false;
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        } else {
            $model->password = '';

            return $this->render('page-login', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

}
