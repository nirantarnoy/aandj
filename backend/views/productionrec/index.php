<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
use yii\helpers\Url;
use lavrentiev\widgets\toastr\Notification;
use kartik\date\DatePicker;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use kartik\daterange\DateRangePicker;

$dept = \backend\models\Section::find()->all();

$this->title = Yii::t('app', 'รับยอดผลิต');
$this->params['breadcrumbs'][] = $this->title;

//$param = "";
//$dateval = date('d-m-Y') . ' ถึง ' . date('d-m-Y');
//if ($from_date != '' && $to_date != '') {
//    $dateval = $from_date . ' ถึง ' . $to_date;
//    $param = "&date_select=".$from_date." ถึง ".$to_date;
//}

?>
<div class="productionrec-index">
    <?php $session = Yii::$app->session;
    if ($session->getFlash('msg')): ?>
        <!-- <div class="alert alert-success alert-dismissible" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <?php //echo $session->getFlash('msg'); ?>
      </div> -->
        <?php echo Notification::widget([
            'type' => 'success',
            'title' => 'แจ้งผลการทำงาน',
            'message' => $session->getFlash('msg'),
            //  'message' => 'Hello',
            'options' => [
                "closeButton" => false,
                "debug" => false,
                "newestOnTop" => false,
                "progressBar" => false,
                "positionClass" => "toast-top-center",
                "preventDuplicates" => false,
                "onclick" => null,
                "showDuration" => "300",
                "hideDuration" => "1000",
                "timeOut" => "6000",
                "extendedTimeOut" => "1000",
                "showEasing" => "swing",
                "hideEasing" => "linear",
                "showMethod" => "fadeIn",
                "hideMethod" => "fadeOut"
            ]
        ]); ?>
    <?php endif; ?>
    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <div class="panel panel-headline">
        <div class="panel-heading">
            <div class="btn-group">
                <?php //echo Html::a(Yii::t('app', '<i class="fa fa-plus"></i> รับยอดผลิต'), ['create'], ['class' => 'btn btn-success']) ?>
                <div class="btn btn-success btn-rec"><i class="fa fa-plus"></i> รับยอดผลิต</div>
                <div class="btn btn-info btn-rec-print"><i class="fa fa-print"></i> พิมพ์</div>
            </div>
            <h4 class="pull-right"><?= $this->title ?> <i class="fa fa-cubes"></i>
                <small></small>
            </h4>
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-9">
                    <div class="form-inline">
                        <?php echo $this->render('_search', ['model' => $searchModel]); ?>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="pull-right">
                        <form id="form-perpage" class="form-inline"
                              action="<?= Url::to(['productionrec/index'], true) ?>" method="post">
                            <div class="form-group">
                                <label>แสดง </label>
                                <select class="form-control" name="perpage" id="perpage">
                                    <option value="20" <?= $perpage == '20' ? 'selected' : '' ?>>20</option>
                                    <option value="50" <?= $perpage == '50' ? 'selected' : '' ?> >50</option>
                                    <option value="100" <?= $perpage == '100' ? 'selected' : '' ?>>100</option>
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
                    'emptyCell' => '-',
                    'layout' => '{items}{summary}{pager}',
                    'summary' => "แสดง {begin} - {end} ของทั้งหมด {totalCount} รายการ",
                    'showOnEmpty' => false,
                    'tableOptions' => ['class' => 'table table-hover'],
                    'emptyText' => '<div style="color: red;align: center;"> <b>ไม่พบรายการไดๆ</b></div>',
                    'columns' => [
                        [
                            'class' => 'yii\grid\SerialColumn',
                            'contentOptions' => ['style' => 'vertical-align: middle', 'text-align:center'],
                        ],

                        // 'id',
                        [
                            'attribute' => 'productrec_no',
                            'contentOptions' => ['style' => 'vertical-align: middle'],

                        ],
                        [
                            'attribute' => 'trans_date',
                            'contentOptions' => ['style' => 'vertical-align: middle'],
                            'value' => function ($data) {
                                return date('d-m-Y', $data->trans_date);
                            }
                        ],
                        [
                            'attribute' => 'dept_id',
                            'contentOptions' => ['style' => 'vertical-align: middle'],
                            'value' => function ($data) {
                                return \backend\models\Section::findName($data->dept_id);
                            }
                        ],
                        [
                            'attribute' => 'zone_id',
                            'contentOptions' => ['style' => 'vertical-align: middle'],
                            'value' => function ($data) {
                                return \backend\models\Zone::findName($data->zone_id);
                            }
                        ],

                        [
                            'attribute' => 'zone_date',
                            'contentOptions' => ['style' => 'vertical-align: middle'],
                            'value' => function ($data) {
                                return date('d-m-Y', $data->zone_date);
                            }
                        ],
                        [
                            'attribute' => 'product_id',
                            'contentOptions' => ['style' => 'vertical-align: middle'],
                            'value' => function ($data) {
                                return \backend\models\Product::findName($data->product_id);
                            }
                        ],
                        [
                            'attribute' => 'zone_status',
                            'contentOptions' => ['style' => 'vertical-align: middle'],
                            'format' => 'html',
                            'value' => function ($data) {
                                return $data->zone_status === 0 ? '<div class="label label-success">เปิดกอง</div>' : '<div class="label label-danger">ปิดกอง</div>';
                            }
                        ],
                        //'name',
                        //'all_qty',
                        //'note',
                        //'status',
                        //'created_at',
                        //'updated_at',
                        //'created_by',
                        //'updated_by',
                        //'zone_type',

//            [
//                'attribute'=>'status',
//                'contentOptions' => ['style' => 'vertical-align: middle'],
//                'format' => 'html',
//                'value'=>function($data){
//                    return $data->status === 1 ? '<div class="label label-success">Active</div>':'<div class="label label-default">Inactive</div>';
//                }
//            ],
                        [

                            'header' => '',
                            'headerOptions' => ['style' => 'text-align:center;', 'class' => 'activity-view-link',],
                            'class' => 'yii\grid\ActionColumn',
                            'contentOptions' => ['style' => 'text-align: right', 'vertical-align: middle'],
                            'buttons' => [
                                'view' => function ($url, $data, $index) {
                                    $options = [
                                        'title' => Yii::t('yii', 'View'),
                                        'aria-label' => Yii::t('yii', 'View'),
                                        'data-pjax' => '0',
                                    ];
                                    return Html::a(
                                        '<span class="glyphicon glyphicon-eye-open btn btn-xs btn-default"></span>', $url, $options);
                                },
                                'update' => function ($url, $data, $index) {
                                    $options = array_merge([
                                        'title' => Yii::t('yii', 'Update'),
                                        'aria-label' => Yii::t('yii', 'Update'),
                                        'data-pjax' => '0',
                                        'id' => 'modaledit',
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
                                'delete' => function ($url, $data, $index) {
                                    $options = array_merge([
                                        'title' => Yii::t('yii', 'Delete'),
                                        'aria-label' => Yii::t('yii', 'Delete'),
                                        //'data-confirm' => Yii::t('yii', 'Are you sure you want to delete this item?'),
                                        //'data-method' => 'post',
                                        //'data-pjax' => '0',
                                        'data-url' => $url,
                                        'onclick' => 'recDelete($(this));'
                                    ]);
                                    return Html::a('<span class="glyphicon glyphicon-trash btn btn-xs btn-default"></span>', 'javascript:void(0)', $options);
                                }
                            ]
                        ],
                    ],
                ]); ?>
            </div>

            <?php Pjax::end(); ?>
        </div>
        <div id="selectModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <!-- Modal content-->
                <div class="modal-content">
                    <!--                    <div class="modal-header">-->
                    <!--                        <button type="button" class="close" data-dismiss="modal">&times;</button>-->
                    <!--                        <h4 class="modal-title"><i class="fa fa-list-alt"></i> เลือกแผนกที่ต้องการรับเข้า-->
                    <!--                            <small id="items"></small>-->
                    <!--                        </h4>-->
                    <!--                    </div>-->
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-lg-12" style="text-align: center;">
                                <h3 style="font-weight: bold;">เลือกแผนกที่ต้องการรับเข้า</h3>
                            </div>
                        </div>
                        <?php foreach ($dept as $value): ?>
                            <div class="row">
                                <div class="col-lg-12">
                                    <a href="index.php?r=productionrec/create&type=<?= $value->id ?>&typename=<?= $value->name ?>"
                                       class="btn btn-info"
                                       style="width: 100%;font-weight: bold;padding: 15px 15px 15px 15px;"><?= $value->name; ?></a>
                                </div>
                            </div>
                            <br>
                        <?php endforeach; ?>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">ยกเลิก</button>
                    </div>
                </div>

            </div>
        </div>

        <div id="printModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title"><i class="fa fa-print text-primary"></i> พิมพ์ประวัติยอดรับผลิต</h4>
                    </div>
                    <div class="modal-body">
                        <form action="index.php?r=productionrec/printdoc" id="form-print-rec" method="post">
                            <div class="row">
                                <div class="col-lg-12">
                                    <label for="">วันที่รับเข้า</label>

                                    <?php
                                    $dateval = date('d-m-Y') . ' ถึง ' . date('d-m-Y');
                                    echo DateRangePicker::widget([
                                        'name' => 'date_select',
                                        'value' => $dateval,
                                        'options' => ['class' => 'date_select', 'id' => 'main_picker'],
                                        'presetDropdown' => true,
                                        'hideInput' => false,
                                        'convertFormat' => true,
                                        'startAttribute' => 'start',
                                        'endAttribute' => 'end',
                                        'pluginOptions' => [
                                            'locale' => ['format' => 'd-m-Y', 'separator' => ' ถึง ']
                                        ]
                                    ]);
                                    ?>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-lg-12">
                                    <label for="">พนักงาน</label>
                                    <?php
                                    echo Select2::widget([
                                        'model' => new \backend\models\Employee(),
                                        'name' => 'select_emp',
                                        'attribute' => 'id',
                                        'data' => ArrayHelper::map(\backend\models\Employee::find()->all(), 'id', 'first_name'),
                                        'options' => ['placeholder' => 'Select a state ...'],
                                        'pluginOptions' => [
                                            'allowClear' => true
                                        ],
                                    ])

                                    ?>
                                </div>
                            </div>
                        </form>
                        <div class="modal-error" style="display: none;">
                            <i class="fa fa-exclamation-triangle text-danger"> ไม่พบข้อมูล กรุณาลองใหม่อีกครั้ง</i>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success btn-ok" data-dismiss="modal">ตกลง</button>
                    </div>
                </div>
            </div>
        </div>
        <?php
        //$url_to_delete =  Url::to(['product/bulkdelete'],true);
        $this->registerJs('
    $(function(){
        $(".btn-ok").click(function(){
           $("form#form-print-rec").submit();
        });
        $("#perpage").change(function(){
            $("#form-perpage").submit();
        });
        
        $(".btn-rec-print").click(function(){
      
           $("#printModal").modal("show");
        });
        
        $(".btn-rec").click(function(){
            $("#selectModal").modal("show");
        });
    });

   function recDelete(e){
        //e.preventDefault();
        var url = e.attr("data-url");
        //alert(url);
        swal({
              title: "ต้องการลบรายการนี้ใช่หรือไม่",
              text: "",
              type: "warning",
              showCancelButton: true,
              closeOnConfirm: false,
              showLoaderOnConfirm: true
            }, function () {
              e.attr("href",url); 
              e.toggle("click");        
        });
    }

    ', static::POS_END);
        ?>
