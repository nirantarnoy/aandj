<?php

use yii\db\Migration;

/**
 * Class m180901_143051_add_column_to_production_rec_table
 */
class m180901_143051_add_column_to_production_rec_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
       $this->addColumn('production_rec','rec_date',$this->date());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
       $this->dropColumn('production_rec','rec_date');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180901_143051_add_column_to_production_rec_table cannot be reverted.\n";

        return false;
    }
    */
}
