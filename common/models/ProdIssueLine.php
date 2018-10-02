<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "prod_issue_line".
 *
 * @property int $id
 * @property int $prod_rec_id
 * @property int $prod_issue_id
 * @property int $zone_id
 * @property int $qty
 * @property double $price
 * @property string $lot_no
 * @property string $ref_no
 * @property int $status
 * @property int $created_at
 * @property int $updated_at
 * @property int $created_by
 * @property int $updated_by
 */
class ProdIssueLine extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'prod_issue_line';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['prod_rec_id','section_id','emp_id', 'prod_issue_id', 'zone_id', 'qty', 'status', 'created_at', 'updated_at', 'created_by', 'updated_by'], 'integer'],
            [['price'], 'number'],
            [['lot_no', 'ref_no','note'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'prod_rec_id' => Yii::t('app', 'Prod Rec ID'),
            'prod_issue_id' => Yii::t('app', 'Prod Issue ID'),
            'zone_id' => Yii::t('app', 'Zone ID'),
            'qty' => Yii::t('app', 'Qty'),
            'price' => Yii::t('app', 'Price'),
            'lot_no' => Yii::t('app', 'Lot No'),
            'ref_no' => Yii::t('app', 'Ref No'),
            'section_id' => Yii::t('app', 'section_id'),
            'emp_id' => Yii::t('app', 'Employee'),
            'note' => Yii::t('app', 'Note'),
            'status' => Yii::t('app', 'Status'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
            'created_by' => Yii::t('app', 'Created By'),
            'updated_by' => Yii::t('app', 'Updated By'),
        ];
    }
}
