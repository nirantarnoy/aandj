<?php
namespace backend\models;
use Yii;
use yii\db\ActiveRecord;
use backend\models\Quality;

date_default_timezone_set('Asia/Bangkok');

class Prodrec extends \common\models\ProdRec
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

    public function findNo($id){
        $model = Prodrec::find()->where(['id'=>$id])->one();
        return count($model)>0?$model->journal_no:'';
    }
//    public function findId($code){
//        $model = Position::find()->where(['name'=>$code])->one();
//        return count($model)>0?$model->id:0;
//    }
    public static function getLastNo(){
        $model = Prodrec::find()->MAX('journal_no');
        $pre = \backend\models\Sequence::find()->where(['module_id'=>14])->one();
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
    public static function getLastQcNo(){
        $model = Quality::find()->MAX('quality_no');
        $pre = \backend\models\Sequence::find()->where(['module_id'=>17])->one();
        if($model){
            $prefix = $pre->prefix.substr(date("Y"),2,2);
            $cnum = substr((string)$model,4,strlen($model));
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

}
