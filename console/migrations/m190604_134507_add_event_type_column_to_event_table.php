<?php

use yii\db\Migration;

/**
 * Handles adding event_type to table `event`.
 */
class m190604_134507_add_event_type_column_to_event_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('event', 'event_type', $this->integer());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('event', 'event_type');
    }
}
