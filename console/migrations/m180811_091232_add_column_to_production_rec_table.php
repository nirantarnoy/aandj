<?php

use yii\db\Migration;

/**
 * Class m180811_091232_add_column_to_production_rec_table
 */
class m180811_091232_add_column_to_production_rec_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('production_rec','productrec_no',$this->string());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('production_rec','productrec_no');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180811_091232_add_column_to_production_rec_table cannot be reverted.\n";

        return false;
    }
    */
}
