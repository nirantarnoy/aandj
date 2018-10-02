<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Workschedule */

$this->title = Yii::t('app', 'แก้ไขตาราง: ' . date('d-m-Y',strtotime($model->trans_date)), [
    'nameAttribute' => '' . $model->id,
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'ตารางตัดมะพร้าว'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => date('d-m-Y',strtotime($model->trans_date)), 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'แก้ไข');
?>
<div class="workschedule-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
