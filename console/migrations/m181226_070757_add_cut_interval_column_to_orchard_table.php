<?php

use yii\db\Migration;

/**
 * Handles adding cut_interval to table `orchard`.
 */
class m181226_070757_add_cut_interval_column_to_orchard_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('orchard', 'cut_interval', $this->integer());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('orchard', 'cut_interval');
    }
}
