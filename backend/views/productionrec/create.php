<?php

use yii\helpers\Html;

$create_type = '';
$create_type = Yii::$app->request->get('type');


$this->title = Yii::t('app', 'รับยอดผลิต');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'รับยอดผลิต'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="productionrec-create">

    <?= $this->render('_form', [
        'model' => $model,
        'runno'=>$runno,
        'rec_type' => $create_type
    ]) ?>

</div>
