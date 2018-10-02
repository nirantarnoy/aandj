<?php

use yii\db\Migration;

/**
 * Class m180717_133023_add_column_to_prod_issue_line
 */
class m180717_133023_add_column_to_prod_issue_line extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('prod_issue_line','section_id',$this->integer());
        $this->addColumn('prod_issue_line','emp_id',$this->integer());
        $this->addColumn('prod_issue_line','note',$this->string());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->addColumn('prod_issue_line','section_id');
        $this->addColumn('prod_issue_line','emp_id');
        $this->addColumn('prod_issue_line','note');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180717_133023_add_column_to_prod_issue_line cannot be reverted.\n";

        return false;
    }
    */
}
