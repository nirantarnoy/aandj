<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Prodrec */

$this->title = $model->journal_no;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'รับยอดผลิต'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="prodrec-view">

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
            'journal_no',
            'description',
            [
                'attribute'=>'trans_date',
                'value'=>function($data){
                    return date('d/m/Y',$data->trans_date);
                }
            ],
            'suplier_id',
            'raw_type',
            'qty',
            'plan_price',
            'qc_note:ntext',
            [
                'attribute'=>'status',
                'format' => 'html',
                'value'=>function($data){
                    if($data->status === 0){
                        return '<div class="label label-default">รับสินค้าแล้ว</div>';
                    }else  if($data->status === 1){
                        return '<div class="label label-primary">รอจ่ายเงิน</div>';
                    } else{
                        return '<div class="label label-success">จ่ายเงินแล้ว</div>';
                    }
                }
            ],
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
