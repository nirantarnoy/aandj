<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Purchplan */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'แผนสั่งซื้อ'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="purchplan-view">
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
          //  'id',
            'name',
            'discription:ntext',
            [
                'attribute'=>'plan_date',
                'value'=>function($data){
                    return date('d/m/Y',$data->plan_date);
                }
            ],
            'product_type',
            'plan_type',
            'plan_qty',
            'received_qty',
            'plan_price',
            'note:ntext',
            [
                'attribute'=>'created_at',
                'value'=>function($data){
                    return date('d/m/Y',$data->created_at);
                }
            ],
            [
                'attribute'=>'updated_at',
                'value'=>function($data){
                    return date('d/m/Y',$data->created_at);
                }
            ],
            [
                'attribute'=>'created_by',
                'value'=>function($data){
                    return \backend\models\User::findName($data->created_by);
                }
            ],
            [
                'attribute'=>'updated_by',
                'value'=>function($data){
                    return \backend\models\User::findName($data->updated_by);
                }
            ],
        ],
    ]) ?>

</div>
