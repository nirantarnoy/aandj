<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "work_schedule".
 *
 * @property int $id
 * @property string $trans_date
 * @property string $note
 * @property int $orchard_id
 * @property int $team_cut
 * @property int $team_pick
 * @property int $status
 * @property int $created_at
 * @property int $updated_at
 * @property int $created_by
 * @property int $updated_by
 */
class WorkSchedule extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'work_schedule';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['orchard_id','team_cut','team_pick'],'required'],
            [['trans_date'], 'safe'],
            [['orchard_id', 'team_cut', 'team_pick', 'status', 'created_at', 'updated_at', 'created_by', 'updated_by'], 'integer'],
            [['note'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'trans_date' => Yii::t('app', 'วันที่ตัด'),
            'note' => Yii::t('app', 'บันทึก'),
            'orchard_id' => Yii::t('app', 'สวน'),
            'team_cut' => Yii::t('app', 'ทีมตัด'),
            'team_pick' => Yii::t('app', 'ทีมขน'),
            'status' => Yii::t('app', 'สถานะ'),
            'created_at' => Yii::t('app', 'สร้างเมื่อ'),
            'updated_at' => Yii::t('app', 'แก้ไขเมื่อ'),
            'created_by' => Yii::t('app', 'สร้างโดย'),
            'updated_by' => Yii::t('app', 'แก้ไขโดย'),
        ];
    }
}
