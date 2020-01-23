<?php

use yii\db\Migration;

/**
 * Handles adding line_qty2 to table `production_rec_line`.
 */
class m200122_164126_add_line_qty2_column_to_production_rec_line_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('production_rec_line', 'line_qty2', $this->integer());
        $this->addColumn('production_rec_line', 'line_qty3', $this->integer());
        $this->addColumn('production_rec_line', 'line_qty4', $this->integer());
        $this->addColumn('production_rec_line', 'line_qty5', $this->integer());
        $this->addColumn('production_rec_line', 'line_qty6', $this->integer());
        $this->addColumn('production_rec_line', 'line_qty7', $this->integer());
        $this->addColumn('production_rec_line', 'line_qty8', $this->integer());
        $this->addColumn('production_rec_line', 'line_qty9', $this->integer());
        $this->addColumn('production_rec_line', 'line_qty10', $this->integer());
        $this->addColumn('production_rec_line', 'line_qty11', $this->integer());
        $this->addColumn('production_rec_line', 'line_qty12', $this->integer());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('production_rec_line', 'line_qty2');
        $this->dropColumn('production_rec_line', 'line_qty3');
        $this->dropColumn('production_rec_line', 'line_qty4');
        $this->dropColumn('production_rec_line', 'line_qty5');
        $this->dropColumn('production_rec_line', 'line_qty6');
        $this->dropColumn('production_rec_line', 'line_qty7');
        $this->dropColumn('production_rec_line', 'line_qty8');
        $this->dropColumn('production_rec_line', 'line_qty9');
        $this->dropColumn('production_rec_line', 'line_qty10');
        $this->dropColumn('production_rec_line', 'line_qty11');
        $this->dropColumn('production_rec_line', 'line_qty12');
    }
}
