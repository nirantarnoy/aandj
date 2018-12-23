<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "cut_table_line".
 *
 * @property int $id
 * @property int $cut_id
 * @property int $orcard_id
 * @property int $product_id
 * @property int $cut_team
 * @property string $cut_date
 * @property string $cut_next_date
 * @property int $status
 * @property int $created_at
 * @property int $updated_at
 * @property int $created_by
 * @property int $updated_by
 */
class CutTableLine extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'cut_table_line';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['cut_id', 'orcard_id', 'product_id', 'cut_team', 'status', 'created_at', 'updated_at', 'created_by', 'updated_by'], 'integer'],
            [['cut_date', 'cut_next_date'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'cut_id' => 'Cut ID',
            'orcard_id' => 'Orcard ID',
            'product_id' => 'Product ID',
            'cut_team' => 'Cut Team',
            'cut_date' => 'Cut Date',
            'cut_next_date' => 'Cut Next Date',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
        ];
    }
}
