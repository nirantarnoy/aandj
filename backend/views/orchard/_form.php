<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use toxor88\switchery\Switchery;
use kartik\select2\Select2;
/* @var $this yii\web\View */
/* @var $model backend\models\Orchard */
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
