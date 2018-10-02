<?php

use yii\db\Migration;

/**
 * Handles the creation of table `quality`.
 */
class m180731_042650_create_quality_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('quality', [
            'id' => $this->primaryKey(),
            'quality_no'=>$this->string(),
            'trans_date'=>$this->integer(),
            'ref_order_no'=>$this->integer(),
            'interval_day'=>$this->integer(),
            'action_date'=>$this->integer(),
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
        $this->dropTable('quality');
    }
}
