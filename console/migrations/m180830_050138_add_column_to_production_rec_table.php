<?php

use yii\db\Migration;

/**
 * Class m180830_050138_add_column_to_production_rec_table
 */
class m180830_050138_add_column_to_production_rec_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
       $this->addColumn('production_rec','product_id',$this->integer());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('production_rec','product_id');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180830_050138_add_column_to_production_rec_table cannot be reverted.\n";

        return false;
    }
    */
}
