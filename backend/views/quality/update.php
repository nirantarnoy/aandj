<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Quality */

$this->title = Yii::t('app', 'แก้ไขบันทึกคุณภาพ: ' . $model->quality_no, [
    'nameAttribute' => '' . $model->id,
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'บันทีกคุณภาพ'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->quality_no, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="quality-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
