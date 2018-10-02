<?php

use yii\db\Migration;

/**
 * Class m180909_064235_add_column_to_vendor_table
 */
class m180909_064235_add_column_to_vendor_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
      $this->addColumn('vendor','user_id',$this->integer());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
       $this->dropColumn('vendor','user_id');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180909_064235_add_column_to_vendor_table cannot be reverted.\n";

        return false;
    }
    */
}
