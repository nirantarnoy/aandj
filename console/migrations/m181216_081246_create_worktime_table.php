<?php

use yii\db\Migration;

/**
 * Handles the creation of table `worktime`.
 */
class m181216_081246_create_worktime_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('worktime', [
            'id' => $this->primaryKey(),
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
        $this->dropTable('worktime');
    }
}
