<?php

use yii\db\Migration;

/**
 * Class m180819_080056_add_column_to_purch_plan_table
 */
class m180819_080056_add_column_to_purch_plan_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
       $this->addColumn('purch_plan','trans_date',$this->date());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('purch_plan','trans_date');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180819_080056_add_column_to_purch_plan_table cannot be reverted.\n";

        return false;
    }
    */
}
