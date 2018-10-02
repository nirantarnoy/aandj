<?php

use yii\bootstrap\ActiveForm;

$this->title = 'เปลี่ยนรหัสผ่าน';
?>

<div class="panel panel-headlin">
    <div class="panel-heading">
        <h3><i class="fa fa-refresh"></i> <?=$this->title?> <small></small></h3>

        <div class="clearfix"></div>
    </div>
    <div class="panel-body">

    <div class="row">
        <div class="col-lg-3">
            
        </div>
     <div class="col-lg-6">
   <?php $form = ActiveForm::begin(['id'=>'form1','method'=>'post','action'=>'index.php?r=changepwd/doit']); ?>

    <?= $form->field($model, 'currentpwd')->passwordInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'newpwd')->passwordInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'confirmpwd')->passwordInput() ?>
    
   
         <input type="submit" class="btn btn-primary" value="ตกลง">
          <?php ActiveForm::end(); ?>
        </div>
     <div class="col-lg-3">
            
        </div>
    </div>
        <br>
</div>

</div>


