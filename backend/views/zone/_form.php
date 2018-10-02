<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use toxor88\switchery\Switchery;
/* @var $this yii\web\View */
/* @var $model backend\models\Zone */
/* @var $form yii\widgets\ActiveForm */
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
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">ชื่อกอง <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <?= $form->field($model, 'name')->textInput(['maxlength' => true,'class'=>'form-control'])->label(false) ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">รายละเอียด
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <?= $form->field($model, 'discription')->textarea(['maxlength' => true,'class'=>'form-control'])->label(false) ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">จำนวนต่อกอง
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <?= $form->field($model, 'max_qty')->textInput(['maxlength' => true,'class'=>'form-control'])->label(false) ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">จำนวน
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <?= $form->field($model, 'qty')->textInput(['maxlength' => true,'class'=>'form-control'])->label(false) ?>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Lock
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <?php
                  $model->lock=$model->qty>0?1:0;
                  $islock = 'No';
                  if($model->lock == 1){$islock = "Yes";}
                ?>
                <input type="text" style="width: 15%;" class="form-control" value="<?=$islock?>" readonly>
<!--                --><?php //echo  $form->field($model, 'lock')->textInput(['maxlength' => true,'style'=>'width: 15%','class'=>'form-control','readonly'=>'readonly'])->label(false) ?>
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
            </div>
        </div>

        <?php ActiveForm::end(); ?>
    </div>
</div>

