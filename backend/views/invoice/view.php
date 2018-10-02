<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Invoice */

$this->title = $model->invoice_no;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'ใบเสร็จรับเงิน'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="invoice-view">

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
            //'id',
            'invoice_no',
            [
                'attribute'=>'invoice_date',
                'value'=>function($data){
                    return date('d/m/Y',$data->invoice_date);
                }
            ],
            'suplier_id',
            'payment_type',
            'payment_term',
            'delivery_type',
            'note',
            'total_amount',
            'status',
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
