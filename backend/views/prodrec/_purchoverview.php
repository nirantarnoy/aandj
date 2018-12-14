<?php
/**
 * Created by PhpStorm.
 * User: niran.w
 * Date: 05/12/2018
 * Time: 10:32:42
 */
use kartik\date\DatePicker;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;

$this->title = "ภาพรวมรับเข้าวัตถุดิบ";

$sup = \backend\models\Suplier::find()->all();
$product = \backend\models\Product::find()->all();

?>
<h3><?=$this->title?></h3>
<div class="row">
    <div class="col-lg-3">
        <label for="">เลือกวันที่</label>
        <?php
          echo DatePicker::widget([
             'name'=>'filter_date'
          ]);
        ?>
    </div>
    <div class="col-lg-3">
        <label for="">ผู้ขาย</label>
        <?php
        echo Select2::widget([
           'name'=>'sup',
           'data'=> ArrayHelper::map($sup,'id','name'),
           'options' => [
               'placeholder'=>'เลือกผู้ขาย'
           ]
        ]);
        ?>
    </div>
    <div class="col-lg-3">
        <label for="">ประเภทสินค้า</label>
        <?php
        echo Select2::widget([
            'name'=>'sup',
            'data'=> ArrayHelper::map($product,'id','name'),
            'options' => [
                'placeholder'=>'เลือกสินค้า'
            ]
        ]);
        ?>
    </div>
</div> <br />
<div class="panel">
    <div class="panel-body">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ผู้ขาย</th>
                <th>ควั่น</th>
                <th>หัวโต</th>
                <th>รวม</th>
            </tr>
            </thead>
        </table>
    </div>
</div>
