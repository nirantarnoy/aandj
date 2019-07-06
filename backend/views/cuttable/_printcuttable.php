<?php
?>
<div class="row">
    <div class="col-lg-12">
        <h1>ตารางตัดมะพร้าว</h1>
    </div>
</div>
<div class="row">
<div class="col-lg-12">
    <table style="border: 1px solid gray;width: 100%;border-collapse: collapse">
        <thead>
        <tr>
            <td style="border: 1px solid gray;font-size: 12px;font-weight: bold;padding: 5px 5px 5px 5px">สวน</td>
            <td style="border: 1px solid gray;font-size: 12px;font-weight: bold;padding: 5px 5px 5px 5px">ใบรับรอง</td>
            <td style="border: 1px solid gray;font-size: 12px;font-weight: bold;padding: 5px 5px 5px 5px">ขนาดไร่</td>
            <td style="border: 1px solid gray;font-size: 12px;font-weight: bold;padding: 5px 5px 5px 5px">ประเภทสวน</td>
            <td style="border: 1px solid gray;font-size: 12px;font-weight: bold;padding: 5px 5px 5px 5px">ประเภทมะพร้าว</td>
            <td style="border: 1px solid gray;font-size: 12px;font-weight: bold;padding: 5px 5px 5px 5px">วันตัด</td>
            <td style="border: 1px solid gray;font-size: 12px;font-weight: bold;padding: 5px 5px 5px 5px">วันตัดครั้งต่อไป</td>
            <td style="border: 1px solid gray;font-size: 12px;font-weight: bold;padding: 5px 5px 5px 5px">จำนวนวัน</td>
        </tr>
        </thead>
        <?php if(count($modelline)):?>
        <?php foreach($modelline as $value):?>
        <tr>
            <td style="border: 1px solid gray;font-size: 12px;padding: 5px 5px 5px 5px"><?=\backend\models\Orchard::getName($value->orcard_id)?></td>
            <td style="border: 1px solid gray;font-size: 12px;padding: 5px 5px 5px 5px"><?=\backend\models\Orchard::findStandard($value->orcard_id)?></td>
            <td style="border: 1px solid gray;font-size: 12px;padding: 5px 5px 5px 5px"><?=\backend\models\Orchard::getAreasize($value->orcard_id)?></td>
            <td style="border: 1px solid gray;font-size: 12px;padding: 5px 5px 5px 5px"><?=\backend\models\Orchard::findTypename($value->orcard_id)?></td>
            <td style="border: 1px solid gray;font-size: 12px;padding: 5px 5px 5px 5px"><?=\backend\models\Product::findName($value->product_id)?></td>
            <td style="border: 1px solid gray;font-size: 12px;padding: 5px 5px 5px 5px"><?=date('d-m-Y',strtotime($value->cut_date))?></td>
            <td style="border: 1px solid gray;font-size: 12px;padding: 5px 5px 5px 5px"><?=date('d-m-Y',strtotime($value->cut_next_date))?></td>
            <td style="border: 1px solid gray;font-size: 12px;padding: 5px 5px 5px 5px"><?=date('d-m-Y') - date('d-m-Y',strtotime($value->cut_date))?></td>
        </tr>
        <?php endforeach;?>
        <?php endif;?>
        <tbody>

        </tbody>
    </table>
</div>
</div>
