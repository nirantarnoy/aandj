<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Quality */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="quality-form">
    <div class="panel panel-headlin">
        <div class="panel-heading">
            <h3><i class="fa fa-users"></i> <?=$this->title?> <small></small></h3>

            <div class="clearfix"></div>
        </div>
        <div class="panel-body">
    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'quality_no')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'trans_date')->textInput(['value'=>date('d-m-Y',$model->trans_date)]) ?>

    <?= $form->field($model, 'ref_order_no')->textInput() ?>

    <?= $form->field($model, 'interval_day')->textInput() ?>

    <?= $form->field($model, 'action_date')->textInput() ?>

    <?= $form->field($model, 'note')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'order_no')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>
        </div>
</div>
