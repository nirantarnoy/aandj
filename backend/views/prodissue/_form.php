<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use toxor88\switchery\Switchery;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;
/* @var $this yii\web\View */
/* @var $model backend\models\Prodissue */
/* @var $form yii\widgets\ActiveForm */

$zonelist = [];
$modelhaszone = \backend\models\Zoneproduct::find()->where(['status'=>0])->all();
if($modelhaszone){
    foreach($modelhaszone as $data){
        array_push($zonelist,$data->zone_id);
    }
}
$modelzone = \backend\models\Zone::find()->where(['id'=>$zonelist])->all();
$modelsection = \backend\models\Section::find()->all();
$modelemp = \backend\models\Employee::find()->all();
?>


<div class="prodrec-form">
    <div class="panel panel-headlin">
        <div class="panel-heading">
            <h3><i class="fa fa-files-o"></i> <?=$this->title?> <small></small></h3>


            <div class="clearfix"></div>
        </div>
        <div class="panel-body">
    <?php $form = ActiveForm::begin(['options'=>['class'=>'form-label-left']]); ?>
            <div class="row">
                <div class="col-lg-4">
                    <?= $form->field($model, 'issue_no')->textInput(['maxlength' => true,'readonly'=>'readonly','value'=>$model->isNewRecord?$runno:$model->issue_no]) ?>
                </div>
                <div class="col-lg-4">
                    <?php $model->trans_date = $model->isNewRecord?date('d-m-Y'):date('d-m-Y',$model->trans_date)?>
                    <?= $form->field($model, 'trans_date')->widget(\kartik\date\DatePicker::className(),[
                            'pluginOptions' => [
                                    'format'=>'dd-mm-yyyy',
                            ]
                    ]) ?>
                </div>
                <div class="col-lg-4">

                </div>
<!--                <div class="col-lg-4">-->
<!--                    <?php//echo $form->field($model, 'section_id')->widget(\kartik\select2\Select2::className(),[
//                            'data'=>ArrayHelper::map(\backend\models\Section::find()->all(),'id','name'),
//                            'options' => ['placeholder'=>'เลือก',
//                                  'onchange'=>
//                                  '
//                                     $.post("'.Url::to(['prodissue/showemp'],true).'"+"&id="+$(this).val(),function(data){
//                                                $("select#issueby").html(data);
//                                              });
//                                  '
//                                ]
//                    ]) ?>
<!--                </div>-->
            </div>
<!--            <div class="row">-->
<!--                <div class="col-lg-4">-->
<!--                    <?php//echo $form->field($model, 'issue_by')->widget(\kartik\select2\Select2::className(),[
//                        'data'=>ArrayHelper::map(\backend\models\Employee::find()->all(),'id',function($data){
//                            return $data->first_name." ".$data->last_name;
//                        }),
//                        'options' => ['placeholder'=>'เลือก','id'=>'issueby']
//                    ]) ?>
<!--                </div>-->
<!--            </div>-->

          <div class="row">
              <div class="col-lg-12">
                  <table class="table table-line">
                      <thead>
                      <tr style="background: #c3c3c3">
                          <th>แผนก</th>
                          <th>ผู้เบิก</th>
                          <th>กอง</th>
                          <th>lot</th>
                          <th>จำนวน</th>
                          <th style="text-align: left;">หมายเหตุ</th>

                          <th></th>
                        </tr>
                      </thead>
                      <tbody>
                      <?php if($model->isNewRecord):?>
                      <tr>
                          <td>
                              <select name="line_section[]" onchange="section_change($(this))"  class="form-control line_section" id="" style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center;margin-left: -10px">
                                  <option value="">เลือกแผนก</option>
                                  <?php foreach($modelsection as $data):?>
                                      <option value="<?=$data->id?>"><?=$data->name?></option>
                                  <?php endforeach;?>
                              </select>
                          </td>
                          <td>
                              <select name="line_emp[]"  class="form-control line_emp" id="" style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center;margin-left: -10px">
                                  <option value="">เลือกผู้เบิก</option>
                              </select>
                          </td>
                          <td>
                              <select name="zone_id[]" onchange="getzoneinfo($(this))" class="form-control zone_id" id="" style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center">
                                  <option value="">เลือกกอง</option>
                                  <?php foreach($modelzone as $data):?>
                                      <option value="<?=$data->id?>"><?=$data->name?></option>
                                  <?php endforeach;?>
                              </select>
                          </td>
                          <td>
                              <input  id="task-1" class="line_lot"  type="text" name="line_lot[]" style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center" value="">
                          </td>
                          <td>
                              <input  id="task-1" class="line_qty"  type="text" name="line_qty[]" style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: left" value="">
                          </td>

                          <td>
                              <input  id="task-1" class="line_note"  type="text" name="line_note[]" style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: left" value="">
                          </td>
                          <td>
                              <div class="btn btn-danger btn-sm btn-remove-line" onclick="removeline($(this))">ลบ</div>
                          </td>
                      </tr>
                      <?php else:?>
                         <?php if(count($modelline)>0):?>
                          <?php foreach ($modelline as $value):?>
                          <tr>
                              <td>
                                  <select name="line_section[]" onchange="section_change($(this))"  class="form-control line_section" id="" style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center;margin-left: -10px">
                                      <option value="">เลือกแผนก</option>
                                      <?php foreach($modelsection as $data):?>
                                      <?php
                                         $selected = '';
                                         if($value->section_id == $data->id){
                                             $selected = 'selected';
                                         }
                                          ?>
                                          <option value="<?=$data->id?>" <?=$selected?>><?=$data->name?></option>
                                      <?php endforeach;?>
                                  </select>
                              </td>
                              <td>
                                  <select name="line_emp[]"  class="form-control line_emp" id="" style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center;margin-left: -10px">
                                      <option value="">เลือกผู้เบิก</option>
                                      <?php $modelupdateemp = \backend\models\Employee::find()->all();?>
                                      <?php foreach($modelupdateemp as $data):?>
                                          <?php
                                          $selected = '';
                                          if($value->emp_id == $data->id){
                                              $selected = 'selected';
                                          }
                                          ?>
                                          <option value="<?=$data->id?>" <?=$selected?>><?=$data->first_name?></option>
                                      <?php endforeach;?>
                                  </select>
                              </td>
                              <td>
                                  <select name="zone_id[]" onchange="getzoneinfo($(this))" class="form-control zone_id" id="" style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center">
                                      <option value="">เลือกกอง</option>
                                      <?php $modelupdatezone = \backend\models\Zone::find()->all();?>
                                      <?php foreach($modelupdatezone as $data):?>
                                          <?php
                                          $selected = '';
                                          if($value->zone_id == $data->id){
                                              $selected = 'selected';
                                          }
                                          ?>
                                          <?php if($selected!=''):?>
                                          <option value="<?=$data->id?>" <?=$selected?>><?=$data->name?></option>
                                          <?php endif;?>
                                      <?php endforeach;?>
                                  </select>
                              </td>
                              <td>
                                  <input  id="task-1" class="line_lot"  type="text" name="line_lot[]" style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center" value="<?=$value->lot_no?>">
                              </td>
                              <td>
                                  <input  id="task-1" class="line_qty"  type="text" name="line_qty[]" style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: left" value="<?=$value->qty?>">
                              </td>

                              <td>
                                  <input  id="task-1" class="line_note"  type="text" name="line_note[]" style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: left" value="<?=$value->note?>">
                              </td>
                              <td>
                                  <?php if($model->isNewRecord):?>
                                  <div class="btn btn-danger btn-sm btn-remove-line" onclick="removeline($(this))">ลบ</div>
                                  <?php endif;?>
                              </td>
                          </tr>
                          <?php endforeach;?>
                          <?php endif;?>
                      <?php endif;?>
                      </tbody>
                  </table>
                  <?php if($model->isNewRecord):?>
                  <div class="btn btn-primary btn-add"><i class="fa fa-plus-circle"></i> เพิ่มรายการ </div>
                  <?php endif;?>
              </div>
          </div>
<!--            <div class="row">-->
<!--                <div class="col-lg-6">-->
<!--                    <?php //echo  $form->field($model, 'note')->textarea(['maxlength' => true]) ?>
<!--                </div>-->
<!--            </div>-->

            <br>

    <div class="ln_solid"></div>
            <?php if($model->isNewRecord):?>
                <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
            <?php endif;?>
            <?php if(!$model->isNewRecord && $model->status !=2):?>
                <div class="btn btn-danger btn-cancel">ยกเลิกรายการ</div>
            <?php endif;?>



    <?php ActiveForm::end(); ?>

</div>
    </div>
<?php
$this->registerJsFile( '@web/js/sweetalert.min.js?V=002',
    ['depends' => [\yii\web\JqueryAsset::className()]],
    static::POS_HEAD
);
$this->registerCssFile( '@web/css/sweetalert.css');
$url_to_cancel = Url::to(['prodissue/cancel'],true);
$this->registerJs('
   $(function(){
       $(".btn-cancel").click(function(){
         swal({
                  title: "ต้องการลบรายการนี้ใช่หรือไม่",
                  text: "",
                  type: "warning",
                  showCancelButton: true,
                  closeOnConfirm: false,
                  showLoaderOnConfirm: true
                }, function () {
                         $.ajax({
                           dataType: "html",
                           type: "post",
                           url: "'.$url_to_cancel.'",
                           data: {id:"'.$model->id.'"},
                           success: function(data){
                           }
                         });
                 });
       });
       $(".btn-add").click(function(){
      
              var linenum = 0;
              var $tr = $(".table-line tbody tr:last");
              if($tr.find(".line_product").val()==""){
                  alert("ข้อมูลสินค้าต้องไม่ว่าง กรุณาตรวจสอบใหม่");
                       return;
              }
              if($tr.find(".line_qty").val()==""){
                  alert("กรุณาใส่จำนวน");
                       return;
              }
              var $clone = $tr.clone();
              $clone.find(":text").val("");
              $clone.find(".line_lot").val("");
              $clone.find(".line_emp").val("").trigger("change");
            
            $clone.find(".line_qty").on("keypress",function(event){
                   $(this).val($(this).val().replace(/[^0-9\.]/g,""));
                   if((event.which != 46 || $(this).val().indexOf(".") != -1) && (event.which <48 || event.which >57)){event.preventDefault();}
                });
              $tr.after($clone);
              
             });
     $(".line_qty").on("keypress",function(event){
       $(this).val($(this).val().replace(/[^0-9\.]/g,""));
       if((event.which != 46 || $(this).val().indexOf(".") != -1) && (event.which <48 || event.which >57)){event.preventDefault();}
    });
   });
    function removeline(e){
     if(confirm("Do you want to delete this record ?")){
         if($(".table-line tbody tr").length == 1){
             $(".table-line tbody tr :text").val("");
             $(".table-line tbody tr td:eq(0)").text("");
         }else{
            e.parent().parent().remove();
           // cal_linenum();
         }
     }
   }
   function section_change(e){
      $.post("'.Url::to(['prodissue/showemp'],true).'"+"&id="+e.val(),function(data){
          e.closest("tr").find(".line_emp").html(data);
      });
      
//      $.post("'.Url::to(['prodissue/showzone'],true).'"+"&id="+e.val(),function(data){
//          e.closest("tr").find(".zone_id").html(data);
//      });
      
   }
   function getzoneinfo(e){
      $.ajax({
         type: "post",
         dataType: "json",
         url: "'.Url::to(['prodissue/getzoneinfo'],true).'",
         data : {id: e.val()},
         success: function(data){
        // alert(data[0]["lot_no"]);
            e.closest("tr").find(".line_lot").val(data[0]["lot_no"]);
            e.closest("tr").find(".line_qty").val(data[0]["qty"]);
         }
      });
   }
',static::POS_END);
?>
