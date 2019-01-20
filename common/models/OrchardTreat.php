<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "orchard_treat".
 *
 * @property int $id
 * @property int $orchard_id
 * @property string $action_date
 * @property int $job_id
 * @property int $use_qty
 * @property int $unit
 * @property int $operate_by
 * @property int $status
 * @property int $created_at
 * @property int $updated_by
 * @property int $created_by
 */
class OrchardTreat extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'orchard_treat';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['orchard_id', 'job_id', 'use_qty', 'unit', 'operate_by', 'status', 'created_at', 'updated_by', 'created_by'], 'integer'],
            [['action_date'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'orchard_id' => 'Orchard ID',
            'action_date' => 'Action Date',
            'job_id' => 'Job ID',
            'use_qty' => 'Use Qty',
            'unit' => 'Unit',
            'operate_by' => 'Operate By',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'created_by' => 'Created By',
        ];
    }
}
