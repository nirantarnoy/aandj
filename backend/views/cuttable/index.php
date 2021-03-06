<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
use yii\helpers\Url;
/* @var $this yii\web\View */
/* @var $searchModel backend\models\CuttableSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'ตารางตัดมะพร้าว';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="cuttable-index">
    <?php Pjax::begin(); ?>
    <div class="panel panel-headline">
        <div class="panel-heading">
            <div class="btn-group">
                <?= Html::a(Yii::t('app', '<i class="fa fa-plus"></i> สร้างตาราง'), ['create'], ['class' => 'btn btn-success']) ?>
            </div>
            <div class="btn-group">
                <a href="index.php?r=cuttable/showcalendar" class="btn btn-default btn-calendar"><i class="fa fa-calendar"></i> ปฏิทิน </a>
            </div>
            <h4 class="pull-right"><?=$this->title?> <i class="fa fa-calendar-minus-o"></i><small></small></h4>
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-9">
                    <div class="form-inline">
                        <?php  echo $this->render('_search', ['model' => $searchModel]); ?>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="pull-right">
                        <form id="form-perpage" class="form-inline" action="<?=Url::to(['position/index'],true)?>" method="post">
                            <div class="form-group">
                                <label>แสดง </label>
                                <select class="form-control" name="perpage" id="perpage">
                                    <option value="20" <?=$perpage=='20'?'selected':''?>>20</option>
                                    <option value="50" <?=$perpage=='50'?'selected':''?> >50</option>
                                    <option value="100" <?=$perpage=='100'?'selected':''?>>100</option>
                                </select>
                                <label> รายการ</label>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="table-responsive">

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        //'filterModel' => $searchModel,
        'emptyCell'=>'-',
        'layout'=>'{items}{summary}{pager}',
        'summary' => "แสดง {begin} - {end} ของทั้งหมด {totalCount} รายการ",
        'showOnEmpty'=>false,
        'tableOptions' => ['class' => 'table table-hover'],
        'emptyText' => '<div style="color: red;align: center;"> <b>ไม่พบรายการไดๆ</b></div>',
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

           // 'id',
            //'cut_no',
            [
                'attribute'=>'status',
                'format' => 'html',
                'contentOptions' => ['style' => 'vertical-align: middle'],
                'value'=>function($data){
                    if($data->status == 1){
                        return '<div class="label label-success">รอตัด</div>';
                    }
                }
            ],
//            [
//                    'attribute' => 'cutline.orcard_id',
//                    'label' => 'สวน',
//                    'value' => function($data){
//                       return \backend\models\Orchard::getName($data['cutline']['orcard_id']);
//                    }
//            ],
//            [
//                'attribute' => 'cutline.cut_team',
//                'label' => 'ทีมตัด',
//                'value' => function($data){
//                    return \backend\models\Team::getName($data['cutline']['cut_team'],1);
//                }
//            ],
//            [
//                'attribute' => 'cutline.cut_date',
//                'label' => 'กำหนดตัด',
//                'value' => function($data){
//                    return date('d/m/Y',strtotime($data['cutline']['cut_date']));
//                }
//            ],
//            [
//                'attribute' => 'cutline.cut_next_date',
//                'label' => 'กำหนดตัดครั้งหน้า',
//                'value' => function($data){
//                    return date('d/m/Y',strtotime($data['cutline']['cut_next_date']));
//                }
//            ],

            [

                'header' => '',
                'headerOptions' => ['style' => 'text-align:center;','class' => 'activity-view-link',],
                'class' => 'yii\grid\ActionColumn',
                'contentOptions' => ['style' => 'text-align: right','vertical-align: middle'],
                'buttons' => [
                    'view' => function($url, $data, $index) {
                        $options = [
                            'title' => Yii::t('yii', 'View'),
                            'aria-label' => Yii::t('yii', 'View'),
                            'data-pjax' => '0',
                        ];
                        return Html::a(
                            '<span class="glyphicon glyphicon-eye-open btn btn-xs btn-default"></span>', $url, $options);
                    },
                    'update' => function($url, $data, $index) {
                        $options = array_merge([
                            'title' => Yii::t('yii', 'Update'),
                            'aria-label' => Yii::t('yii', 'Update'),
                            'data-pjax' => '0',
                            'id'=>'modaledit',
                        ]);
                        return Html::a(
                            '<span class="glyphicon glyphicon-pencil btn btn-xs btn-default"></span>', $url, [
                            'id' => 'activity-view-link',
                            //'data-toggle' => 'modal',
                            // 'data-target' => '#modal',
                            'data-id' => $index,
                            'data-pjax' => '0',
                            // 'style'=>['float'=>'rigth'],
                        ]);
                    },
                    'delete' => function($url, $data, $index) {
                        $options = array_merge([
                            'title' => Yii::t('yii', 'Delete'),
                            'aria-label' => Yii::t('yii', 'Delete'),
                            //'data-confirm' => Yii::t('yii', 'Are you sure you want to delete this item?'),
                            //'data-method' => 'post',
                            //'data-pjax' => '0',
                            'data-url'=>$url,
                            'onclick'=>'recDelete($(this));'
                        ]);
                        return Html::a('<span class="glyphicon glyphicon-trash btn btn-xs btn-default"></span>', 'javascript:void(0)', $options);
                    }
                ]
            ],
        ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>
        </div>
    </div>
</div>
