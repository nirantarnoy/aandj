<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use kartik\date\DatePicker;
use toxor88\switchery\Switchery;
/* @var $this yii\web\View */
/* @var $model backend\models\Workschedule */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="workschedule-form">
    <div class="panel panel-headlin">
        <div class="panel-heading">
            <h3><i class="fa fa-calendar-minus-o"></i> <?=$this->title?> <small></small></h3>
            <div class="clearfix"></div>
        </div>
        <div class="panel-body">
    <?php $form = ActiveForm::begin(); ?>

            <div class="row">
                <div class="col-lg-3">
                    <?php $model->trans_date = !$model->isNewRecord?date('d-m-Y',strtotime($model->trans_date)):date('d-m-Y');?>
                    <?= $form->field($model, 'trans_date')->widget(DatePicker::className(),[
                        'name'=>'trans_date',
                        'pluginOptions' => [
                            'format'=>'dd-mm-yyyy'
                        ]
                    ]) ?>
                </div>
                <div class="col-lg-3">
                    <?= $form->field($model, 'orchard_id')->widget(Select2::className(),[
                            'data'=>ArrayHelper::map(\backend\models\Orchard::find()->all(),'id','name'),
                            'options' => ['placeholder'=>'เลือกสวน']
                    ]) ?>
                </div>
                <div class="col-lg-3">
                    <?= $form->field($model, 'team_cut')->widget(Select2::className(),[
                        'data'=>ArrayHelper::map(\backend\models\Team::find()->where(['team_type'=>1])->all(),'id','name'),
                        'options' => ['placeholder'=>'เลือกทีมตัด']
                    ]) ?>
                </div>
                <div class="col-lg-3">
                    <?= $form->field($model, 'team_pick')->widget(Select2::className(),[
                        'data'=>ArrayHelper::map(\backend\models\Team::find()->where(['team_type'=>2])->all(),'id','name'),
                        'options' => ['placeholder'=>'เลือกทีมขน']
                    ]) ?>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-6">
                    <?= $form->field($model, 'note')->textarea(['maxlength' => true]) ?>
                </div>
                <div class="col-lg-2">
                    <?php echo $form->field($model, 'status')->widget(Switchery::className(),['options'=>['label'=>'','class'=>'form-control']])->label() ?>
                </div>
            </div>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'บันทึก'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
    </div>
</div>
