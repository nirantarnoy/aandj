<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Productionrec */

$this->title = $model->productrec_no;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'รับยอดผลิต'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="productionrec-view">

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
            [
                'attribute'=>'trans_date',
                'value'=>function($data){
                    return date('d/m/Y',$data->created_at);
                }
            ],
            [
                'attribute'=>'zone_id',
                'value'=>function($data){
                    return \backend\models\Zone::findName($data->zone_id);
                }
            ],
            'zone_date',
            [
                'attribute'=>'zone_status',
                'format'=>'html',
                'value'=>function($data){
                   if($data->zone_status === 1) {
                       return '<div class="label label-success">เปิดกอง</div>';
                   }else{
                        return '<div class="label label-danger">ปิดกอง</div>';
                    }
                }
            ],
            'name',
            'all_qty',
            'note',
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
            'zone_type',
        ],
    ]) ?>

</div>
