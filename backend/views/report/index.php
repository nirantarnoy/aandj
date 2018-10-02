<?php
use kartik\date\DatePicker;
use yii\helpers\Url;
?>
    <div class="panel panel-headline">
        <div class="panel-heading">
             <h3><i class="fa fa-bar-chart"></i> รายงาน</h3>
            <div class="clearfix"></div>
        </div>
        <div class="panel-body">
           <div class="row">
               <div class="col-lg-12">
                   <div class="list-group">
                       <button type="button" class="list-group-item"><i class="fa fa-list-alt text-primary"></i> รายงานบันทึกยอดรับเข้าควั่นประจำวัน</button>
                       <button type="button" class="list-group-item"><i class="fa fa-list-alt"></i> ....</button>
                       <button type="button" class="list-group-item"><i class="fa fa-list-alt"></i> .....</button>
                       <button type="button" class="list-group-item"><i class="fa fa-list-alt"></i> .......</button>
                       <button type="button" class="list-group-item"><i class="fa fa-list-alt"></i> .........</button>
                   </div>
               </div>
           </div>
        </div>
        </div>

<div id="filterModal" class="modal fade" role="dialog">
    <div class="modal-dialog modal-md">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"><i class="fa fa-question-circle text-primary"></i> เงือนไขการดูรายงาน <small id="items"> </small></h4>
            </div>
            <div class="modal-body">
                <form id="form-print" action="<?=Url::to(['productionrec/print'],true)?>" method="post" target="_blank">
                <input type="hidden" name="line_qc_product" class="line_qc_product" value="">
                <input type="hidden" name="line_qc_zone" class="line_qc_zone" value="">
                <input type="hidden" name="line_qc_lot" class="line_qc_lot" value="">
                <input type="hidden" name="line_qc_qty" class="line_qc_qty" value="">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <?php
                             echo "<label>รหัสสินค้า</label>";
                             echo \kartik\select2\Select2::widget([
                                     'name'=>'selected_product',
                                'data'=>\yii\helpers\ArrayHelper::map(\backend\models\Product::find()->all(),'id','name'),
                                'options' => ['placeholder'=>'เลือกรหัสสินค้า'],
                                 'pluginOptions' => [
                                         'allowClear'=>true,
                                 ]
                             ]);
                            ?>
                        </div>

                    </div>

                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="exampleInputEmail1">ตัดวันที่</label>
                            <?php
                            echo DatePicker::widget([
                                'name'=>'from_date',
                                'options'=>['class'=>'from-date'],
                                'value' => date('d-m-Y'),
                                'pluginOptions' => [
                                    'format'=>'dd-mm-yyyy',
                                ]
                            ])
                            ?>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="exampleInputEmail1">ถึงวันที่</label>
                            <?php
                            echo DatePicker::widget([
                                'name'=>'to_date',
                                'options'=>['class'=>'to-date'],
                                'value' => date('d-m-Y'),
                                'pluginOptions' => [
                                    'format'=>'dd-mm-yyyy',
                                ]
                            ])
                            ?>
                        </div>
                    </div>
                </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success btn-print-report"><i class="fa fa-print"></i> พิมพ์</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">ยกเลิก</button>
            </div>
        </div>

    </div>
</div>

<?php
$js=<<<JS
   $(function() {
      $(".list-group-item").click(function() {
        $("#filterModal").modal("show");
      });
      
      $(".btn-print-report").click(function() {
          $("#form-print").submit();
          $("#filterModal").modal("hide");
          //alert();
      });
      
   })
JS;
$this->registerJs($js,static::POS_END);
?>