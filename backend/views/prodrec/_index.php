<?php

use yii\helpers\Html;
use kartik\grid\GridView;
//use yii\grid\GridView;
use yii\widgets\Pjax;
use yii\helpers\Url;
use lavrentiev\widgets\toastr\Notification;
use backend\assets\ICheckAsset;
use kartik\daterange\DateRangePicker;
use dosamigos\multiselect\MultiSelect;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\ProdrecSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
//ICheckAsset::register($this);

$this->title = Yii::t('app', 'รับวัตถุดิบ');
$this->params['breadcrumbs'][] = $this->title;

$sup = \backend\models\Suplier::find()->where(['status'=>1])->all();




?>
    <div class="prodrec-index">



        <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
        <div class="panel panel-headline">
            <form id="form-bill" action="<?=Url::to(['prodrec/bill'],true)?>" method="post" target="_blank">
                <input type="hidden" class="sup_bill" name="sup" value="">
                <input type="hidden" class="bill_from" name="from_date" value="">
                <input type="hidden" class="bill_to" name="to_date" value="">
                <input type="hidden" class="list" name="list" value="">
                <input type="hidden" class="listid" value="">
            </form>
            <div class="panel-heading">
                <div class="btn-group">
                    <?= Html::a(Yii::t('app', '<i class="fa fa-plus"></i> บันทึกรับวัตถุดิบ'), ['create'], ['class' => 'btn btn-success']) ?>
                </div>
                <div class="btn-group">
                    <div class="btn btn-default btn-bill"><i class="fa fa-print"></i> พิมพ์ใบรับสินค้า </div>
                    <div class="btn btn-default btn-invoice"><i class="fa fa-bitcoin"></i> จ่ายเงิน </div>
                </div>
                <h4 class="pull-right"><?=$this->title?> <i class="fa fa-cubes"></i><small></small></h4>
                <!-- <ul class="nav navbar-right panel_toolbox">
                  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#">Settings 1</a>
                      </li>
                      <li><a href="#">Settings 2</a>
                      </li>
                    </ul>
                  </li>
                  <li><a class="close-link"><i class="fa fa-close"></i></a>
                  </li>
                </ul> -->
                <div class="clearfix"></div>
            </div>
            <div class="panel-body">
               <?php pjax::begin(['id'=>'grid-p']);?>
                <?php echo GridView::widget([
                    'dataProvider' => $dataProvider,
                    'id'=>'grid-test',
                    // 'filterModel' => $searchModel,
                   // 'emptyCell'=>'-',
                   // 'layout'=>'{items}{summary}{pager}',
                    //'summary' => "แสดง {begin} - {end} ของทั้งหมด {totalCount} รายการ",
                    //'showOnEmpty'=>false,
                   // 'bordered'=>false,
                   // 'striped' => false,
                    //'tableOptions' => ['class' => 'table table-hover'],
                    //'emptyText' => '<br /><div style="color: red;align: center;"> <b>ไม่พบรายการไดๆ</b></div>',

                    'columns' => [

                      //  ['class' => 'yii\grid\SerialColumn','contentOptions' => ['style' => 'vertical-align: middle']],
                        // 'id',
                        [
                            'attribute'=>'journal_no',
                            'contentOptions' => ['style' => 'vertical-align: middle'],
                        ],
                        [
                            'attribute'=>'suplier_id',
                            'contentOptions' => ['style' => 'vertical-align: middle'],
                            'value' => function($data){
                                return \backend\models\Suplier::findName($data->suplier_id);
                            }
                        ],
                        [
                            'attribute'=>'trans_date',
                            'contentOptions' => ['style' => 'vertical-align: middle'],
                            'value' => function($data){
                                return date('d-m-Y',$data->trans_date);
                            }
                        ],
                        [
                            'attribute'=>'lot_no',
                            'contentOptions' => ['style' => 'vertical-align: middle'],
                        ],
                        [
                            'attribute'=>'qty',
                            'contentOptions' => ['style' => 'vertical-align: middle'],
                        ],
                        [
                            'attribute'=>'status',
                            'contentOptions' => ['style' => 'vertical-align: middle'],
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

                            'header' => '',
                            'headerOptions' => ['style' => 'text-align:center;','class' => 'activity-view-link',],
                            'class' => 'yii\grid\ActionColumn',
                            'contentOptions' => ['style' => 'text-align: right'],
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
           <?php pjax::end();?>
                    </div>
                </div>
            </div>


    </div>



