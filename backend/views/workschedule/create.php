<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\Workschedule */

$this->title = Yii::t('app', 'สร้างตาราง');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'ตารางตัดมะพร้าว'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="workschedule-create">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
