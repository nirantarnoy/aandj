<?php
namespace backend\models;
use Yii;
use yii\db\ActiveRecord;
date_default_timezone_set('Asia/Bangkok');

class Productionrec extends \common\models\ProductionRec
{
    public function behaviors()
    {
        return [
            'timestampcdate'=>[
                'class'=> \yii\behaviors\AttributeBehavior::className(),
                'attributes'=>[
                    ActiveRecord::EVENT_BEFORE_INSERT=>'created_at',
                ],
                'value'=> time(),
            ],
            'timestampudate'=>[
                'class'=> \yii\behaviors\AttributeBehavior::className(),
                'attributes'=>[
                    ActiveRecord::EVENT_BEFORE_INSERT=>'updated_at',
                ],
                'value'=> time(),
            ],
            'timestampcby'=>[
                'class'=> \yii\behaviors\AttributeBehavior::className(),
                'attributes'=>[
                    ActiveRecord::EVENT_BEFORE_INSERT=>'created_by',
                ],
                'value'=> Yii::$app->user->identity->id,
            ],
            'timestamuby'=>[
                'class'=> \yii\behaviors\AttributeBehavior::className(),
                'attributes'=>[
                    ActiveRecord::EVENT_BEFORE_UPDATE=>'updated_by',
                ],
                'value'=> Yii::$app->user->identity->id,
            ],
            'timestampupdate'=>[
                'class'=> \yii\behaviors\AttributeBehavior::className(),
                'attributes'=>[
                    ActiveRecord::EVENT_BEFORE_UPDATE=>'updated_at',
                ],
                'value'=> time(),
            ],
        ];
    }
    public static function getLastNo(){
        $model = Productionrec::find()->MAX('productrec_no');
        $pre = \backend\models\Sequence::find()->where(['module_id'=>15])->one();
        if($model){
            $prefix = $pre->prefix.substr(date("Y"),2,2);
            $cnum = substr((string)$model,5,strlen($model));
            $len = strlen($cnum);
            $clen = strlen($cnum + 1);
            $loop = $len - $clen;
            for($i=1;$i<=$loop;$i++){
                $prefix.="0";
            }
            $prefix.=$cnum + 1;
            return $prefix;
        }else{
            $prefix =$pre->prefix.substr(date("Y"),2,2);
            return $prefix.'000001';
        }
    }
//    public function findProductinfo($id){
//        $model = Product::find()->where(['id'=>$id])->one();
//        return count($model)>0?$model:null;
//    }
//    public function findProductcode($id){
//        $model = Product::find()->where(['id'=>$id])->one();
//        return count($model)>0?$model->product_code:'';
//    }
//    public function findProductcatname($id){
//        $model = Product::find()->where(['id'=>$id])->one();
//        $catname = '';
//        if($model){
//            $catname = \backend\models\Productcat::findGroupname($model->category_id);
//        }
//
//        return $catname;
//    }
  public function getProdrecZone($id){
        $model = \backend\models\Productionrec::find()->where(['id'=>$id])->one();
        return count($model)>0?\backend\models\Zone::findName($model->zone_id):'';
  }
    public function getProdrecZoneDate($id){
        $model = \backend\models\Productionrec::find()->where(['id'=>$id])->one();
        return count($model)>0?\backend\models\Zoneproduct::findZoneDate($model->zone_id):'';
    }
    public function getZoneStatus($id){
        $model = \backend\models\Productionrec::find()->where(['id'=>$id])->one();
        return count($model)>0?$model->zone_status:0;
    }
}
