<?php

use yii\db\Migration;

/**
 * Class m180716_032337_add_column_to_stock_balance_table
 */
class m180716_032337_add_column_to_stock_balance_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('stock_balance','lot_no',$this->string());
        $this->addColumn('stock_balance','zone_id',$this->integer());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('stock_balance','lot_no');
        $this->dropColumn('stock_balance','zone_id');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180716_032337_add_column_to_stock_balance_table cannot be reverted.\n";

        return false;
    }
    */
}
