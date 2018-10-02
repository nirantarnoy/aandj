<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "changepwd".
 *
 * @property integer $recid
 * @property string $currentpwd
 * @property string $newpwd
 * @property string $confirmpwd
 */
class Changepwd extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'changepwd';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
          //  [['currentpwd', 'newpwd', 'confirmpwd'], 'string', 'max' => 255],
                      [['currentpwd','newpwd','confirmpwd'],'required'],
           
            [['newpwd','confirmpwd'],'filter','filter'=>'trim'],
            [['confirmpwd'],'compare','compareAttribute'=>'newpwd','message'=>'รัหสผ่านไม่ตรงกัน'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'recid' => 'Recid',
            'currentpwd'=>'รหัสผ่านเก่า',
            'newpwd'=>'รหัสผ่านใหม่',
            'confirmpwd'=>'ยืนยันรหัสผ่าน'
        ];
    }
}
