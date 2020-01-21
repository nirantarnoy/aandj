<?php

use yii\helpers\Html;

$create_type = '';
$create_type = Yii::$app->request->get('type');
$create_type_name = Yii::$app->request->get('typename');


$this->title = Yii::t('app', 'รับยอดผลิต');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'รับยอดผลิต'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="productionrec-create">

    <?= $this->render('_form', [
        'model' => $model,
        'runno'=>$runno,
        'rec_type' => $create_type,
        'rec_type_name' => $create_type_name
    ]) ?>

</div>
