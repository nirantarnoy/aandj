<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "zone_product".
 *
 * @property int $id
 * @property int $zone_id
 * @property int $product_id
 * @property int $qty
 * @property string $lot_no
 * @property int $status
 * @property int $created_at
 * @property int $updated_at
 * @property int $created_by
 * @property int $updated_by
 */
class ZoneProduct extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'zone_product';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['zone_id', 'product_id', 'qty', 'status', 'created_at', 'updated_at', 'created_by', 'updated_by'], 'integer'],
            [['lot_no'], 'string', 'max' => 255],
            [['wip_qty','remain_qty'],'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'zone_id' => Yii::t('app', 'Zone ID'),
            'product_id' => Yii::t('app', 'Product ID'),
            'qty' => Yii::t('app', 'Qty'),
            'lot_no' => Yii::t('app', 'Lot No'),
            'wip_qty' => Yii::t('app', 'เบิกผลิต'),
            'remain_qty' => Yii::t('app', 'ค้างผลิต'),
            'status' => Yii::t('app', 'Status'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
            'created_by' => Yii::t('app', 'Created By'),
            'updated_by' => Yii::t('app', 'Updated By'),
        ];
    }
}
