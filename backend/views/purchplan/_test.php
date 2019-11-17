<?php

use yii\jui\AutoComplete;
use yii\helpers\Url;

$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'แผนสั่งซื้อ'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $title;

$url_to_search = Url::to(['purchplan/findsub'],true);
$url_to_copy = Url::to(['purchplan/copyplan'],true);

$url_plan = '';

$this->registerJsFile( '@web/js/sweetalert.min.js?V=002',
    ['depends' => [\yii\web\JqueryAsset::className()]],
    static::POS_HEAD
);

$this->registerCss(
        '
        table.table-plan {
          table-layout: fixed; 
          width: 100%;
         // *margin-left: -100px;/*ie7*/
         
        }
        td, th {
          vertical-align: top;
          border-top: 1px solid #ccc;
          padding:10px;
          width:100px;
        }
        th {
        /*  position:absolute;
          *position: relative; /*ie7*/
        /*  left:0; */
          width:100px;
        }
        .hard_left {
          position:absolute;
          *position: relative; /*ie7*/
          left:0; 
          width:100px;
        }
        .next_left {
          position:absolute;
          *position: relative; /*ie7*/
          left:100px; 
          width:100px;
        }
        .next_left_2 {
          position: relative;
          *position: relative; /*ie7*/
          left: 0px; 
         // width:100px;
        }
        .outer {
            position:relative;
            width: 100%;
           // overflow-x: auto;
        }
        .inner {
          overflow-x: scroll;
          overflow-y:visible;
          float: left;
          width:82%; 
          margin-left: 18%;
        }
        '
);

$this->registerCssFile( '@web/css/sweetalert.css');

if($model->isNewRecord){$url_plan="index.php?r=purchplan/testsave";}else{$url_plan="index.php?r=purchplan/updateplan";}

$js=<<<JS
  var idInc = 2;
  var idCol = 1;
  var idTr = 1;
  $(function() {
    $(".plan_qty,.qty,.price").on("keypress keyup blur",function(event){
       $(this).val($(this).val().replace(/[^0-9\.]/g,""));
       if((event.which != 46 || $(this).val().indexOf(".") != -1) && (event.which <48 || event.which >57)){event.preventDefault();}
    });
    $('.btn-add-row').click(function() {
      //  alert();
      var tr = $("table.table-plan tr:last");
      var clone = tr.clone();
      //alert(clone);
      var last_id_row = $("table.table-plan tr:last").attr('class');
     // alert(last_id_row);
      var id_row = last_id_row.split("-");
      //alert(id_row[1]);
      idTr = parseInt(id_row[1]) + 1;
     // clone.find(".plan-type").attr("id","type-"+idTr);
      clone.find(".plan-type").attr("id","type-"+idTr);
      clone.find(".plan-type").attr("name","plan_row_"+idTr+"_type[]");
      clone.find(".rows").val(idTr);
      clone.find(".rows_id").val("");
      tr.after(clone);
      $("table.table-plan tr:last").attr("class",'tr-'+idTr);
      idInc = 2;
      idCol = 1;
      var loop = 3;
      var loop_cnt = 0;
      $("table.table-plan tbody tr:last td").each(function(){
          loop_cnt +=1;
          if(loop_cnt > loop){
              $(this).remove();
          }
          
      });
       $("table.table-plan tbody tr:last").find(".sub").attr("name","plan_row_"+idTr+"_sub_"+idCol+"[]");
       $("table.table-plan tbody tr:last").find(".sub").attr("id","sub-"+idCol);
       $("table.table-plan tbody tr:last").find(".plan_qty").attr("name","plan_row_"+idTr+"_plan_qty_"+idCol+"[]");
       $("table.table-plan tbody tr:last").find(".plan_qty").attr("id","plan_qty-"+idCol);
       $("table.table-plan tbody tr:last").find(".qty").attr("name","plan_row_"+idTr+"_qty_"+idCol+"[]");
       $("table.table-plan tbody tr:last").find(".qty").attr("id","qty-"+idCol);
       $("table.table-plan tbody tr:last").find(".price").attr("name","plan_row_"+idTr+"_price_"+idCol+"[]");
       $("table.table-plan tbody tr:last").find(".price").attr("id","price-"+idCol);
       
       var row_col_lenght = $("table.table-plan tbody tr:last td").length;
      $("table.table-plan tbody tr:last").find(".rows_col").attr("name","row_"+idTr+"_col[]");
      $("table.table-plan tbody tr:last").find(".rows_col").val(row_col_lenght-2);
      
       $(".qty,.plan_qty,.price").on("keypress",function(event){
             $(this).val($(this).val().replace(/[^0-9\.]/g,""));
             if((event.which != 46 || $(this).val().indexOf(".") != -1) && (event.which <48 || event.which >57)){event.preventDefault();}
        });
      
    });
    
  });
  function delline(e){
      e.parent().parent().parent().parent().remove();
    
  }
  function addline(e) {
      var td = e.closest('tr').find('td:last');
      var clone = td.clone();
      //var plantype = $("table.table-plan tr:last").attr("class");
     // alert(plantype);
       if(idCol == 1){idCol =2;}
      var last_id_td = e.parent().parent().parent().parent().attr('class');
       var id_td = last_id_td.split("-");
    //  alert(id_td[1]);
       idTr =id_td[1];
      //clone.find(".sub").attr("name","plan_row[]");
      clone.find(".sub").attr("name","plan_row_"+idTr+"_sub_"+idCol+"[]");
      clone.find(".sub").attr("id","sub-"+idCol);
      clone.find(".plan_qty").attr("name","plan_row_"+idTr+"_plan_qty_"+idCol+"[]");
      clone.find(".plan_qty").attr("id","plan_qty-"+idCol);
      clone.find(".qty").attr("name","plan_row_"+idTr+"_qty_"+idCol+"[]");
      clone.find(".qty").attr("id","qty-"+idCol);
      clone.find(".price").attr("name","plan_row_"+idTr+"_price_"+idCol+"[]");
      clone.find(".price").attr("id","price-"+idCol);
     
      td.after(clone);
      
      var row_col_lenght = $("table.table-plan tbody tr:last td").length;
      $("table.table-plan tbody tr:last").find(".rows_col").attr("name","row_"+idTr+"_col[]");
      $("table.table-plan tbody tr:last").find(".rows_col").val(row_col_lenght-2);
      
      idCol +=1;
}
  function remove(e) {
      var dd = e.parent().parent().parent().attr("class");
       e.parent().parent().remove();
       $("table.table-plan tbody tr").each(function(){
           var x = $(this).attr('class');
           if(x == dd){
               // var td_len = $(this).find("td").length -2;
               var id_td = dd.split("-");
               var i = 0;
               var n = 0;
               $(this).find("td").each(function(){
                   n+=1;
                   if(n >2){
                       i+=1;
                          $(this).find(".sub").attr("name","plan_row_"+id_td[1]+"_sub_"+i+"[]");
                          $(this).find(".sub").attr("id","sub-"+i);
                          $(this).find(".plan_qty").attr("name","plan_row_"+id_td[1]+"_plan_qty_"+i+"[]");
                          $(this).find(".plan_qty").attr("id","plan_qty-"+i);
                          $(this).find(".qty").attr("name","plan_row_"+id_td[1]+"_qty_"+i+"[]");
                          $(this).find(".qty").attr("id","qty-"+i);
                          $(this).find(".price").attr("name","plan_row_"+id_td[1]+"_price_"+i+"[]");
                          $(this).find(".price").attr("id","price-"+i);
                   }
               });
               $(this).find(".rows_col").val(i);
               
           }
       });
       
       
     // alert(dd);
  }
  
  function chk_num(e){
   e.on("keypress keyup blur",function(event){
       $(this).val($(this).val().replace(/[^0-9\.]/g,""));
       if((event.which != 46 || $(this).val().indexOf(".") != -1) && (event.which <48 || event.which >57)){event.preventDefault();}
    });
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
JS;
$this->registerJs($js,static::POS_END);

$sub = \backend\models\Suplier::find()->all();
?>
<div class="prodrec-form">
    <div class="panel panel-headlin">
<div class="panel-heading">
  <i class="fa fa-calendar-check-o"> แผนซื้อประจำวันที่</i> <?=$model->isNewRecord?date('d-m-Y'):date('d-m-Y',$model->plan_date)?>
    <?php if(!$model->isNewRecord):?>
    <div class="btn btn-default btn-copy" onclick="copy($(this));"><i class="fa fa-copy"></i> copy </div>
    <?php endif;?>
</div>
        <div class="panel-body">
<form action="<?=$url_plan?>" method="post">
    <div class="outer">
        <div class="inner">
        <table class="table-plan">
        <tbody>

        <?php if($model->isNewRecord):?>
        <tr class="tr-1">
            <input type="hidden" class="rows" name="row[]" value="1">
            <input type="hidden" class="rows_col" name="row_1_col[]" value="1">
            <td style="width: 10%;" class="hard_left">
                <div class="row">
                    <select name="plan_row_1_type[]" id="plan-1" class="form-control plan-type" style="left: -10px;">
                        <?php $raw = \backend\models\Product::find()->all()  ?>
                        <?php foreach($raw as $data):?>
                            <option value="<?=$data->id?>"><?=$data->name?></option>
                        <?php endforeach;?>
                    </select>

                    <br>
                    <div class="row" style="text-align: center;">
                        <div class="btn btn-sm btn-success" onclick="addline($(this));"><i class="fa fa-plus-circle"></i></div>
                    </div>
                    <br>
                    <div class="row" style="text-align: center;">
                        <div class="btn btn-sm btn-danger" onclick="delline($(this));">ลบ</div>
                    </div>
                </div>
            </td>
            <td class="next_left">
                <div class="row">
                    <input type="text" disabled class="form-control" value="ผู้ขาย">
                </div>
                <div class="row">
                    <input type="text" disabled class="form-control" value="แผน">
                </div>
                <div class="row">
                    <input type="text" disabled class="form-control" value="เข้าจริง">
                </div>
                <div class="row">
                    <input type="text" disabled class="form-control" value="ราคา">
                </div>

            </td>
            <td style="width: 150px;" class="pull-left">
                <div class="row">
<!--                    <input type="text" name="plan-1-1sup[]" class="form-control sub">-->
                    <select name="plan_row_1_sub_1[]" class="form-control sub" id="">
                        <?php foreach($sub as $data2):?>
                        <option value="<?=$data2->id?>"><?=$data2->name?></option>
                        <?php endforeach;?>
                    </select>
                </div>
                <div class="row">
                    <input type="text" name="plan_row_1_plan_qty_1[]" class="form-control plan_qty">
                </div>
                <div class="row">
                    <input type="text" name="plan_row_1_qty_1[]" class="form-control qty" onkeypress="chk_num($(this));">
                </div>
                <div class="row">
                    <input type="text" name="plan_row_1_price_1[]" class="form-control price">
                </div>
                <div class="row">
                    <div class="btn btn-remove" onclick="remove($(this));"><i class="fa fa-trash-o"></i> </div>
                </div>
            </td>

        </tr>
        <?php else:?>
           <?php $type = 0;?>
               <?php for($i=0;$i<=count($modelrow)-1;$i++):?>
                <tr class="tr-<?=$i+1?>">
                    <input type="hidden" class="rows" name="row[]" value="1">
                    <?php
                       $row_col_count = 0;
                       foreach($modelline as $val){
                           if($modelrow[$i]['plan_type'] == $val->plan_type){$row_col_count +=1;}
                       }
                    ?>
                    <input type="hidden" class="rows_col" name="row_<?=$i+1?>_col[]" value="<?=$row_col_count?>">

                    <input type="hidden" class="planid" name="planid" value="<?=$model->id;?>">

                    <td style="width: 10%;" class="hard_left">
                        <div class="row">
                            <select name="plan_row_<?=$i+1?>_type[]" id="plan-1" class="form-control plan-type" style="left: -10px;">
                                <?php $raw = \backend\models\Product::find()->all()  ?>
                                <?php foreach($raw as $data):?>
                                    <?php
                                    $select = '';
                                    if($modelrow[$i]['plan_type'] == $data->id){$select = 'selected';}
                                    ?>
                                    <option value="<?=$data->id?>" <?=$select?>><?=$data->name?></option>
                                <?php endforeach;?>
                            </select>

                            <br>
                            <div class="row" style="text-align: center;">
                                <div class="btn btn-success" onclick="addline($(this));"><i class="fa fa-plus-circle"></i></div>
                            </div>
                            <br>
                            <div class="row" style="text-align: center;">
                                <div class="btn btn-danger" onclick="delline($(this));">ลบ</div>
                            </div>
                        </div>
                    </td>
                    <td class="next_left">
                        <div class="row">
                            <input type="text" disabled class="form-control" value="ผู้ขาย">
                        </div>
                        <div class="row">
                            <input type="text" disabled class="form-control" value="แผน">
                        </div>
                        <div class="row">
                            <input type="text" disabled class="form-control" value="เข้าจริง">
                        </div>
                        <div class="row">
                            <input type="text" disabled class="form-control" value="ราคา">
                        </div>

                    </td>
                    <?php $nums = 0;?>
                    <?php foreach ($modelline as $data): ?>
                    <?php if($data->plan_type === $modelrow[$i]['plan_type']):?>
                            <?php $nums +=1;?>
                    <td style="width: 150px;" class="pull-left">
                        <div class="row">
                            <!--                    <input type="text" name="plan-1-1sup[]" class="form-control sub">-->
                            <select name="plan_row_<?=$i+1?>_sub_<?=$nums?>[]" class="form-control sub" id="">
                                <?php foreach($sub as $data2):?>
                                    <?php
                                       $select = '';
                                       if($data->sup_id == $data2->id ){$select = 'selected';}
                                    ?>
                                    <option value="<?=$data2->id?>" <?=$select?>><?=$data2->name?></option>
                                <?php endforeach;?>
                            </select>
                            <input type="hidden" class="rows_id" name="row_id[]" value="<?=$data->id?>">

                        </div>
                        <div class="row">
                            <input type="text" name="plan_row_<?=$i+1?>_plan_qty_<?=$nums?>[]" class="form-control plan_qty" value="<?=$data->plan_qty?>">
                        </div>
                        <div class="row">
                            <input type="text" name="plan_row_<?=$i+1?>_qty_<?=$nums?>[]" class="form-control qty" onkeypress="chk_num($(this));" value="<?=$data->received_qty?>">
                        </div>
                        <div class="row">
                            <input type="text" name="plan_row_<?=$i+1?>_price_<?=$nums?>[]" class="form-control price" value="<?=$data->plan_price?>">
                        </div>
                        <div class="row">
                            <div class="btn btn-remove" onclick="remove($(this));"><i class="fa fa-trash-o"></i> </div>
                        </div>
                    </td>
                    <?php endif;?>
                  <?php endforeach;?>
                </tr>
           <?php endfor;?>
        <?php endif;?>
        </tbody>
    </table>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-lg-12">
            <div class="btn btn-primary btn-add-row"> เพิ่มประเภท</div>
            <input type="submit" value="บันทึกแผน" class="btn btn-success">
        </div>
    </div>
</form>
        </div>
    </div>
</div>

