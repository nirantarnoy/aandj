<?php
namespace backend\controllers;
use yii\web\Controller;
use common\models\User;
use yii\web\Session;
use backend\Models\Changepwd;



class ChangepwdController extends Controller{
    
    public function actionIndex()
    {
       // $this->layout = 'mylayout.php';
       // $model = new Changepwd();
        $model2 = new \backend\models\Changepwd();
        return $this->render('index',['model'=>$model2]);
       // return $this->render('index');
    }
    public function actionDoit()
    {
        $session = new Session();
        $session->open();
        //$model = new \backend\Models\Changepwd();
        if(\Yii::$app->request->post())
        {
           // echo "OK";
            
           if($this->Getpwd($session['userid'],$_POST['Changepwd']['currentpwd'])){
               
               $user = User::findOne(['id'=>$session['userid']]);
               $user->setPassword($_POST['Changepwd']['newpwd']);
               if($user->save()){
                   return $this->redirect(['site/logout']);
               }
           }else{
               return $this->redirect(['changepwd/index']);
           }
        }
       
    }
    public function Getpwd($id,$pwd){
        $user = User::findOne(['id'=>$id]);
        if($user){
             $ispwd = $user->validatePassword($pwd);
             return $ispwd;
        }else{
            return false;
        }
    }
}


