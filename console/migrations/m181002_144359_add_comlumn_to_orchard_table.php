<?php

use yii\db\Migration;

/**
 * Class m181002_144359_add_comlumn_to_orchard_table
 */
class m181002_144359_add_comlumn_to_orchard_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('orchard','transport_wage',$this->float());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
      $this->dropColumn('orchard','transport_wage');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m181002_144359_add_comlumn_to_orchard_table cannot be reverted.\n";

        return false;
    }
    */
}
