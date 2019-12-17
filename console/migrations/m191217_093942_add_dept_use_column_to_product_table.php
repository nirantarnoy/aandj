<?php

use yii\db\Migration;

/**
 * Handles adding dept_use to table `product`.
 */
class m191217_093942_add_dept_use_column_to_product_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('product', 'dept_use', $this->integer());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('product', 'dept_use');
    }
}
