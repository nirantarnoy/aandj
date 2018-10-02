<?php

use yii\db\Migration;

/**
 * Class m180721_020922_add_column_to_production_rec_line
 */
class m180721_020922_add_column_to_production_rec_line extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('production_rec_line','list_qty',$this->string());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('production_rec_line','list_qty');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180721_020922_add_column_to_production_rec_line cannot be reverted.\n";

        return false;
    }
    */
}
