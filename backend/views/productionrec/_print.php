<?php
?>
<div class="row">
    <div class="col-lg-12">
        <table class="table">
            <tr>
                <td>
                    <h2>ใบบันทึกยอดประจำวันที่ <?=$from_date?> ถึง <?=$to_date?></h2>
                </td>
            </tr>
        </table>
        <hr>
        <table class="table">
            <?php for ($i=0;$i<=count($full_data[0]['production_rec_id'])-1;$i++):?>
            <tr>
                <td>

                    <h3>กอง <?=\backend\models\Productionrec::getProdrecZone($full_data[0]['production_rec_id'][$i])?>
                        วันที่กอง <?=date('d-m-Y',\backend\models\Productionrec::getProdrecZoneDate($full_data[0]['production_rec_id'][$i]))?>
                        สถานะ <?=\backend\models\Productionrec::getZoneStatus($full_data[0]['production_rec_id'][$i])!=0?"<span style='color: red;'>ปิดกอง</span>":"<span style='color: green;'>เปิดกอง</span>"?>
                    </h3>
                </td>
            </tr>
            <tr>
                <td width="100%" style="border: 0.1px solid gray;">
                    <table width="100%" style="border-spacing: 0px;">
                        <tr style="background-color: #ccc;font-size:20px;">
                            <td width="20%" style="border: 0.1px solid gray;border-left:none;border-top:none;padding: 10px;text-align: center">ชื่อ</td>
                            <td style="border: 0.1px solid gray;border-top:none;padding: 10px;text-align: center">1</td>
                            <td style="border: 0.1px solid gray;border-top:none;padding: 10px;text-align: center">2</td>
                            <td style="border: 0.1px solid gray;border-top:none;padding: 10px;text-align: center">3</td>
                            <td style="border: 0.1px solid gray;border-top:none;padding: 10px;text-align: center">4</td>
                            <td style="border: 0.1px solid gray;border-top:none;padding: 10px;text-align: center">5</td>
                            <td style="border: 0.1px solid gray;border-top:none;padding: 10px;text-align: center">รวม</td>
                            <td style="border: 0.1px solid gray;border-top:none;padding: 10px;border-right:none;text-align: center">ขี้กาก</td>
                        </tr>
                        <?php $total_qty = 0;?>
                       <?php for($x=0;$x<=count($full_data[0]['data'])-1;$x++):?>
                        <tr>
                            <td style="border: 0.1px solid gray;border-left:none;padding: 10px;"><?=\backend\models\Employee::findName($full_data[0]['data'][$x]['emp_id'])?></td>
                            <?php $line_sum = 0;?>
                            <?php for($m=0;$m<=count($full_data[0]['data'][$x]['trans'])-1;$m++):?>
                            <?php
                                $line_sum+=number_format($full_data[0]['data'][$x]['trans'][$m]['line_qty']);
                                ?>
                            <td style="border: 0.1px solid gray;padding: 10px;"><?=number_format($full_data[0]['data'][$x]['trans'][$m]['line_qty'])?></td>
                            <?php endfor;?>
                            <?php $total_qty+=$line_sum;?>
<!--                            <td style="border: 0.1px solid gray;padding: 10px;">200</td>-->
<!--                            <td style="border: 0.1px solid gray;padding: 10px;">300</td>-->
<!--                            <td style="border: 0.1px solid gray;padding: 10px;">400</td>-->
<!--                            <td style="border: 0.1px solid gray;padding: 10px;">500</td>-->
                            <td style="border: 0.1px solid gray;padding: 10px;"><?=number_format($line_sum)?></td>
                            <td style="border: 0.1px solid gray;border-right:none;padding: 10px;">0</td>
                        </tr>
                        <?php endfor;?>

                    </table>
                    <table width="100%">
                        <tr>
                            <td style="padding: 5px;"><h3>ทำได้  &nbsp;&nbsp;&nbsp; <u style="color: #0b58a2"><?=number_format($total_qty)?></u> &nbsp;&nbsp;&nbsp;   ลูก</h3></td>
                        </tr>
                        <tr>
                            <td style="padding: 5px;"><h3>ขี้กาก &nbsp;&nbsp;&nbsp;   <?=0?>  &nbsp;&nbsp;&nbsp;  ลูก</h3></td>
                        </tr>
                        <tr>
                            <td style="padding: 5px;"><h3>ช้ำ &nbsp;&nbsp;&nbsp;  %</h3></td>
                            <td style="padding: 5px;"><h3>เล็ก &nbsp;&nbsp;&nbsp;  %</h3></td>
                        </tr>
                        <tr>
                            <td style="padding: 5px;"><h3>อ่อน &nbsp;&nbsp;&nbsp;  %</h3></td>
                            <td style="padding: 5px;"><h3>ใหญ่ &nbsp;&nbsp;&nbsp;  %</h3></td>
                        </tr>
                        <tr>
                            <td style="padding: 5px;"><h3>แก่ &nbsp;&nbsp;&nbsp;  %</h3></td>
                            <td style="padding: 5px;"><h3>ปากกา &nbsp;&nbsp;&nbsp; %</h3></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <?php endfor;?>
            <tr>
                <td width="100%">

                </td>
            </tr>
        </table>


    </div>
</div>

