<?php

use yii\db\Migration;

/**
 * Class m180823_145409_add_column_to_event_table
 */
class m180823_145409_add_column_to_event_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('event','trans_date',$this->date());
        $this->addColumn('event','ref_type',$this->integer());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('event','trans_date');
        $this->dropColumn('event','ref_type');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180823_145409_add_column_to_event_table cannot be reverted.\n";

        return false;
    }
    */
}
