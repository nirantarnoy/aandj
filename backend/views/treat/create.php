<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Treat */

$this->title = 'สร้าง';
$this->params['breadcrumbs'][] = ['label' => 'บำรุงรักษาสวน', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="treat-create">
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
