<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "query_product_receive".
 *
 * @property int $product_id
 * @property string $line_qty
 * @property string $name
 * @property int $trans_date
 */
class QueryProductReceive extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'query_product_receive';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['product_id', 'trans_date'], 'integer'],
            [['line_qty'], 'number'],
            [['name'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'product_id' => Yii::t('app', 'Product ID'),
            'line_qty' => Yii::t('app', 'Line Qty'),
            'name' => Yii::t('app', 'Name'),
            'trans_date' => Yii::t('app', 'Trans Date'),
        ];
    }
}
