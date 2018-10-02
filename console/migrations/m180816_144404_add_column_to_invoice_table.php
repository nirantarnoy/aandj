<?php

use yii\db\Migration;

/**
 * Class m180816_144404_add_column_to_invoice_table
 */
class m180816_144404_add_column_to_invoice_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('invoice','total_text',$this->string());
        $this->addColumn('invoice','total_issue',$this->float());
        $this->addColumn('invoice','total_advance',$this->float());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('invoice','total_text');
        $this->dropColumn('invoice','total_issue');
        $this->dropColumn('invoice','total_advance');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180816_144404_add_column_to_invoice_table cannot be reverted.\n";

        return false;
    }
    */
}
