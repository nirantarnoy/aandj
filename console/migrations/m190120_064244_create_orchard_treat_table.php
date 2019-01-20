<?php

use yii\db\Migration;

/**
 * Handles the creation of table `orchard_treat`.
 */
class m190120_064244_create_orchard_treat_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('orchard_treat', [
            'id' => $this->primaryKey(),
            'orchard_id' => $this->integer(),
            'action_date' => $this->datetime(),
            'job_id' => $this->integer(),
            'use_qty' => $this->integer(),
            'unit' => $this->integer(),
            'operate_by' => $this->integer(),
            'status' => $this->integer(),
            'created_at' => $this->integer(),
            'updated_by' => $this->integer(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('orchard_treat');
    }
}
