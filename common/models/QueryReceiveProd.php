<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "query_receive_prod".
 *
 * @property string $journal_no
 * @property int $trans_date
 * @property int $suplier_id
 * @property int $product_id
 * @property int $qty
 * @property double $price
 * @property string $lot_no
 * @property string $ref_no
 * @property int $status
 * @property string $name
 * @property string $description
 * @property int $zone_id
 * @property string $zone_name
 * @property int $team1
 * @property int $team2
 * @property string $supplier_name
 */
class QueryReceiveProd extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'query_receive_prod';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['trans_date', 'suplier_id', 'product_id', 'qty', 'status', 'zone_id', 'team1', 'team2'], 'integer'],
            [['price'], 'number'],
            [['journal_no', 'lot_no', 'ref_no', 'name', 'description', 'zone_name', 'supplier_name'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'journal_no' => 'Journal No',
            'trans_date' => 'Trans Date',
            'suplier_id' => 'Suplier ID',
            'product_id' => 'Product ID',
            'qty' => 'Qty',
            'price' => 'Price',
            'lot_no' => 'Lot No',
            'ref_no' => 'Ref No',
            'status' => 'Status',
            'name' => 'Name',
            'description' => 'Description',
            'zone_id' => 'Zone ID',
            'zone_name' => 'Zone Name',
            'team1' => 'Team1',
            'team2' => 'Team2',
            'supplier_name' => 'Supplier Name',
        ];
    }
}
