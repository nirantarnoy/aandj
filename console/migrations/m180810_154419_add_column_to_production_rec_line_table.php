<?php

use yii\db\Migration;

/**
 * Class m180810_154419_add_column_to_production_rec_line_table
 */
class m180810_154419_add_column_to_production_rec_line_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
      $this->addColumn('production_rec_line','line_price',$this->float());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
     $this->dropColumn('production_rec_line','line_price');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180810_154419_add_column_to_production_rec_line_table cannot be reverted.\n";

        return false;
    }
    */
}
