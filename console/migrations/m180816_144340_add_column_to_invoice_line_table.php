<?php

use yii\db\Migration;

/**
 * Class m180816_144340_add_column_to_invoice_line_table
 */
class m180816_144340_add_column_to_invoice_line_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
       $this->addColumn('invoice_line','prodrec_id',$this->integer());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
       $this->dropColumn('invoice_line','prodrec_id');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180816_144340_add_column_to_invoice_line_table cannot be reverted.\n";

        return false;
    }
    */
}
