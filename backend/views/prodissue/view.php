<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Prodissue */

$this->title = $model->issue_no;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'ใบเบิกวัตถุดิบ'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="prodissue-view">

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
            'issue_no',
            [
                'attribute'=>'trans_date',
                'value'=>function($data){
                    return date('d/m/Y',$data->trans_date);
                }
            ],
            'section_id',
            'qty',
            'issue_by',
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
        ],
    ]) ?>

</div>
