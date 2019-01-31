<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "treat".
 *
 * @property int $id
 * @property string $code
 * @property string $title
 * @property string $description
 * @property int $interval_day
 * @property int $status
 * @property int $created_at
 * @property int $updated_at
 * @property int $created_by
 * @property int $updated_by
 */
class Treat extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'treat';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['interval_day', 'status', 'created_at', 'updated_at', 'created_by', 'updated_by'], 'integer'],
            [['code', 'title', 'description'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'code' => 'รหัส',
            'title' => 'ชื่องาน',
            'description' => 'รายละเอียด',
            'interval_day' => 'รอบทำงาน',
            'status' => 'สถาณะ',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
        ];
    }
}
