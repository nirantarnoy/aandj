<?php

use yii\db\Migration;

/**
 * Class m180801_131200_add_column_to_quality_table
 */
class m180801_131200_add_column_to_quality_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
      $this->addColumn('quality','product_id',$this->integer());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
       $this->dropColumn('quality','product_id');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180801_131200_add_column_to_quality_table cannot be reverted.\n";

        return false;
    }
    */
}
