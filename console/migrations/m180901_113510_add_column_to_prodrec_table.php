<?php

use yii\db\Migration;

/**
 * Class m180901_113510_add_column_to_prodrec_table
 */
class m180901_113510_add_column_to_prodrec_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
      $this->addColumn('prod_rec','rec_date',$this->date());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
      $this->dropColumn('prod_rec','rec_date');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180901_113510_add_column_to_prodrec_table cannot be reverted.\n";

        return false;
    }
    */
}
