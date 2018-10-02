<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Quality */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'บันทีกคุณภาพ'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="quality-view">

    <p>
        <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
           // 'id',
            'quality_no',
            'trans_date',
            'ref_order_no',
            'interval_day',
            'action_date',
            'note',
            'status',
            'created_at',
            'updated_at',
            'created_by',
            'updated_by',
            'order_no',
            'product_id',
        ],
    ]) ?>

</div>
