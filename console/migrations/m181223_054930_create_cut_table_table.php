<?php

use yii\db\Migration;

/**
 * Handles the creation of table `cut_table`.
 */
class m181223_054930_create_cut_table_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('cut_table', [
            'id' => $this->primaryKey(),
            'cut_no'=>$this->string(),
            'status'=>$this->integer(),
            'created_at' => $this->integer(),
            'updated_at' => $this->integer(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer()
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('cut_table');
    }
}
