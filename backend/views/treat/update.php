<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Treat */

$this->title = 'แก้ไข: ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Treats', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'แก้ไข';
?>
<div class="treat-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
