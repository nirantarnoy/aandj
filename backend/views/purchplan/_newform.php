<?php
?>
<div class="row">
    <div class="col-lg-12">
        <div class="panel">
            <div class="panel-heading">
                วางแผนสั่งซ์้อ
            </div>
            <div class="panel-body">
                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#home" style="font-weight: bold">ควั่น</a></li>
                    <li><a data-toggle="tab" href="#menu1" style="font-weight: bold">หัวโต</a></li>
                    <li><a data-toggle="tab" href="#menu2" style="font-weight: bold">เจีย</a></li>
                    <li><a data-toggle="tab" href="#menu2" style="font-weight: bold">เจียสำเร็จ</a></li>
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
                               <tr>
                                   <td>
                                       <select name="line_sup1[]" class="form-control sub" id="">
                                           <?php $sub = \backend\models\Suplier::find()->all();?>
                                           <?php foreach($sub as $data2):?>
                                               <?php
                                               $select = '';
                                               ?>
                                               <option value="<?=$data2->id?>" <?=$select?>><?=$data2->name?></option>
                                           <?php endforeach;?>
                                       </select>
                                   </td>
                                   <td>
                                       <input type="text" class="form-control" name="line_plan1[]" value="">
                                   </td>
                                   <td>
                                       <input type="text" class="form-control" name="line_qty1[]" value="">
                                   </td>
                                   <td>
                                       <input type="text" class="form-control" name="line_price1[]" value="">
                                   </td>
                                   <td style="text-align: center">
                                       <div class="btn btn-danger btn-delete-plan1" onclick="removeline1($(this))">ลบ</div>
                                   </td>
                               </tr>
                            </tbody>
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
                            <tr>
                                <td>
                                    <select name="line_sup2[]" class="form-control sub" id="">
                                        <?php $sub = \backend\models\Suplier::find()->all();?>
                                        <?php foreach($sub as $data2):?>
                                            <?php
                                            $select = '';
                                            ?>
                                            <option value="<?=$data2->id?>" <?=$select?>><?=$data2->name?></option>
                                        <?php endforeach;?>
                                    </select>
                                </td>
                                <td>
                                    <input type="text" class="form-control" name="line_plan2[]" value="">
                                </td>
                                <td>
                                    <input type="text" class="form-control" name="line_qty2[]" value="">
                                </td>
                                <td>
                                    <input type="text" class="form-control" name="line_price2[]" value="">
                                </td>
                                <td style="text-align: center">
                                    <div class="btn btn-danger btn-delete-plan2" onclick="removeline2($(this))">ลบ</div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="btn btn-primary btn-add-plan2">เพิ่มรายการ</div>
                    </div>
                    <div id="menu2" class="tab-pane fade">
                        <h3>Menu 2</h3>
                        <p>Some content in menu 2.</p>
                    </div>
                </div>
            </div>
            <div class="panel-footer">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="btn btn-success pull-right">บันทึกรายการ</div>
                    </div>
                </div>

            </div>
        </div>

    </div>
</div>
<?php
$js=<<<JS
$(function() {
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
JS;
$this->registerJs($js,static::POS_END);
?>
