<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use kartik\date\DatePicker;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $model backend\models\Invoice */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="invoice-form">
    <div class="panel panel-headlin">
        <div class="panel-heading">
            <form id="form-bill" action="<?=Url::to(['invoice/bill'],true)?>" method="post" target="_blank">
                <input type="hidden" class="listid" name="listid" value="">
            </form>
            <div class="btn btn-default btn-print"><i class="fa fa-print"></i> พิมพ์ใบเสร็จ </div>
        </div>
        <div class="panel-body">
            <?php $form = ActiveForm::begin(); ?>

            <div class="row">
                <div class="col-lg-2">
                    <?= $form->field($model, 'invoice_no')->textInput(['maxlength' => true,'placeholder'=>'เลขที่','readonly'=>'readonly','value'=>$model->isNewRecord?$runno:$model->invoice_no]) ?>
                </div>
                <div class="col-lg-3">
                    <?php $model->invoice_date = $model->isNewRecord?date('d-m-Y'):date('d-m-Y',$model->invoice_date); ?>
                    <?= $form->field($model, 'invoice_date')->widget(DatePicker::className(),[
                            'pluginOptions' => [
                                    'format'=>'dd-mm-yyyy'
                            ]
                    ]) ?>
                </div>
                <div class="col-lg-3">
                    <?= $form->field($model, 'suplier_id')->widget(Select2::className(),[
                            'data'=>ArrayHelper::map(\backend\models\Suplier::find()->all(),'id','name'),
                            'options'=>['placeholder'=>'รหัสผู้ขาย',
                                 'onchange'=>'
                                     $.ajax({
                                        type: "post",
                                        dataType : "json",
                                        url : "'.Url::to(['invoice/showsup'],true).'",
                                        data : {id:$(this).val()},
                                        success : function(data){
                                           $(".sup_name").val(data[0]["name"]);
                                           $(".sup_taxid").val(data[0]["id_card"]);
                                           $(".sup_tel").val(data[0]["tel"]);
                                           $(".sup_address").val(data[0]["address"]);
                                        }
                                     });
                                     
                                 '
                            ]
                    ]) ?>
                </div>
                <div class="col-lg-4"><br>
                    <input type="text" style="margin-top: 1px" name="sup_name" class="form-control sup_name" placeholder="ชื่อผู้ขาย" value="<?=\backend\models\Suplier::findName($model->suplier_id)?>">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-5">

                </div>
                <div class="col-lg-3">
                    <input type="text" style="margin-top: -10px" class="form-control sup_taxid" name="tel" value="<?=\backend\models\Suplier::findTaxid($model->suplier_id)?>" placeholder="เลขที่เสียภาษี">

                </div>
                <div class="col-lg-4">
                    <textarea name="sup_address" style="margin-top: -10px" id="" class="form-control sup_address" placeholder="ที่อยู่" cols="30" rows=""><?=\backend\models\AddressBook::findAddress($model->suplier_id)?></textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-5">

                </div>
                <div class="col-lg-3">
                    <input type="text" style="margin-top: -12px" class="form-control sup_tel" name="tel" value="<?=\backend\models\Suplier::findTel($model->suplier_id)?>" placeholder="เบอร์โทร">
                </div>
                <div class="col-lg-4">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-lg-12">
                    <table class="table table-line">
                        <thead style="background: #c3c3c3">
                        <tr>
                            <th style="text-align: center;">#</th>
                            <th style="text-align: center">วันที่</th>
                            <th>เลขบิล</th>
                            <th>ชื่อผู้ส่ง</th>
                            <th>ประเภทสินค้า</th>
                            <th style="text-align: right">จำนวนส่ง(ลูก)</th>
                            <th style="text-align: right">หัก(ลูก)</th>
                            <th style="text-align: right">ราคา</th>
                            <th style="text-align: right">จำนวนเงินจ่าย(บาท)</th>
                            <th>หมายเหตุ</th>
                        </tr>
                        </thead>
                        <tbody>
                          <?php if($model->isNewRecord): ?>
                        <?php else:?>
                          <?php $i=0;?>
                          <?php foreach($modelline as $value):?>
                                  <?php $i+=1;?>
                                  <tr>
                                      <td style="text-align: center"><?php echo $i;?></td>
                                      <td style="text-align: center"><?=date('d-m-Y',$value->trans_date_ref)?></td>
                                      <td><?=\backend\models\Prodrec::findNo($value->prodrec_id)?></td>
                                      <td>-</td>
                                      <td><?= \backend\models\Product::findName($value->product_id)?></td>
                                      <td style="text-align: right"><?=number_format($value->qty,0)?></td>
                                      <td style="text-align: right">0</td>
                                      <td style="text-align: right"><?=number_format($value->price,0)?></td>
                                      <td style="text-align: right">
                                         <?=number_format($value->qty * $value->price,0)?>
                                          <input type="hidden" class="form-control line_amt" value="<?=$value->qty * $value->price?>">
                                      </td>
                                      <td></td>
                                  </tr>
                          <?php endforeach;?>
                        <?php endif;?>
                        </tbody>
                    </table>
                    <br>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-2">
<!--                    <div class="btn btn-primary"><i class="fa fa-plus-circle"></i> เพิ่มรายการ </div>-->
                </div>
                <div class="col-lg-5">
                    <div style="padding: 10px;background-color: #1b6d85;color: #F0F0F0;bottom: -10px;text-align: center">
                        <h2>
                            <?=$model->total_text;?>
                        </h2>
                    </div>
                </div>
                <div class="col-lg-4">
                    <table class="table table-total" style="font-weight: bold">
                        <tr>
                            <td>
                                รวมเป็นเงิน
                            </td>
                            <td class="total" style="text-align: right">
                                0
                            </td>
                        </tr>
                        <tr>
                            <td>
                                หักเบิกวัสดุ
                            </td>
                            <td class="deduct1" style="text-align: right">
                                <?=$model->total_issue?>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                หักเงินเบิกล่วงหน้า
                            </td>
                            <td class="deduct2" style="text-align: right">
                                0
                            </td>
                        </tr>
                        <tr>
                            <td >
                                ยอดรวมสุทธิ
                            </td>
                            <td class="net_total" style="text-align: right">
                                0
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <hr>
            <div class="form-group">
                <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
            </div>

            <?php ActiveForm::end(); ?>
        </div>
   </div>
  </div>
</div>
<?php
  $url_to_print = Url::to(['invoice/bill'],true);
  $js =<<<JS
   $(function() {
      cal();
      
      $(".btn-print").click(function() {
          if($model->id !=""){
              $(".listid").val($model->id);
              $("form#form-bill").submit();
          }
      })
   });
   function cal() {
    var amt = 0;
     $(".table-line tbody tr").each(function() {
         amt = amt + parseFloat($(this).closest("tr").find(".line_amt").val());
        var deduct1 = parseFloat($(".deduct1").text());
        var deduct2 = parseFloat($(".deduct2").text());
        var total = (amt - deduct1 - deduct2);
         
        $(".total").text(amt.toLocaleString());
        $(".net_total").text(total.toLocaleString());
     });
     
   }
JS;

$this->registerJs($js,static::POS_END);

?>