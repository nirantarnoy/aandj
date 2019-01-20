<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use toxor88\switchery\Switchery;
use kartik\select2\Select2;
use kartik\date\DatePicker;
/* @var $this yii\web\View */
/* @var $model backend\models\Orchard */
/* @var $form yii\widgets\ActiveForm */

$treat = \backend\models\Treat::find()->all();

?>

<div class="panel panel-headlin">
    <div class="panel-heading">
        <h3><i class="fa fa-users"></i> <?=$this->title?> <small></small></h3>

        <div class="clearfix"></div>
    </div>
    <div class="panel-body">
        <br />
        <?php $form = ActiveForm::begin(['options'=>['class'=>'form-horizontal form-label-left']]); ?>
        <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">ชื่อสวน <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <?= $form->field($model, 'name')->textInput(['maxlength' => true,'class'=>'form-control'])->label(false) ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">ชื่อผู้ติดต่อ
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <?= $form->field($model, 'contact_name')->textInput(['maxlength' => true,'class'=>'form-control'])->label(false) ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">เลขที่บัตรประชาชน
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <?= $form->field($model, 'id_card')->textInput(['maxlength' => true,'class'=>'form-control'])->label(false) ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">รายละเอียด
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <?= $form->field($model, 'description')->textarea(['maxlength' => true,'class'=>'form-control'])->label(false) ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">ขนาดสวน (ไร่)
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <?= $form->field($model, 'area_size')->textInput(['maxlength' => true,'class'=>'form-control'])->label(false) ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">ประเภทสวน
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <?= $form->field($model, 'type_id')->widget(Select2::className(),[
                        'data'=> \yii\helpers\ArrayHelper::map(\backend\helpers\OrchardType::asArrayObject(),'id','name'),
                        'options'=>['placeholder'=>'เลือก']
                ])->label(false) ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">มาตรฐาน
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <?php
                  if(!$model->isNewRecord){
                      $liststan = explode(',',$model->standard);
                     // print_r($liststan);
                      $model->standard = $liststan;
                  }
                ?>
                <?= $form->field($model, 'standard')->widget(Select2::className(),[
                    'data'=> \yii\helpers\ArrayHelper::map(\backend\helpers\StandardType::asArrayObject(),'id','name'),
                    'options'=>[
                            'placeholder'=>'เลือก',
                            'multiple' => true
                        ]
                ])->label(false) ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">LatLong
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <?= $form->field($model, 'latlong')->textInput(['maxlength' => true,'class'=>'form-control'])->label(false) ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">ทีมตัด
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <?= $form->field($model, 'team_id')->widget(Select2::className(),[
                    'data'=> \yii\helpers\ArrayHelper::map(\backend\models\Team::find()->where(['team_type'=>1])->all(),'id','name'),
                    'options'=>['placeholder'=>'เลือก']
                ])->label(false) ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">ค่าตัด
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <?= $form->field($model, 'wage')->textInput(['maxlength' => true,'class'=>'form-control'])->label(false) ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">ค่าขน
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <?= $form->field($model, 'transport_wage')->textInput(['maxlength' => true,'class'=>'form-control'])->label(false) ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">รอบการตัด
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <?= $form->field($model, 'cut_interval')->textInput(['maxlength' => true,'class'=>'form-control'])->label(false) ?>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">สถานะ
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <?php echo $form->field($model, 'status')->widget(Switchery::className(),['options'=>['label'=>'','class'=>'form-control']])->label(false) ?>
            </div>
        </div>


        <div class="ln_solid"></div>
        <div class="form-group">
            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
                <div class="btn btn-primary btn-treat">บันทึกรายการดูแลสวน</div>
            </div>
        </div>

        <?php ActiveForm::end(); ?>
    </div>
</div>
<div id="treatModal" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"><i class="fa fa-list-alt"></i> บันทึกรายการดูแลสวน <small id="items"> </small></h4>
            </div>
            <div class="modal-body">
                <input type="hidden" name="line_qc_product" class="line_qc_product" value="">
                <input type="hidden" name="line_qc_zone" class="line_qc_zone" value="">
                <div class="panel-body">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label for="exampleInputEmail1">วันที่</label>
                            <?php
                            echo DatePicker::widget([
                                'name'=>'trans_date',
                                'options'=>['class'=>'cut-date'],
                                'value' => date('d-m-Y'),
                                'pluginOptions' => [
                                    'format'=>'dd-mm-yyyy',
                                ]
                            ])
                            ?>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label for="exampleInputEmail1">รายการ</label>
                            <?php
                                echo Select2::widget([
                                   'name'=> 'treat_title',
                                   'model'=> $treat,
                                   'attribute' => 'title',
                                   'options' => ['placeholder'=>'เลือกหัวข้อ']
                                ]);
                            ?>

                        </div>

                    </div>

                </div>

                <div class="row">
                    <div class="col-lg-4">
                        <label for="">จำนวน</label>
                        <input type="number" min="1" class="form-control">
                    </div>
                </div>
                <h4>รายละเอียด</h4>
                <hr>

                <div class="row">
                   <table class="table table-treat-list">
                       <thead>
                       <tr>
                           <th>#</th>
                           <th>วันที่</th>
                           <th>รายการ</th>
                           <th>จำนวน</th>
                           <th>หน่วย</th>
                           <th>หมายเหตุ</th>
                           <th>-</th>
                       </tr>
                       </thead>
                       <tbody>
                       <tr>
                           <td>#</td>
                           <td>วันที่</td>
                           <td>รายการ</td>
                           <td>จำนวน</td>
                           <td>หน่วย</td>
                           <td>หมายเหตุ</td>
                           <td>-</td>
                       </tr>
                       </tbody>
                   </table>
                </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success btn-add-qc">บันทึก</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">ปิดหน้าต่าง</button>
            </div>
        </div>

    </div>
</div>
<?php
$js=<<<JS
 $(function(){
    $(".btn-treat").click(function(){
        $("#treatModal").modal("show");
    });
 });
JS;
$this->registerJs($js,static::POS_END);
?>
