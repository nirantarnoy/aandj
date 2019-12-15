<?php

use yii\db\Migration;

/**
 * Handles adding dept_id to table `production_rec`.
 */
class m191215_104906_add_dept_id_column_to_production_rec_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('production_rec', 'dept_id', $this->integer());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('production_rec', 'dept_id');
    }
}
