<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\Quality */

$this->title = Yii::t('app', 'Create Quality');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Qualities'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="quality-create">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
