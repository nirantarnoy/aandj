<?php

use yii\helpers\Url;

$this->title = 'สร้างแผนสั่งซื้อ';
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'แผนสั่งซื้อ'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;

$this->registerJsFile('@web/js/sweetalert.min.js?V=002',
    ['depends' => [\yii\web\JqueryAsset::className()]],
    static::POS_HEAD
);
?>
<div class="row">
    <div class="col-lg-12">
        <form id="form-plan" action="index.php?r=purchplan/createnew" method="post">
            <div class="panel">
                <div class="panel-heading">
                    <?= $this->title ?>
                    <?php if (!$model->isNewRecord): ?>
                        <div class="btn btn-default btn-copy" onclick="copy($(this));"><i class="fa fa-copy"></i> copy
                        </div>
                    <?php endif; ?>
                </div>
                <div class="panel-body">
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#home" style="font-weight: bold">ควั่น</a></li>
                        <li><a data-toggle="tab" href="#menu1" style="font-weight: bold">หัวโต</a></li>
                        <li><a data-toggle="tab" href="#menu2" style="font-weight: bold">เจีย</a></li>
                        <li><a data-toggle="tab" href="#menu3" style="font-weight: bold">เจียสำเร็จ</a></li>
                    </ul>
                    <div class="tab-content">

                        <div id="home" class="tab-pane fade in active">
                            <br>
                            <table class="table table-bordered table-plan1">
                                <thead>
                                <tr>
                                    <th style="text-align: center">ผู้ขาย</th>
                                    <th style="text-align: right">แผน</th>
                                    <th style="text-align: right">เข้าจริง</th>
                                    <th style="text-align: right">ราคา</th>
                                    <th style="text-align: center">-</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php if ($model->isNewRecord): ?>
                                    <tr>
                                        <td>
                                            <select name="line_sup1[]" class="form-control sub" id="">
                                                <?php $sub = \backend\models\Suplier::find()->all(); ?>
                                                <?php foreach ($sub as $data2): ?>
                                                    <?php
                                                    $select = '';
                                                    ?>
                                                    <option value="<?= $data2->id ?>" <?= $select ?>><?= $data2->name ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </td>
                                        <td>
                                            <input type="text" style="text-align: right" class="form-control line-plan"
                                                   name="line_plan1[]" value="" onchange="cal_plan($(this),1);">
                                        </td>
                                        <td>
                                            <input type="text" style="text-align: right" class="form-control"
                                                   name="line_qty1[]" value="" readonly>
                                        </td>
                                        <td>
                                            <input type="text" style="text-align: right" class="form-control"
                                                   name="line_price1[]" value="">
                                        </td>
                                        <td style="text-align: center">
                                            <i class="fa fa-trash btn-delete-plan1" onclick="removeline1($(this))">
                                            </i>
                                        </td>
                                    </tr>
                                <?php else: ?>
                                   <?php $i1 = 0;?>
                                    <?php foreach ($modelline as $val): ?>
                                        <?php if ($val->plan_type == 1): ?>
                                        <?php $i1 +=1;?>
                                            <tr>
                                                <td>
                                                    <select name="line_sup1[]" class="form-control sub" id="">
                                                        <?php $sub = \backend\models\Suplier::find()->all(); ?>
                                                        <?php foreach ($sub as $data2): ?>
                                                            <?php
                                                            $select = '';
                                                            if ($val->sup_id == $data2->id) $select = 'selected';
                                                            ?>
                                                            <option value="<?= $data2->id ?>" <?= $select ?>><?= $data2->name ?></option>
                                                        <?php endforeach; ?>
                                                    </select>
                                                </td>
                                                <td>
                                                    <input type="text" style="text-align: right"
                                                           class="form-control line-plan"
                                                           name="line_plan1[]" value="<?= $val->plan_qty ?>"
                                                           onchange="cal_plan($(this),1);">
                                                </td>
                                                <td>
                                                    <input type="text" style="text-align: right" class="form-control"
                                                           name="line_qty1[]" value="<?= $val->received_qty ?>"
                                                           readonly>
                                                </td>
                                                <td>
                                                    <input type="text" style="text-align: right" class="form-control"
                                                           name="line_price1[]" value="<?= $val->plan_price ?>">
                                                </td>
                                                <td style="text-align: center">
                                                    <i class="fa fa-trash btn-delete-plan1" onclick="removeline1($(this))">
                                                    </i>
                                                </td>
                                            </tr>
                                        <?php endif; ?>
                                    <?php endforeach; ?>
                                    <?php if($i1 == 0):?>
                                        <tr>
                                            <td>
                                                <select name="line_sup1[]" class="form-control sub" id="">
                                                    <?php $sub = \backend\models\Suplier::find()->all(); ?>
                                                    <?php foreach ($sub as $data2): ?>
                                                        <?php
                                                        $select = '';
                                                        ?>
                                                        <option value="<?= $data2->id ?>" <?= $select ?>><?= $data2->name ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </td>
                                            <td>
                                                <input type="text" style="text-align: right" class="form-control line-plan"
                                                       name="line_plan1[]" value="" onchange="cal_plan($(this),1);">
                                            </td>
                                            <td>
                                                <input type="text" style="text-align: right" class="form-control"
                                                       name="line_qty1[]" value="" readonly>
                                            </td>
                                            <td>
                                                <input type="text" style="text-align: right" class="form-control"
                                                       name="line_price1[]" value="">
                                            </td>
                                            <td style="text-align: center">
                                                <i class="fa fa-trash btn-delete-plan1" onclick="removeline1($(this))">
                                                </i>
                                            </td>
                                        </tr>
                                    <?php endif; ?>
                                <?php endif; ?>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <td style="text-align: right;font-weight: bold">รวม</td>
                                    <td style="font-weight: bold;">
                                        <input type="text" class="form-control sum-qty-plan1" style="text-align: right"
                                               readonly value="0">
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                </tfoot>
                            </table>
                            <div class="btn btn-primary btn-add-plan1">เพิ่มรายการ</div>
                        </div>
                        <div id="menu1" class="tab-pane fade">
                            <br>
                            <table class="table table-bordered table-plan2">
                                <thead>
                                <tr>
                                    <th style="text-align: center">ผู้ขาย</th>
                                    <th style="text-align: right">แผน</th>
                                    <th style="text-align: right">เข้าจริง</th>
                                    <th style="text-align: right">ราคา</th>
                                    <th style="text-align: center">-</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php if ($model->isNewRecord): ?>
                                    <tr>
                                        <td>
                                            <select name="line_sup2[]" class="form-control sub" id="">
                                                <?php $sub = \backend\models\Suplier::find()->all(); ?>
                                                <?php foreach ($sub as $data2): ?>
                                                    <?php
                                                    $select = '';
                                                    ?>
                                                    <option value="<?= $data2->id ?>" <?= $select ?>><?= $data2->name ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </td>
                                        <td>
                                            <input type="text" class="form-control line-plan" name="line_plan2[]"
                                                   value="" onchange="cal_plan($(this),2);">
                                        </td>
                                        <td>
                                            <input type="text" class="form-control" name="line_qty2[]" value=""
                                                   readonly>
                                        </td>
                                        <td>
                                            <input type="text" class="form-control" name="line_price2[]" value="">
                                        </td>
                                        <td style="text-align: center">
                                            <i class="fa fa-trash btn-delete-plan2" onclick="removeline2($(this))">
                                            </i>
                                        </td>
                                    </tr>
                                <?php else: ?>
                                    <?php $i2 = 0;?>
                                    <?php foreach ($modelline as $val): ?>
                                        <?php if ($val->plan_type == 2): ?>
                                            <?php $i2 +=1;?>
                                            <tr>
                                                <td>
                                                    <select name="line_sup2[]" class="form-control sub" id="">
                                                        <?php $sub = \backend\models\Suplier::find()->all(); ?>
                                                        <?php foreach ($sub as $data2): ?>
                                                            <?php
                                                            $select = '';
                                                            if ($val->sup_id == $data2->id) $select = 'selected';
                                                            ?>
                                                            <option value="<?= $data2->id ?>" <?= $select ?>><?= $data2->name ?></option>
                                                        <?php endforeach; ?>
                                                    </select>
                                                </td>
                                                <td>
                                                    <input type="text" style="text-align: right"
                                                           class="form-control line-plan"
                                                           name="line_plan2[]" value="<?= $val->plan_qty ?>"
                                                           onchange="cal_plan($(this),2);">
                                                </td>
                                                <td>
                                                    <input type="text" style="text-align: right" class="form-control"
                                                           name="line_qty2[]" value="<?= $val->received_qty ?>"
                                                           readonly>
                                                </td>
                                                <td>
                                                    <input type="text" style="text-align: right" class="form-control"
                                                           name="line_price2[]" value="<?= $val->plan_price ?>">
                                                </td>
                                                <td style="text-align: center">
                                                    <i class="fa fa-trash btn-delete-plan2" onclick="removeline2($(this))">
                                                    </i>
                                                </td>
                                            </tr>
                                        <?php endif; ?>
                                    <?php endforeach; ?>
                                <?php if($i2 == 0): ?>
                                        <tr>
                                            <td>
                                                <select name="line_sup2[]" class="form-control sub" id="">
                                                    <?php $sub = \backend\models\Suplier::find()->all(); ?>
                                                    <?php foreach ($sub as $data2): ?>
                                                        <?php
                                                        $select = '';
                                                        ?>
                                                        <option value="<?= $data2->id ?>" <?= $select ?>><?= $data2->name ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </td>
                                            <td>
                                                <input type="text" class="form-control line-plan" name="line_plan2[]"
                                                       value="" onchange="cal_plan($(this),2);">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" name="line_qty2[]" value=""
                                                       readonly>
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" name="line_price2[]" value="">
                                            </td>
                                            <td style="text-align: center">
                                                <i class="fa fa-trash btn-delete-plan2" onclick="removeline2($(this))">
                                                </i>
                                            </td>
                                        </tr>
                                <?php endif; ?>
                                <?php endif; ?>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <td style="text-align: right;font-weight: bold">รวม</td>
                                    <td style="font-weight: bold;">
                                        <input type="text" class="form-control sum-qty-plan2" style="text-align: right"
                                               readonly value="0">
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                </tfoot>
                            </table>
                            <div class="btn btn-primary btn-add-plan2">เพิ่มรายการ</div>
                        </div>
                        <div id="menu2" class="tab-pane fade">
                            <br>
                            <table class="table table-bordered table-plan3">
                                <thead>
                                <tr>
                                    <th style="text-align: center">ผู้ขาย</th>
                                    <th style="text-align: right">แผน</th>
                                    <th style="text-align: right">เข้าจริง</th>
                                    <th style="text-align: right">ราคา</th>
                                    <th style="text-align: center">-</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php if ($model->isNewRecord): ?>
                                    <tr>
                                        <td>
                                            <select name="line_sup3[]" class="form-control sub" id="">
                                                <?php $sub = \backend\models\Suplier::find()->all(); ?>
                                                <?php foreach ($sub as $data2): ?>
                                                    <?php
                                                    $select = '';
                                                    ?>
                                                    <option value="<?= $data2->id ?>" <?= $select ?>><?= $data2->name ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </td>
                                        <td>
                                            <input type="text" class="form-control line-plan" name="line_plan3[]"
                                                   value="" onchange="cal_plan($(this),3);">
                                        </td>
                                        <td>
                                            <input type="text" class="form-control" name="line_qty3[]" value=""
                                                   readonly>
                                        </td>
                                        <td>
                                            <input type="text" class="form-control" name="line_price3[]" value="">
                                        </td>
                                        <td style="text-align: center">
                                            <i class="fa fa-trash btn-delete-plan3" onclick="removeline3($(this))">
                                            </i>
                                        </td>
                                    </tr>
                                <?php else: ?>
                                <?php $i3 = 0;?>
                                    <?php foreach ($modelline as $val): ?>
                                        <?php if ($val->plan_type == 3): ?>
                                            <?php $i3 +=1; ?>
                                            <tr>
                                                <td>
                                                    <select name="line_sup3[]" class="form-control sub" id="">
                                                        <?php $sub = \backend\models\Suplier::find()->all(); ?>
                                                        <?php foreach ($sub as $data2): ?>
                                                            <?php
                                                            $select = '';
                                                            if ($val->sup_id == $data2->id) $select = 'selected';
                                                            ?>
                                                            <option value="<?= $data2->id ?>" <?= $select ?>><?= $data2->name ?></option>
                                                        <?php endforeach; ?>
                                                    </select>
                                                </td>
                                                <td>
                                                    <input type="text" style="text-align: right"
                                                           class="form-control line-plan"
                                                           name="line_plan3[]" value="<?= $val->plan_qty ?>"
                                                           onchange="cal_plan($(this),3);">
                                                </td>
                                                <td>
                                                    <input type="text" style="text-align: right" class="form-control"
                                                           name="line_qty3[]" value="<?= $val->received_qty ?>"
                                                           readonly>
                                                </td>
                                                <td>
                                                    <input type="text" style="text-align: right" class="form-control"
                                                           name="line_price3[]" value="<?= $val->plan_price ?>">
                                                </td>
                                                <td style="text-align: center">
                                                    <i class="fa fa-trash btn-delete-plan3" onclick="removeline3($(this))">
                                                    </i>
                                                </td>
                                            </tr>
                                        <?php endif; ?>
                                    <?php endforeach; ?>
                                <?php if($i3 == 0): ?>
                                        <tr>
                                            <td>
                                                <select name="line_sup3[]" class="form-control sub" id="">
                                                    <?php $sub = \backend\models\Suplier::find()->all(); ?>
                                                    <?php foreach ($sub as $data2): ?>
                                                        <?php
                                                        $select = '';
                                                        ?>
                                                        <option value="<?= $data2->id ?>" <?= $select ?>><?= $data2->name ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </td>
                                            <td>
                                                <input type="text" class="form-control line-plan" name="line_plan3[]"
                                                       value="" onchange="cal_plan($(this),3);">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" name="line_qty3[]" value=""
                                                       readonly>
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" name="line_price3[]" value="">
                                            </td>
                                            <td style="text-align: center">
                                                <i class="fa fa-trash btn-delete-plan3" onclick="removeline3($(this))">
                                                </i>
                                            </td>
                                        </tr>
                                <?php endif; ?>
                                <?php endif; ?>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <td style="text-align: right;font-weight: bold">รวม</td>
                                    <td style="font-weight: bold;">
                                        <input type="text" class="form-control sum-qty-plan3" style="text-align: right"
                                               readonly value="0">
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                </tfoot>
                            </table>
                            <div class="btn btn-primary btn-add-plan3">เพิ่มรายการ</div>
                        </div>
                        <div id="menu3" class="tab-pane fade">
                            <br>
                            <table class="table table-bordered table-plan4">
                                <thead>
                                <tr>
                                    <th style="text-align: center">ผู้ขาย</th>
                                    <th style="text-align: right">แผน</th>
                                    <th style="text-align: right">เข้าจริง</th>
                                    <th style="text-align: right">ราคา</th>
                                    <th style="text-align: center">-</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php if ($model->isNewRecord): ?>
                                    <tr>
                                        <td>
                                            <select name="line_sup4[]" class="form-control sub" id="">
                                                <?php $sub = \backend\models\Suplier::find()->all(); ?>
                                                <?php foreach ($sub as $data2): ?>
                                                    <?php
                                                    $select = '';
                                                    ?>
                                                    <option value="<?= $data2->id ?>" <?= $select ?>><?= $data2->name ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </td>
                                        <td>
                                            <input type="text" class="form-control line-plan" name="line_plan4[]"
                                                   value="" onchange="cal_plan($(this),4);">
                                        </td>
                                        <td>
                                            <input type="text" class="form-control" name="line_qty4[]" value=""
                                                   readonly>
                                        </td>
                                        <td>
                                            <input type="text" class="form-control" name="line_price4[]" value="">
                                        </td>
                                        <td style="text-align: center">
                                            <i class="fa fa-trash btn-delete-plan4" onclick="removeline4($(this))">
                                            </i>
                                        </td>
                                    </tr>
                                <?php else: ?>
                                   <?php $i4=0;?>
                                    <?php foreach ($modelline as $val): ?>
                                        <?php if ($val->plan_type == 4): ?>
                                            <?php $i4+=1;?>
                                            <tr>
                                                <td>
                                                    <select name="line_sup4[]" class="form-control sub" id="">
                                                        <?php $sub = \backend\models\Suplier::find()->all(); ?>
                                                        <?php foreach ($sub as $data2): ?>
                                                            <?php
                                                            $select = '';
                                                            if ($val->sup_id == $data2->id) $select = 'selected';
                                                            ?>
                                                            <option value="<?= $data2->id ?>" <?= $select ?>><?= $data2->name ?></option>
                                                        <?php endforeach; ?>
                                                    </select>
                                                </td>
                                                <td>
                                                    <input type="text" style="text-align: right"
                                                           class="form-control line-plan"
                                                           name="line_plan4[]" value="<?= $val->plan_qty ?>"
                                                           onchange="cal_plan($(this),4);">
                                                </td>
                                                <td>
                                                    <input type="text" style="text-align: right" class="form-control"
                                                           name="line_qty4[]" value="<?= $val->received_qty ?>"
                                                           readonly>
                                                </td>
                                                <td>
                                                    <input type="text" style="text-align: right" class="form-control"
                                                           name="line_price4[]" value="<?= $val->plan_price ?>">
                                                </td>
                                                <td style="text-align: center">
                                                    <i class="fa fa-trash btn-delete-plan4" onclick="removeline4($(this))">
                                                    </i>
                                                </td>
                                            </tr>
                                        <?php endif; ?>
                                    <?php endforeach; ?>
                                <?php if($i4==0): ?>
                                        <tr>
                                            <td>
                                                <select name="line_sup4[]" class="form-control sub" id="">
                                                    <?php $sub = \backend\models\Suplier::find()->all(); ?>
                                                    <?php foreach ($sub as $data2): ?>
                                                        <?php
                                                        $select = '';
                                                        ?>
                                                        <option value="<?= $data2->id ?>" <?= $select ?>><?= $data2->name ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </td>
                                            <td>
                                                <input type="text" class="form-control line-plan" name="line_plan4[]"
                                                       value="" onchange="cal_plan($(this),4);">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" name="line_qty4[]" value=""
                                                       readonly>
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" name="line_price4[]" value="">
                                            </td>
                                            <td style="text-align: center">
                                                <i class="fa fa-trash btn-delete-plan4" onclick="removeline4($(this))">
                                                </i>
                                            </td>
                                        </tr>
                                <?php endif; ?>
                                <?php endif; ?>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <td style="text-align: right;font-weight: bold">รวม</td>
                                    <td style="font-weight: bold;">
                                        <input type="text" class="form-control sum-qty-plan4" style="text-align: right"
                                               readonly value="0">
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                </tfoot>
                            </table>
                            <div class="btn btn-primary btn-add-plan4">เพิ่มรายการ</div>
                        </div>

                    </div>
                </div>
                <div class="panel-footer">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="btn btn-success btn-form-save pull-right">บันทึกรายการ</div>
                        </div>
                    </div>

                </div>
            </div>
        </form>
    </div>
</div>
<?php
$this->registerCssFile('@web/css/sweetalert.css');
$url_to_copy = Url::to(['purchplan/copyplan'], true);
$js = <<<JS
cal_sum();
$(function() {
    $(".btn-form-save").click(function() {
      $("form#form-plan").submit();
    });
  $(".btn-add-plan1").click(function(){
      var tr = $(".table-plan1 tbody tr:last");
      //if(tr.find(".line_emp_code").val()==""){return;}
      var clone = tr.clone();
      clone.find(":text").val("");
      tr.after(clone);
  });
  $(".btn-add-plan2").click(function(){
      var tr2 = $(".table-plan2 tbody tr:last");
      //if(tr.find(".line_emp_code").val()==""){return;}
      var clone2 = tr2.clone();
      clone2.find(":text").val("");
      tr2.after(clone2);
  });
  $(".btn-add-plan3").click(function(){
      var tr3 = $(".table-plan3 tbody tr:last");
      //if(tr.find(".line_emp_code").val()==""){return;}
      var clone3 = tr3.clone();
      clone3.find(":text").val("");
      tr3.after(clone3);
  });
  $(".btn-add-plan4").click(function(){
      var tr4 = $(".table-plan4 tbody tr:last");
      //if(tr.find(".line_emp_code").val()==""){return;}
      var clone4 = tr4.clone();
      clone4.find(":text").val("");
      tr4.after(clone4);
  });
});

function removeline1(e) {
  if(confirm("Do you want to delete this record ?")){
     if($(".table-plan1 tbody tr").length == 1){
          $(".table-plan1 tbody tr :text").val("");
         // $(".table-plan1 tbody tr td:eq(0)").text("");
     }else{
        e.parent().parent().remove();
     }
     
   }
}
function removeline2(e) {
  if(confirm("Do you want to delete this record ?")){
     if($(".table-plan2 tbody tr").length == 1){
          $(".table-plan2 tbody tr :text").val("");
         // $(".table-plan1 tbody tr td:eq(0)").text("");
     }else{
        e.parent().parent().remove();
     }
     
   }
}
function removeline3(e) {
  if(confirm("Do you want to delete this record ?")){
     if($(".table-plan3 tbody tr").length == 1){
          $(".table-plan3 tbody tr :text").val("");
         // $(".table-plan1 tbody tr td:eq(0)").text("");
     }else{
        e.parent().parent().remove();
     }
     
   }
}
function removeline4(e) {
  if(confirm("Do you want to delete this record ?")){
     if($(".table-plan4 tbody tr").length == 1){
          $(".table-plan4 tbody tr :text").val("");
         // $(".table-plan1 tbody tr td:eq(0)").text("");
     }else{
        e.parent().parent().remove();
     }
     
   }
}
function copy(e){
        //e.preventDefault();
        var plan = "$model->id";
        swal({
              title: "ต้องการสำเนารายการนี้ใช่หรือไม่",
              text: "",
              type: "success",
              showCancelButton: true,
              closeOnConfirm: false,
              showLoaderOnConfirm: true
            }, function () {
              
              $.ajax({
                 type: 'post',
                 dataType: 'html',
                 url: '$url_to_copy',
                 data: {planid: plan},
                 success: function(data){
                     alert(data);
                 }
              });
        });
    }
    
    function cal_plan(e,index){
      var table_id = "table-plan"+index;
      var total = 0;
      $("."+table_id+" tbody>tr").each(function(){
          var qty = $(this).find(".line-plan").val();
          total = total + parseFloat(qty);
      });
      $(".sum-qty-plan"+index).val(parseFloat(total).toFixed(0));
    }
    
    function cal_sum() {
      var x = 4;
      for(var i=1;i<=x;i++){
         // alert();
          var total = 0;
          var table_id = "table-plan"+i;
           $("."+table_id+" tbody>tr").each(function(){
               var qty = $(this).find(".line-plan").val();
               total = total + parseFloat(qty);
            });
           $(".sum-qty-plan"+i).val(parseFloat(total).toFixed(0));
      }
    }
    
JS;
$this->registerJs($js, static::POS_END);
?>
