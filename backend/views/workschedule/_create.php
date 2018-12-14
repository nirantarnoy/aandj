<?php
$orcard = \backend\models\Orchard::find()->all();
$team2 = \backend\models\Team::find()->all();
$product = \backend\models\Product::find()->all();
?>
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-headline">
            <div class="panel-heading">
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
                            <?php foreach ($orcard as $value):?>
                                <tr>
                                    <td></td>
                                    <td style="vertical-align: middle"><?=$value->name?></td>
                                    <td style="vertical-align: middle">ใบรับรอง</td>
                                    <td style="vertical-align: middle"><?=$value->area_size?></td>
                                    <td style="vertical-align: middle"><?=\backend\helpers\OrchardType::getTypeById($value->type_id)?></td>
                                    <td style="vertical-align: middle">
                                        <select name="" class="form-control" id="">
                                            <option value="">-- เลือก --</option>
                                            <?php foreach ($product as $t):?>
                                                <option value="<?=$t->id?>"><?=$t->name?></option>
                                            <?php endforeach;?>
                                        </select>
                                    </td>
                                    <td style="vertical-align: middle">
                                        <select name="" class="form-control" id="">
                                            <option value="">-- เลือกทีมตัด --</option>
                                            <?php foreach ($team2 as $t):?>
                                                <option value="<?=$t->id?>"><?=$t->name?></option>
                                            <?php endforeach;?>
                                        </select>
                                    </td>
                                    <td style="vertical-align: middle">
                                        <div class="input-group date" data-provide="datepicker">
                                            <input type="date" class="form-control" value="2018/12/14">

                                        </div>
                                    </td>
                                    <td style="vertical-align: middle">
                                        <div class="input-group date" data-provide="datepicker">
                                            <input type="date" class="form-control datepicker">
                                        </div>
                                    </td>
                                    <td style="vertical-align: middle">ลักษณะสวน</td>
                                </tr>
                            <?php endforeach;?>
                        </tbody>
                    </table>
                    <div class="btn btn-primary">บันทึก</div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
$js=<<<JS
   $(function() {
        $('.datepicker').datepicker({
            format: 'mm/dd/yyyy',
            startDate: '-3d'
        });
   });
JS;
$this->registerJs($js,static::POS_END);
?>
