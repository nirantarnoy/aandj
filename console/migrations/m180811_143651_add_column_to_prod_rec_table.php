<?php

use yii\db\Migration;

/**
 * Class m180811_143651_add_column_to_prod_rec_table
 */
class m180811_143651_add_column_to_prod_rec_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
      $this->addColumn('prod_rec','plan_id',$this->integer());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
      $this->dropColumn('prod_rec','plan_id');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180811_143651_add_column_to_prod_rec_table cannot be reverted.\n";

        return false;
    }
    */
}
