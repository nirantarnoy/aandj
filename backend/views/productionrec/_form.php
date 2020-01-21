<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use kartik\date\DatePicker;
use toxor88\switchery\Switchery;

/* @var $this yii\web\View */
/* @var $model backend\models\Productionrec */
/* @var $form yii\widgets\ActiveForm */

$this->registerJsFile(
    '@web/jquery-ui-1.12.1/jquery-ui.js?V=001',
    ['depends' => [\yii\web\JqueryAsset::className()]],
    static::POS_END
);
$this->registerCssFile('@web/jquery-ui-1.12.1/jquery-ui.css');

$neworupdate = $model->isNewRecord ? 0 : 1;

$zonelist = [];
$modelhaszone = \backend\models\Zoneproduct::find()->where(['status' => 1])->all(); // 0=ปกติ 1 = เบิกผลิต
if ($modelhaszone) {
    foreach ($modelhaszone as $data) {
        array_push($zonelist, $data->zone_id);
    }
}
$modelzone = \backend\models\Zone::find()->where(['id' => $zonelist])->all();
$modelemp = \backend\models\Employee::find()->all();
$dept = \backend\models\Section::find()->all();

$url_to_find = Url::to(['productionrec/finditem'], true);
$js = <<<JS
 $(function() {
   $(".itemsearch").change(function(){
        if($(this).val()!=''){
            $.ajax({
              'type':'post',
              'dataType': 'json',
              'url': "$url_to_find",
              'data': {'txt': $(this).val()},
              'success': function(data) {
                // alert(data);return;
                 if(data.length == 0){
                      $(".table-list").hide();
                     $(".modal-error").show();
                 }else{
                     $(".modal-error").hide();
                     $(".table-list").show();
                     var html = "";
                     for(var i =0;i<=data.length -1;i++){
                         html +="<tr ondblclick='getitem($(this));'><td>"+data[i]['emp_code']+"</td><td>"+data[i]['first_name']+" "+data[i]['last_name']+"<input type='hidden' class='recid' value='"+data[i]['id']+"'/></td></tr>"
                     }
                     $(".table-list tbody").html(html);
                     
                 }
              }
            });
        }
    });
 });
function findItem(e) {
      currow = e.parent().parent().parent().parent().index();
     // alert(currow);
   
      $("#findModal").modal("show");
       $.ajax({
              'type':'post',
              'dataType': 'json',
              'url': "$url_to_find",
              'data': {'txt': "*"},
              'success': function(data) {
                // alert(data);return;
                 if(data.length == 0){
                      $(".table-list").hide();
                     $(".modal-error").show();
                 }else{
                     $(".modal-error").hide();
                     $(".table-list").show();
                     var html = "";
                     for(var i =0;i<=data.length -1;i++){
                         html +="<tr ondblclick='getitem($(this));'><td>"+data[i]['emp_code']+"</td><td>"+data[i]['first_name']+" "+data[i]['last_name']+"<input type='hidden' class='recid' value='"+data[i]['id']+"'/></td></tr>"
                     }
                     $(".table-list tbody").html(html);
                     
                 }
              }
            });
  }
  function getitem(e) {
    var prodcode = e.closest("tr").find("td:eq(0)").text();
    var prodname = e.closest("tr").find("td:eq(1)").text();
    var prodid = e.closest("tr").find(".recid").val();
    $(".table-line tbody tr").each(function() {
        //alert('niran');
        if($(this).index() == currow){
              $(this).closest('tr').find(".emp_code").val(prodcode);
              $(this).closest('tr').find(".emp_id").val(prodid);
              $(this).closest('tr').find(".emp_code").val(prodname);
        }
    });
    $("#findModal").modal("hide");
  }
JS;
$this->registerJs($js, static::POS_END);

?>

<div class="productionrec-form">
    <div class="panel panel-headline">
        <div class="panel-heading">
            <h3 style="font-weight: bold">รับเข้า<?=$rec_type_name?></h3>
            <input type="hidden" id="create-dept" value="<?=$rec_type_name?>">
        </div>
        <div class="panel-body">
            <?php $form = ActiveForm::begin(); ?>

            <div class="row">
                <div class="col-lg-3">
                    <?= $form->field($model, 'productrec_no')->textInput(['maxlength' => true, 'value' => $model->isNewRecord ? $runno : $model->productrec_no, 'readonly' => 'readonly', 'class' => 'form-control journal_no']) ?>
                </div>
                <div class="col-lg-3">
                    <?php $model->trans_date = $model->isNewRecord ? date('d-m-Y') : date('d-m-Y', $model->trans_date); ?>
                    <?= $form->field($model, 'trans_date')->widget(DatePicker::className(), [
                        'pluginOptions' => [

                        ],
                    ]) ?>
                </div>
<!--                <div class="col-lg-3">-->
<!--                    --><?php ////echo $form->field($model, 'dept_id')->widget(Select2::className(), [
//                        'data' => ArrayHelper::map($dept, 'id', 'name'),
//                        'options' => ['placeholder' => 'เลือก', 'id' => 'dept-id',
//                            'onchange' => '
//                                  var xx = "' . Url::to(['productionrec/findzonedate'], true) . '&id="+$(this).val();
//                                    $.post(xx,function(data){
//                                           $(".zone_date").val(data);
//                                        });
//                                  var findzone = "' . Url::to(['productionrec/findzonebydept'], true) . '&id="+$(this).val();
//                                    $.post(findzone,function(data){
//                                    alert(data);
//                                           $("#zone-id").html(data);
//                                        });
//
//                                  var this_val = $("#dept-id option:checked").text();
//                                  if(this_val == "ควั่น"){
//                                     $("table.table-line thead>tr").each(function(){
//                                        $(this).find(".type-1").show();
//                                        $(this).find(".type-2,.type-3").hide();
//                                     });
//                                  }else if(this_val == "หัวโต"){
//                                     $("table.table-line thead>tr").each(function(){
//                                     $(this).find(".type-2").show();
//                                        $(this).find(".type-1,.type-3").hide();
//                                     });
//                                  }else if(this_val == "ปอกฝาก"){
//                                     $("table.table-line thead>tr").each(function(){
//                                     $(this).find(".type-3").show();
//                                        $(this).find(".type-2,.type-1").hide();
//                                     });
//                                  }
//                                '
//                        ],
//                    ]) ?>
<!--                </div>-->

                <div class="col-lg-3">
                    <?= $form->field($model, 'zone_id')->widget(Select2::className(), [
                        'data' => ArrayHelper::map($modelzone, 'id', 'name'),
                        'options' => ['placeholder' => 'เลือก','id'=>'zone-id',
                            'onchange' => ' 
                                  var xx = "' . Url::to(['productionrec/findzonedate'], true) . '&id="+$(this).val();
                                    $.post(xx,function(data){
                                           $(".zone_date").val(data);                                             
                                        });
                                '
                        ],
                    ]) ?>
                </div>
                <div class="col-lg-3">
                    <?php $model->zone_date = $model->isNewRecord ? date('d-m-Y') : date('d-m-Y', $model->zone_date); ?>
                    <?= $form->field($model, 'zone_date')->textInput(['class' => 'form-control zone_date', 'readonly' => 'readonly']) ?>
                </div>
            </div>
            <div class="row">

                <div class="col-lg-4">
<!--                    --><?php ////echo $form->field($model, 'zone_status')->widget(Select2::className(), [
//                        'data' => ArrayHelper::map([['id' => 1, 'name' => 'ยังไม่ปิดกอง'], ['id' => 2, 'name' => 'ปิดกอง']], 'id', 'name'),
//                    ]) ?>
                    <?= $form->field($model, 'zone_status')->widget(Switchery::className(),['options'=>['label'=>'','class'=>'form-control']])->label('อัพเดทการปิดกอง') ?>
                </div>
                <div class="col-lg-4">
                    <?php //echo $form->field($model, 'all_qty')->textInput() ?>
                </div>

                <br/>
                <br/>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-line">
                            <thead>
                            <tr style="background: #c3c3c3">
                                <th>#</th>
                                <th>พนักงาน</th>
                                <th class="type-1" style="text-align: center">ควั่นใหญ่</th>
                                <th class="type-1" style="text-align: center">ควั่นเล็ก</th>
                                <th class="type-1" style="text-align: center">ขี้กาก</th>
                                <th class="type-1" style="text-align: center">เศษ</th>
                                <th class="type-2" style="text-align: center">หัวโต</th>
                                <th class="type-2" style="text-align: center">หัวแหลม</th>
                                <th class="type-2" style="text-align: center">เฉาะเสีย</th>
                                <th class="type-3" style="text-align: center">ดีใหญ่</th>
                                <th class="type-3" style="text-align: center">ดีเล็ก</th>
                                <th class="type-3" style="text-align: center">แก่</th>
                                <th class="type-3" style="text-align: center">อ่อน</th>
                                <th class="type-3" style="text-align: center">เสียทิ้ง</th>
                                <th style="text-align: center">รวม</th>
                                <th style="text-align: center">-</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php if ($model->isNewRecord): ?>
                                <tr>
                                    <td style="vertical-align: middle">1</td>
                                    <td>
                                        <!--                                       <input type="hidden" class="emp_id" name="emp_id[]" value="">-->
                                        <!--                                       <input  id="task-1" class="line_emp_code" type="text" name="line_emp_code[]" style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: left" value="">-->
                                        <!--                                       <select name="line_emp_code[]" class="form-control" id="">-->
                                        <?php //foreach ($modelemp as $value):?>
                                        <!--                                             <option value="-->
                                        <?php ////echo $value->id?><!--">-->
                                        <?php ////echo $value->first_name.' '.$value->last_name?><!--</option>-->
                                        <?php //endforeach;?>
                                        <!--                                       </select>-->
                                        <div class="input-group">
                                            <input type="text" name="line_emp_code[]" class="form-control emp_code"
                                                   placeholder="ค้นหารหัส..." value="">
                                            <input type="hidden" class="emp_id" name="emp_id[]" value="">
                                            <span class="input-group-btn">
                                    <div class="btn btn-default btn-search-item" onclick="findItem($(this));"><i
                                                class="fa fa-search-plus"></i></div>
                                </span>
                                        </div>
                                    </td>
                                    <td class="type-1">
                                        <input id="task-1" class="line_time_one" onchange="cal_num($(this));"
                                               type="text" name="line_time_one[]"
                                               style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center"
                                               value="">
                                    </td>
                                    <td class="type-1">
                                        <input id="task-1" class="line_time_two" onchange="cal_num($(this));"
                                               type="text" name="line_time_two[]"
                                               style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center"
                                               value="">
                                    </td>
                                    <td class="type-1">
                                        <input id="task-1" class="line_time_three" onchange="cal_num($(this));"
                                               type="text" name="line_time_three[]"
                                               style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center"
                                               value="">
                                    </td>
                                    <td class="type-1">
                                        <input id="task-1" class="line_time_four" onchange="cal_num($(this));"
                                               type="text" name="line_time_four[]"
                                               style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center"
                                               value="">
                                    </td>
                                    <td class="type-2">
                                        <input id="task-1" class="line_time_five" onchange="cal_num($(this));"
                                               type="text" name="line_time_five[]"
                                               style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center"
                                               value="">
                                    </td>
                                    <td class="type-2">
                                        <input id="task-1" class="line_time_six" onchange="cal_num($(this));"
                                               type="text" name="line_time_six[]"
                                               style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center"
                                               value="">
                                    </td>
                                    <td class="type-2">
                                        <input id="task-1" class="line_time_eight" onchange="cal_num($(this));"
                                               type="text" name="line_time_eight[]"
                                               style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center"
                                               value="">
                                    </td>
                                    <td class="type-3">
                                        <input id="task-1" class="line_time_nine" onchange="cal_num($(this));"
                                               type="text" name="line_time_nine[]"
                                               style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center"
                                               value="">
                                    </td>
                                    <td class="type-3">
                                        <input id="task-1" class="line_time_ten" onchange="cal_num($(this));"
                                               type="text" name="line_time_ten[]"
                                               style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center"
                                               value="">
                                    </td>
                                    <td class="type-3">
                                        <input id="task-1" class="line_time_eleven" onchange="cal_num($(this));"
                                               type="text" name="line_time_eleven[]"
                                               style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center"
                                               value="">
                                    </td>
                                    <td class="type-3">
                                        <input id="task-1" class="line_time_twelve" onchange="cal_num($(this));"
                                               type="text" name="line_time_twelve[]"
                                               style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center"
                                               value="">
                                    </td>
                                    <td class="type-3">
                                        <input id="task-1" class="line_time_thirteen" onchange="cal_num($(this));"
                                               type="text" name="line_time_thirteen[]"
                                               style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center"
                                               value="">
                                    </td>
                                    <td class="type-total">
                                        <input readonly id="task-1" class="line_total" type="text" name="line_total[]"
                                               style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: right"
                                               value="">
                                    </td>
                                    <td>
                                        <div class="btn btn-danger btn-sm btn-remove-line"
                                             onclick="removeline($(this))">ลบ
                                        </div>
                                    </td>
                                </tr>
                            <?php else: ?>
                                <?php // print_r($modelline[0][6]);
                                $i = 0;
                                ?>
                                <?php for ($m = 0; $m <= count($modelline) - 1; $m++): ?>
                                    <tr>
                                        <td><?= $i += 1; ?></td>
                                        <td>

                                            <div class="input-group">
                                                <input type="text" name="line_emp_code[]" class="form-control emp_code"
                                                       placeholder="ค้นหารหัส..."
                                                       value="<?= \backend\models\Employee::findFullname($modelline[$m][0]) ?>">
                                                <input type="hidden" class="emp_id" name="emp_id[]"
                                                       value="<?= $modelline[$m][0] ?>">
                                                <input type="hidden" class="line_id" name="line_id[]"
                                                       value="<?php echo $modelline[$m][6] ?>">
                                                <span class="input-group-btn">
                                                 <div class="btn btn-default btn-search-item"
                                                      onclick="findItem($(this));"><i
                                                             class="fa fa-search-plus"></i></div>
                                               </span>
                                            </div>
                                        </td>
                                        <td>
                                            <input id="task-1" class="line_time_one" onchange="cal_num($(this));"
                                                   type="text" name="line_time_one[]"
                                                   style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center"
                                                   value="<?= $modelline[$m][1] ?>">
                                        </td>
                                        <td>
                                            <input id="task-1" class="line_time_two" onchange="cal_num($(this));"
                                                   type="text" name="line_time_two[]"
                                                   style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center"
                                                   value="<?= $modelline[$m][2] ?>">
                                        </td>
                                        <td>
                                            <input id="task-1" class="line_time_three" onchange="cal_num($(this));"
                                                   type="text" name="line_time_three[]"
                                                   style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center"
                                                   value="<?= $modelline[$m][3] ?>">
                                        </td>
                                        <td>
                                            <input id="task-1" class="line_time_four" onchange="cal_num($(this));"
                                                   type="text" name="line_time_four[]"
                                                   style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center"
                                                   value="<?= $modelline[$m][4] ?>">
                                        </td>
                                        <td>
                                            <input id="task-1" class="line_time_five" onchange="cal_num($(this));"
                                                   type="text" name="line_time_five[]"
                                                   style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: center"
                                                   value="<?= $modelline[$m][5] ?>">
                                        </td>
                                        <td>
                                            <input readonly id="task-1" class="line_total" type="text"
                                                   name="line_total[]"
                                                   style="border: none;padding: 5px 5px 5px 5px;width: 100%;background:transparent;text-align: right"
                                                   value="">
                                        </td>
                                        <td>
                                            <div class="btn btn-danger btn-sm btn-remove-line"
                                                 onclick="removeline($(this))">ลบ
                                            </div>
                                        </td>
                                    </tr>
                                <?php endfor; ?>
                            <?php endif; ?>
                            </tbody>

                        </table>
                        <?php if ($model->status != 2): ?>
                            <div class="btn btn-primary btn-add"><i class="fa fa-plus-circle"></i> เพิ่มรายการ</div>
                        <?php endif; ?>
                    </div>
                </div>

            </div>
            <hr>
            <div class="form-group">
                <?php if ($model->status != 2): ?>
                    <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
                <?php endif; ?>
            </div>

            <?php ActiveForm::end(); ?>
        </div>
    </div>

</div>

<div id="findModal" class="modal fade" role="dialog">
    <div class="modal-dialog modal-md">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"><i class="fa fa-search-plus text-primary"></i> ค้นหารหัสพนักงาน</h4>
            </div>
            <div class="modal-body">
                <input type="text" placeholder="ใส่คำค้นแล้วกด Enter" class="form-control itemsearch" name="itemsearch">
                <br>
                <table class="table table-striped table-hover table-list" style="display: none;">
                    <thead>
                    <tr style="background-color: #00b488;color: #FFF;">
                        <th>รหัส</th>
                        <th>ชื่อ</th>
                    </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
                <div class="modal-error" style="display: none;">
                    <i class="fa fa-exclamation-triangle text-danger"> ไม่พบข้อมูล กรุณาลองใหม่อีกครั้ง</i>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success btn-ok" data-dismiss="modal">ตกลง</button>
            </div>
        </div>
    </div>
</div>

<?php
$url_to_search = Url::to(['productionrec/findemp'], true);


$this->registerJs('
   $(function(){
   var create_dept = $("#create-dept").val();
   var findzone = "' . Url::to(['productionrec/findzonebydept'], true) . '&id="+$(this).val();
       $.post(findzone,function(data){
           //  alert(data);
       $("#zone-id").html(data);
   });
   
   var this_val = $("#create-dept").val();
   if(this_val == "ควั่น"){
        $("table.table-line thead>tr , table.table-line tbody>tr").each(function(){
            $(this).find(".type-1").show();
            $(this).find(".type-2,.type-3").hide();
        });
        
   }else if(this_val == "หัวโต"){
        $("table.table-line thead>tr , table.table-line tbody>tr").each(function(){
            $(this).find(".type-2").show();
            $(this).find(".type-1,.type-3").hide();
        });
   }else if(this_val == "ปอกฝาก"){
        $("table.table-line thead>tr , table.table-line tbody>tr").each(function(){
            $(this).find(".type-3").show();
            $(this).find(".type-2,.type-1").hide();
        });
   }
   
   checkDeptType();
   
    var idInc = 2;
    var neworupdate = "' . $neworupdate . '";
    $(".line_emp_code").autocomplete({
        minLength: 1,
        source: function(query,response){
            $.ajax({
            url: "' . $url_to_search . '",
            data: { term: query},
            dataType: "json",
            type: "POST",
            success: function(data) { 
                response($.map(data, function(obj) {
                   // return obj.asset_code;
                  // alert(obj);
                    return {
                        label: obj.first_name,
                        value: obj.first_name,            
                        name: obj.first_name,            
                        id: obj.id 
                    };
                }));
            }

            });
        },
        change: function(event,ui){
           if(ui.item == null){
               alert("ไม่พบพนักงาน");
               $(".line_emp_code").val("");
              $(".line_emp_code").focus();
               return;
            }else{
               $(".line_emp_code").val(ui.item.name);
               $(".emp_id").val(ui.item.id);
               $(".line_qty").focus();
           }
        }
      });
      
      if(neworupdate == 1){
         $("table.table-line tbody tr").each(function(){
             cal_num($(this).closest("tr").find(".line_time_one"));
         });
      }
     
    
      $(".btn-add").click(function(){
      
      var linenum = 0;
      var $tr = $(".table-line tbody tr:last");
      
      if($tr.find(".line_emp_code").val()==""){return;}
      
      var $clone = $tr.clone();
      $clone.find(":text").val("");
      $clone.find(".line_emp_code").attr("id","task-"+idInc);
             $clone.find(".line_emp_code").autocomplete({
                minLength: 1,
                source: function(query,response){
                    $.ajax({
                    url: "' . $url_to_search . '",
                    data: { term: query},
                    dataType: "json",
                    type: "POST",
                    success: function(data) { 
                        response($.map(data, function(obj) {
                            //return obj.asset_code;
                           // alert(obj);
                            return {
                                label: obj.first_name,
                                value: obj.first_name,            
                                name: obj.first_name,            
                                id: obj.id 
                            };
                        }));
                    }
        
                    });
                },
                 change: function(event,ui){
                     if(ui.item == null){
                           alert("ไม่พบพนักงาน");
                           $clone.find(".line_emp_code").val("");
                           $clone.find(".line_emp_code").focus();
                           return;
                        }else{
                        
                           var idn = 0;
                            $("table.table-line tbody tr").each(function(){
                               //alert($(this).find(".line_emp_code").val());
                               if($(this).find(".line_emp_code").val() == ui.item.first_name){
                                   
                                         $clone.find(".line_emp_code").val("");
                                         alert("พนักงานซ้ำ");  
                                         $clone.find(".line_emp_code").focus();                           
                                         return false;
                                   
                               }else{
                               
                                       $clone.find(".line_emp_code").val(ui.item.name);
                                       $clone.find(".emp_id").val(ui.item.id);
                                       $clone.find(".line_qty").focus();
                               }
                            });
                        
                       }
 
                }
            });
      idInc+=1;
      $clone.find(".line_time_one,.line_time_two,.line_time_three,.line_time_four,.line_time_five").on("keypress",function(event){
       $(this).val($(this).val().replace(/[^0-9\.]/g,""));
       if((event.which != 46 || $(this).val().indexOf(".") != -1) && (event.which <48 || event.which >57)){event.preventDefault();}
    });
      $tr.after($clone);
      
      $(".table-line tbody tr").each(function(){
         linenum+=1;
         $(this).closest("tr").find("td:eq(0)").text(linenum);
      });
     });
    $(".line_time_one,.line_time_two,.line_time_three,.line_time_four,.line_time_five").on("keypress",function(event){
       $(this).val($(this).val().replace(/[^0-9\.]/g,""));
       if((event.which != 46 || $(this).val().indexOf(".") != -1) && (event.which <48 || event.which >57)){event.preventDefault();}
    });
    
   });
   function cal_num(e){
   
     var one = e.closest("tr").find(".line_time_one").val();
     var two = e.closest("tr").find(".line_time_two").val();
     var three = e.closest("tr").find(".line_time_three").val();
     var four = e.closest("tr").find(".line_time_four").val();
     var five = e.closest("tr").find(".line_time_five").val();
     
     if(one == ""){one = 0;}
     if(two == ""){two = 0;}
     if(three == ""){three = 0;}
     if(four == ""){four = 0;}
     if(five == ""){five = 0;}
     
     var newqty = parseInt(one) + parseInt(two) + parseInt(three) + parseInt(four) + parseInt(five);
     e.closest("tr").find(".line_total").val("");
     e.closest("tr").find(".line_total").val(parseFloat(newqty).toFixed(0));
   }
    function removeline(e){
   if(confirm("Do you want to delete this record ?")){
     if($(".table-line tbody tr").length == 1){
         $(".table-line tbody tr :text").val("");
         $(".table-line tbody tr td:eq(0)").text("");
     }else{
        e.parent().parent().remove();
        cal_linenum();
     }
     
   }
 }
 function cal_linenum(){
   var xline = 0;
  $(".table-line tbody tr").each(function(){
         xline+=1;
         $(this).closest("tr").find("td:eq(0)").text(xline);
      });
 }
 function checkDeptType(){
    var type = $("#dept-id option:selected").text();
    if(type == "ควั่น"){
         $("table.table-line thead>tr").each(function(){
          $(this).find(".type-1").show();
          $(this).find(".type-2,.type-3").hide();
         });
    }else if(type == "หัวโต"){
          $("table.table-line thead>tr").each(function(){
            $(this).find(".type-2").show();
            $(this).find(".type-1,.type-3").hide();
          });
    }else if(type == "ปอกฝาก"){
          //alert();
           $("table.table-line thead>tr").each(function(){
               $(this).find(".type-3").show();
               $(this).find(".type-2,.type-1").hide();
           });
    }  
 }
 
 
 ', static::POS_END);
?>
