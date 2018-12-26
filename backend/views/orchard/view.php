<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Orchard */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'สวน'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="orchard-view">

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
<div class="panel">
    <div class="panel-heading">

    </div>
    <div class="panel-body">
        <?= DetailView::widget([
            'model' => $model,
            'attributes' => [
                //'id',
                'name',
                'description',
                'area_size',
                [
                    'attribute'=>'type_id',
                    'value'=>function($data){
                        return \backend\helpers\OrchardType::getTypeById($data->type_id);
                    }
                ],
                // 'type_id',
                [
                    'attribute'=>'team_id',
                    'value'=>function($data){
                        return \backend\models\Team::findName($data->team_id);
                    }
                ],
                'wage',
                'cut_interval',
                //    'status',
//            'created_at',
//            'updated_at',
//            'created_by',
//            'updated_by',
            ],
        ]) ?>
    </div>
</div>

    <div class="panel">
        <div class="panel-heading">
            ประวัติการตัดมะพร้าว
        </div>
        <div class="panel-body">

        </div>
    </div>

</div>
