<?php
namespace backend\models;
use Yii;
use yii\db\ActiveRecord;
date_default_timezone_set('Asia/Bangkok');

class Orchard extends \common\models\Orchard
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

    public function getName($id){
        $model = Orchard::find()->where(['id'=>$id])->one();
        return count($model)>0?$model->name:'';
    }
    public function getAreasize($id){
        $model = Orchard::find()->where(['id'=>$id])->one();
        return count($model)>0?$model->area_size:0;
    }
    public function getType($id){
        $model = Orchard::find()->where(['id'=>$id])->one();
        return count($model)>0?$model->type_id:0;
    }
    public function findStandard($id){
        $standardlist = '';
        $model = Orchard::find()->where(['id'=>$id])->one();
        if($model){
            if($model->standard != ''){
                $list = explode(',',$model->standard);
                if($list){
                    for($i=0;$i<=count($list)-1;$i++){
                        $standardlist = \backend\helpers\StandardType::getTypeById($list[$i]);
                    }
                }
            }
        }
        return $standardlist;
    }
    public function findInterval($id){
        $model = Orchard::find()->where(['id'=>$id])->one();
        return count($model)>0?$model->cut_interval:0;
    }
    public function findTypename($id){
        $model = Orchard::find()->where(['id'=>$id])->one();
        if($model){
            $typeid = self::getType($id);
            $modeltype = \backend\helpers\OrchardType::getTypeById($typeid);
            return $modeltype != ''?$modeltype:'';
        }
    }

}
