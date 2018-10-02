<?php

use yii\db\Migration;

/**
 * Handles the creation of table `quality_line`.
 */
class m180731_042700_create_quality_line_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('quality_line', [
            'id' => $this->primaryKey(),
            'quality_order_id'=>$this->integer(),
            'quality_title'=>$this->integer(),
            'qty'=>$this->float(),
            'note' => $this->string(),
            'status' => $this->integer(),
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
        $this->dropTable('quality_line');
    }
}
