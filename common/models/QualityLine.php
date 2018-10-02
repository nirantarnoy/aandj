<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "quality_line".
 *
 * @property int $id
 * @property int $quality_order_id
 * @property int $quality_title
 * @property double $qty
 * @property string $note
 * @property int $status
 * @property int $created_at
 * @property int $updated_at
 * @property int $created_by
 * @property int $updated_by
 */
class QualityLine extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'quality_line';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['quality_order_id', 'quality_title', 'status', 'created_at', 'updated_at', 'created_by', 'updated_by'], 'integer'],
            [['qty'], 'number'],
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
            'quality_order_id' => Yii::t('app', 'Quality Order ID'),
            'quality_title' => Yii::t('app', 'Quality Title'),
            'qty' => Yii::t('app', 'Qty'),
            'note' => Yii::t('app', 'Note'),
            'status' => Yii::t('app', 'Status'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
            'created_by' => Yii::t('app', 'Created By'),
            'updated_by' => Yii::t('app', 'Updated By'),
        ];
    }
}
