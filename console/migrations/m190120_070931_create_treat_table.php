<?php

use yii\db\Migration;

/**
 * Handles the creation of table `treat`.
 */
class m190120_070931_create_treat_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('treat', [
            'id' => $this->primaryKey(),
            'code' => $this->string(),
            'title' => $this->string(),
            'description' => $this->string(),
            'interval_day' => $this->integer(),
            'status' => $this->integer(),
            'created_at' => $this->integer(),
            'updated_at' => $this->integer(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('treat');
    }
}
