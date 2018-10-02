<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Prodissue */

$this->title = Yii::t('app', 'แก้ไขใบเบิก: ' . $model->issue_no, [
    'nameAttribute' => '' . $model->id,
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'ใบเบิกวัตถุดิบ'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->issue_no, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'แก้ไข');
?>
<div class="prodissue-update">
    <?= $this->render('_form', [
        'model' => $model,
        'modelline'=>$modelline,
    ]) ?>

</div>
