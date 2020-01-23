<?php

use yii\helpers\Html;

$create_type = '';
$create_type = Yii::$app->request->get('type');
$create_type_name = Yii::$app->request->get('typename');

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
        'rec_type' => $model->dept_id,
        'rec_type_name' => \backend\models\Section::findName($model->dept_id)
    ]) ?>

</div>
