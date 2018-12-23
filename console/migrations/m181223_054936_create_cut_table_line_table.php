<?php

use yii\db\Migration;

/**
 * Handles the creation of table `cut_table_line`.
 */
class m181223_054936_create_cut_table_line_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('cut_table_line', [
            'id' => $this->primaryKey(),
            'cut_id'=>$this->integer(),
            'orcard_id'=>$this->integer(),
            'product_id'=>$this->integer(),
            'cut_team'=>$this->integer(),
            'cut_date'=>$this->date(),
            'cut_next_date'=>$this->date(),
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
        $this->dropTable('cut_table_line');
    }
}
