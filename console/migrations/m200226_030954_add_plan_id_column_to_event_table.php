<?php

use yii\db\Migration;

/**
 * Handles adding plan_id to table `event`.
 */
class m200226_030954_add_plan_id_column_to_event_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('event', 'plan_id', $this->integer());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('event', 'plan_id');
    }
}
