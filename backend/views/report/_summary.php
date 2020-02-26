<?php
?>
<div class="table-responsive" style="background-color: #FFFFFF">
    <table class="table table-bordered">
        <thead>
        <tr>
            <th colspan="33" style="text-align: center">
                <h3><b>สรุปข้อมูลจ่ายเงินพ่อค้า รอบวันที่ <?=date('d/m/Y',strtotime($from_date))?> - <?=date('d/m/Y',strtotime($to_date))?></b></h3>
            </th>
        </tr>
        <tr>
            <th colspan="9" style="text-align: center;color: red;border-right: 1px solid black">
                ข้อมูลส่งลูกเขียวพ่อค้า
            </th>
            <th colspan="9" style="text-align: center;color: green;border-right: 1px solid black">ข้อมูลผลิต</th>
            <th style="border-right: 1px solid black;background-color: pink">เสียทิ้ง</th>
            <th colspan="7" style="text-align: center;color: black;border-right: 1px solid black">สรุปข้อมูล</th>
            <th colspan="6" style="text-align: center;color: red">ตีราคา</th>
        </tr>
        <tr>
            <th style="font-size: 14px;">วันที่</th>
            <th>เลขบิล</th>
            <th>พ่อค้า</th>
            <th>ชื่อสวน</th>
            <th>ประเภท</th>
            <th>เลขกอง</th>
            <th>ยอดส่ง</th>
            <th>ความเห็นQC</th>
            <th style="border-right: 1px solid black">ทีมขน</th>

            <th>ควั่น(ใหญ่ดี)</th>
            <th>ควั่น(เล็ก)</th>
            <th>ควั่น(ขี้กาก)</th>
            <th>หัวโต(ใหญ่ดี)</th>
            <th>หัวโต(หัวแหลม)</th>
            <th>หัวโต(ขี้กาก)</th>
            <th>เจีย(ใหญ่)</th>
            <th>เจีย(ตกไซต์)</th>
            <th style="border-right: 1px solid black">เจีย(แก่)</th>

            <th style="border-right: 1px solid black;background-color: pink">เสียทิ้ง(ไม่นับ)</th>

            <th>ทำได้</th>
            <th>%</th>
            <th>ขี้กาก</th>
            <th>%</th>
            <th>แถม/ขาด</th>
            <th>%</th>
            <th style="border-right: 1px solid black">รวม</th>

            <th>หัก</th>
            <th>ลูกจ่าย</th>
            <th>ลูกจ่ายเล็ก</th>
            <th>ราคา</th>
            <th>ราคาลูกเล็ก</th>
            <th>เป็นเงิน</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($model as $val): ?>
            <tr>
                <td><?=$val->trans_date?></td>
                <td><?=$val->journal_no?></td>
                <td><?=$val->supplier_name?></td>
                <td>ชื่อสวน</td>
                <td>ประเภท</td>
                <td style="color: red"><?=$val->zone_name?></td>
                <td><?=number_format($val->qty)?></td>
                <td></td>
                <td style="border-right: 1px solid black"></td>

                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td style="border-right: 1px solid black">0</td>

                <td style="border-right: 1px solid black;background-color: pink">0</td>

                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td>0</td>
                <td style="border-right: 1px solid black">0</td>

                <td style="background-color: darkseagreen"><input type="text" class="form-control"
                                                                  style="width: 100px;"></td>
                <td style="background-color: darkseagreen"><input type="text" class="form-control"
                                                                  style="width: 100px;"></td>
                <td style="background-color: darkseagreen"><input type="text" class="form-control"
                                                                  style="width: 100px;"></td>
                <td style="background-color: darkseagreen"><input type="text" class="form-control"
                                                                  style="width: 100px;"></td>
                <td style="background-color: darkseagreen"><input type="text" class="form-control"
                                                                  style="width: 100px;"></td>
                <td><input type="text" class="form-control" style="width: 100px;" readonly></td>
            </tr>
        <?php endforeach; ?>
        </tbody>
    </table>

</div>
<br>
<div class="container">
    <div class="btn btn-success">ยืนยัน</div>
</div>
