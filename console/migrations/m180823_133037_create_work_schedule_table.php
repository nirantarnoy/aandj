<?php

use yii\db\Migration;

/**
 * Handles the creation of table `work_schedule`.
 */
class m180823_133037_create_work_schedule_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('work_schedule', [
            'id' => $this->primaryKey(),
            'trans_date'=>$this->date(),
            'note'=>$this->string(),
            'orchard_id'=>$this->integer(),
            'team_cut'=>$this->integer(),
            'team_pick'=>$this->integer(),
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
        $this->dropTable('work_schedule');
    }
}
