<?php

use yii\db\Migration;

/**
 * Class m180731_141948_add_column_to_quality_table
 */
class m180731_141948_add_column_to_quality_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
      $this->addColumn('quality','order_no',$this->string());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('quality','order_no');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180731_141948_add_column_to_quality_table cannot be reverted.\n";

        return false;
    }
    */
}
