<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Productionrec */

$this->title = Yii::t('app', 'รับยอดผลิต: ' . $model->productrec_no, [
    'nameAttribute' => '' . $model->name,
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'รับยอดผลิต'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->productrec_no, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'แก้ไข');
?>
<div class="productionrec-update">

    <?= $this->render('_form', [
        'model' => $model,
        'modelline' => $modelline,
    ]) ?>

</div>
