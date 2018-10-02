<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "quality".
 *
 * @property int $id
 * @property string $quality_no
 * @property int $trans_date
 * @property int $ref_order_no
 * @property int $interval_day
 * @property int $action_date
 * @property string $note
 * @property int $status
 * @property int $created_at
 * @property int $updated_at
 * @property int $created_by
 * @property int $updated_by
 */
class Quality extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'quality';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['quality_no'],'required'],
            [['ref_order_no', 'interval_day', 'action_date', 'status', 'created_at', 'updated_at', 'created_by', 'updated_by'], 'integer'],
            [['quality_no', 'note','order_no'], 'string', 'max' => 255],
            [['trans_date'],'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'quality_no' => Yii::t('app', 'เลขที่'),
            'trans_date' => Yii::t('app', 'วันที่'),
            'ref_order_no' => Yii::t('app', 'เลขที่อ้างอิง'),
            'order_no' => Yii::t('app', 'เลขที่รับเข้า'),
            'interval_day' => Yii::t('app', 'รอบ'),
            'action_date' => Yii::t('app', 'วันที่ตัด'),
            'note' => Yii::t('app', 'หมายเหตุ'),
            'status' => Yii::t('app', 'สถานะ'),
            'created_at' => Yii::t('app', 'สร้างเมื่อ'),
            'updated_at' => Yii::t('app', 'แก้ไขเมื่อ'),
            'created_by' => Yii::t('app', 'สร้างโดย'),
            'updated_by' => Yii::t('app', 'แก้ไขโดย'),
        ];
    }
}
