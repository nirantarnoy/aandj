<?php

use yii\helpers\Url;

$orcard = \backend\models\Orchard::find()->all();
$team2 = \backend\models\Team::find()->all();
$product = \backend\models\Product::find()->all();

$url = $model->isNewRecord?'cuttable/cutcreate':'cuttable/cutupdate';

$this->title = 'สร้างตารางตัดมะพร้าว';
$this->params['breadcrumbs'][] = ['label' => 'จัดตาราง', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <form action="<?=Url::to([$url],true)?>" method="post" id="form-cut">
        <input type="hidden" name="cut_id" value="<?=$model->id?>">
    <div class="col-lg-12">
        <div class="panel panel-headline">
            <div class="panel-heading">
                <h2>ตารางจัดการตัดมะพร้าว</h2>
            </div>
                <div class="panel-body">
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th style="vertical-align: middle;text-align: center">จำนวนวัน</th>
                            <th style="vertical-align: middle;text-align: center">ชื่อสวน</th>
                            <th style="vertical-align: middle;text-align: center">ใบรับรอง</th>
                            <th style="vertical-align: middle;text-align: center">ขนาดไร่</th>
                            <th style="vertical-align: middle;text-align: center">ประเภทสวน</th>
                            <th style="vertical-align: middle;text-align: center">ประเภทต้น</th>
                            <th style="vertical-align: middle;text-align: center">ทีมตัด</th>
                            <th style="vertical-align: middle;text-align: center">วันตัด</th>
                            <th style="vertical-align: middle;text-align: center">กำหนดตัดครั้งหน้า</th>
                            <th style="vertical-align: middle;text-align: center">ลักษณะสวน</th>
                        </tr>
                        </thead>
                        <tbody>
                            <?php if($model->isNewRecord):?>
                            <?php $idx = 0;?>
                            <?php foreach ($orcard as $value):?>
                                    <?php $idx +=1;?>
                                <tr>
                                    <td style="background-color: greenyellow;text-align: center;vertical-align: middle"><b>25</b></td>
                                    <td style="vertical-align: middle">
                                        <input type="hidden" class="orchard_id" name="orcard_id[]" value="<?=$value->id?>">

                                        <?=$value->name?>
                                    </td>
                                    <td style="vertical-align: middle">
                                        <?php
                                           $x = explode(',',$value->standard);
                                           $list_stand ='';
                                          if(count($x)>1){
                                              for($i=0;$i<=count($x)-1;$i++){
                                                    $list_stand.= \backend\helpers\StandardType::getTypeById($x[$i]).",";
                                              }
                                          }
                                          echo $list_stand;

                                        ?>
                                    </td>
                                    <td style="vertical-align: middle;text-align: center"><?=$value->area_size?></td>
                                    <td style="vertical-align: middle"><?=\backend\helpers\OrchardType::getTypeById($value->type_id)?></td>
                                    <td style="vertical-align: middle">
                                        <select name="product[]" class="form-control" id="">
                                            <option value="">-- เลือก --</option>
                                            <?php foreach ($product as $t):?>
                                                <option value="<?=$t->id?>"><?=$t->name?></option>
                                            <?php endforeach;?>
                                        </select>
                                    </td>
                                    <td style="vertical-align: middle">
                                        <select name="team[]" class="form-control" id="">
                                            <option value="">-- เลือกทีมตัด --</option>
                                            <?php foreach ($team2 as $t):?>
                                                <option value="<?=$t->id?>"><?=$t->name?></option>
                                            <?php endforeach;?>
                                        </select>
                                    </td>
                                    <td style="vertical-align: middle">
                                        <div class="input-group date" data-provide="datepicker">
                                            <input type="date" id="cut_date_<?=$idx?>" name="cut_date[]" onchange="date_change($(this))" class="form-control cut_date" value="<?=date('d-m-Y')?>">

                                        </div>
                                    </td>
                                    <td style="vertical-align: middle">
                                        <div class="input-group date" data-provide="datepicker">
                                            <input type="date" id="cut_next_date_<?=$idx?>" name="cut_next_date[]" class="form-control cut_next_date" onchange="nextdate_change($(this))">
                                        </div>
                                    </td>
                                    <td style="vertical-align: middle">
                                        <?=\backend\helpers\OrchardType::getTypeById($value->type_id)?>
                                    </td>
                                </tr>
                            <?php endforeach;?>
                        <?php else:?>
                            <?php $ids = 0;?>
                                <?php foreach ($modelline as $value):?>
                                    <?php $ids +=1;?>
                                    <tr>
                                        <td style="background-color: greenyellow;text-align: center;vertical-align: middle"><b>25</b></td>
                                        <td style="vertical-align: middle">
                                            <input type="hidden" class="orchard_id" name="orcard_id[]" value="<?=$value->orcard_id?>">
                                            <?=\backend\models\Orchard::getName($value->orcard_id)?>
                                        </td>
                                        <td style="vertical-align: middle">
                                            <?php
                                            $modelstand = \backend\models\Orchard::find()->where(['id'=>$value->orcard_id])->one();
                                            $x = explode(',',$modelstand->standard);
                                            $list_stand ='';
                                            if(count($x)>1){
                                                for($i=0;$i<=count($x)-1;$i++){
                                                    $list_stand.= \backend\helpers\StandardType::getTypeById($x[$i]).",";
                                                }
                                            }
                                            echo $list_stand;

                                            ?>
                                        </td>
                                        <td style="vertical-align: middle;text-align: center"><?=\backend\models\Orchard::getAreasize($value->orcard_id)?></td>
                                        <td style="vertical-align: middle"><?=\backend\helpers\OrchardType::getTypeById(\backend\models\Orchard::getType($value->orcard_id))?></td>
                                        <td style="vertical-align: middle">
                                            <select name="product[]" class="form-control" id="">
                                                <option value="">-- เลือก --</option>

                                                <?php foreach ($product as $t):?>
                                                    <?php
                                                    $select = "";
                                                    if($value->product_id == $t->id ){$select = 'selected';}
                                                    ?>
                                                    <option value="<?=$t->id?>" <?=$select?>><?=$t->name?></option>
                                                <?php endforeach;?>
                                            </select>
                                        </td>
                                        <td style="vertical-align: middle">
                                            <select name="team[]" class="form-control" id="">
                                                <option value="">-- เลือกทีมตัด --</option>
                                                <?php foreach ($team2 as $t):?>
                                                    <?php
                                                    $select = "";
                                                    if($value->cut_team == $t->id ){$select = 'selected';}
                                                    ?>
                                                    <option value="<?=$t->id?>" <?=$select?>><?=$t->name?></option>
                                                <?php endforeach;?>
                                            </select>
                                        </td>
                                        <td style="vertical-align: middle">
                                            <div class="input-group date" data-provide="datepicker">
                                                <input type="date" id="cut_date_<?=$ids?>" name="cut_date[]" onchange="date_change($(this))" class="form-control" value="<?=$value->cut_date;?>">

                                            </div>
                                        </td>
                                        <td style="vertical-align: middle">
                                            <div class="input-group date" data-provide="datepicker">
                                                <input type="date" id="cut_next_date_<?=$ids?>" name="cut_next_date[]" class="form-control cut_next_date" value="<?=$value->cut_next_date;?>">
                                            </div>
                                        </td>
                                        <td style="vertical-align: middle">
                                            <?=\backend\helpers\OrchardType::getTypeById(\backend\models\Orchard::getType($value->orcard_id))?>
                                        </td>
                                    </tr>
                                <?php endforeach;?>
                        <?php endif;?>
                        </tbody>
                    </table>
                    <input type="submit" class="btn btn-primary" value="บันทกข้อมูล">
                </div>
        </div>
    </div>
    </form>
</div>
<?php
$url_to_finddays = Url::to(['cuttable/finddays'],true);
$js=<<<JS
   $(function() {
       // $('.datepicker').datepicker({
            //format: 'mm/dd/yyyy',
           // startDate: '-3d'
       // });
        var today = new Date();
        $("input[id^='cut_next_date']").val(today.getFullYear() + '-' + ('0' + (today.getMonth() + 1)).slice(-2) + '-' + ('0' + today.getDate()).slice(-2));
      //  $("input[type='date']").val(today.getFullYear() + '-' + ('0' + (today.getMonth() + 1)).slice(-2) + '-' + ('0' + today.getDate()).slice(-2));
      
       //document.getElementById("theDate").value = today.getFullYear() + '-' + ('0' + (today.getMonth() + 1)).slice(-2) + '-' + ('0' + today.getDate()).slice(-2);
   });
   function date_change(e){
          var cut_next_date = e.closest("tr").find(".cut_next_date").val();
          
          $.ajax({
            'type':'post',
            'dataType':'html',
            'async': false,
            'url': "$url_to_finddays",
            'data':{'id':e.closest('tr').find('.orchard_id').val()},
            'success': function(data) {
               // alert(data);
                var nextday = new Date(e.val());
                nextday.setDate(nextday.getDate() +parseInt(data));
                //alert(nextday);
               e.closest("tr").find(".cut_next_date").val(nextday.getFullYear() + '-' + ('0' + (nextday.getMonth() + 1)).slice(-2) + '-' + ('0' + nextday.getDate()).slice(-2));
            }
          });
        
           var end = new Date();
           var start = new Date(e.val());
           //alert(new Date(e.val()));
           var diff  = new Date(end - start);
           var days  = diff/1000/60/60/24;
           
           if(Math.round(days)>0){
               e.closest("tr").find("td:eq(0)").text(Math.round(days));
               e.closest("tr").find("td:eq(0)").css({'background-color':'red','color':'#FFFFFF','font-weight':'bold'});
           }else{
               e.closest("tr").find("td:eq(0)").text(Math.round(Math.abs(days)));
               e.closest("tr").find("td:eq(0)").css({'background-color':'greenyellow','color':'#778899','font-weight':'bold'});
           }
        
       //if(cut_next_date < e.val()){
          // var today = new Date();
         //  e.val(cut_next_date);
         //  alert('วันที่ตัดครั่งต่อไปต้องมากกว่าวันที่ตัด');
           
      // }else{
          
      // }
   }
   function nextdate_change(e){
       // var cut_date = e.closest("tr").find(".cut_date").val();
       // if(cut_date ==''){
       //     alert('กรุณาใส่ข้อมูลวันที่ตัดด้วยครับ');
       //     e.closest("tr").find("td:eq(0)").text("0");
       //     return;
       // }else if(cut_date > e.val()){
       //     var today = new Date();
       //     e.val(today.getFullYear() + '-' + ('0' + (today.getMonth() + 1)).slice(-2) + '-' + ('0' + today.getDate()).slice(-2));
       //     alert('วันที่ตัดครั่งต่อไปต้องมากกว่าวันที่ตัด');
       //    
       // }
      // alert(cut_date);
   }
JS;
$this->registerJs($js,static::POS_END);
?>
