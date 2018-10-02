<?php

use yii\db\Migration;

/**
 * Handles the creation of table `zone_product`.
 */
class m180719_043441_create_zone_product_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('zone_product', [
            'id' => $this->primaryKey(),
            'zone_id'=>$this->integer(),
            'product_id'=>$this->integer(),
            'qty'=>$this->integer(),
            'lot_no'=> $this->string(),
            'status'=>$this->integer(),
            'created_at' => $this->integer(),
            'updated_at' => $this->integer(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer()
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('zone_product');
    }
}
