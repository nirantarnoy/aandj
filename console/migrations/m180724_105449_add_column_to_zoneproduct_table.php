<?php

use yii\db\Migration;

/**
 * Class m180724_105449_add_column_to_zoneproduct_table
 */
class m180724_105449_add_column_to_zoneproduct_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('zone_product','wip_qty',$this->float());
        $this->addColumn('zone_product','remain_qty',$this->float());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('zone_product','wip_qty');
        $this->dropColumn('zone_product','remain_qty');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180724_105449_add_column_to_zoneproduct_table cannot be reverted.\n";

        return false;
    }
    */
}
