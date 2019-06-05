<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Zone */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'ข้อมูลกอง'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="panel zone-view">
    <div class="panel-body">
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
            'name',
            'discription:ntext',
            [
                    'attribute'=>'max_qty',
                'value'=> function($data){
                  return number_format($data->max_qty,0);
                }
            ],
            [
                'attribute'=>'qty',
                'value'=> function($data){
                    return number_format($data->qty,0);
                }
            ],
            [
                'attribute'=>'status',
                'contentOptions' => ['style' => 'vertical-align: middle'],
                'format' => 'html',
                'value'=>function($data){
                    return $data->status === 1 ? '<div class="label label-success">Active</div>':'<div class="label label-default">Inactive</div>';
                }
            ],
            [
                'attribute'=>'lock',
                'contentOptions' => ['style' => 'vertical-align: middle'],
                'format' => 'html',
                'value'=>function($data){
                    return $data->lock === 1 ? '<div class="label label-success">Locked</div>':'<div class="label label-default">Unlock</div>';
                }
            ],
//            'created_at',
//            'updated_at',
//            'created_by',
//            'updated_by',
        ],
    ]) ?>
    </div>
</div>
