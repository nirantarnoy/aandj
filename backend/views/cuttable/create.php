<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\Cuttable */

$this->title = 'Create Cuttable';
$this->params['breadcrumbs'][] = ['label' => 'Cuttables', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="cuttable-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
