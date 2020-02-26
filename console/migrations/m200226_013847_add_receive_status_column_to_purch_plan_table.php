<?php

use yii\db\Migration;

/**
 * Handles adding receive_status to table `purch_plan`.
 */
class m200226_013847_add_receive_status_column_to_purch_plan_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('purch_plan', 'receive_status', $this->integer());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('purch_plan', 'receive_status');
    }
}
