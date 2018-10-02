<?php

/* @var $this yii\web\View */
use backend\themes\klolofil\assets\KlolofilAsset;
use kartik\daterange\DateRangePicker;
use yii\helpers\Url;
use miloschuman\highcharts\Highcharts;
use yii\helpers\Json;
use backend\assets\HighchartAsset;

//HighchartAsset::register($this);

$this->title = 'A&J thai fruit';
KlolofilAsset::register($this);
$directoryAsset = Yii::$app->assetManager->getPublishedUrl('@klolofil/dist');

$dateval = date('d-m-Y').' ถึง '.date('d-m-Y');
if($from_date !='' && $to_date != ''){
    $dateval = $from_date.' ถึง '.$to_date;
}



$this->registerCss('
     body{
                font-family: "Cloud-Light";
                font-size: 16px;
            }
');
$js =<<<JS
  $(function() {
    $(".date_select").change(function() {
      $("form#form_date").submit();
    })
    
//   var chart = $("#container-chart").highcharts({
//        chart: {
//        type: 'column'
//        },
//        title: {
//            text: 'กราฟแสดงจำนวนผลิตสินค้า'
//        },
//        xAxis: {
//       // categories: ['Africa', 'America', 'Asia', 'Europe', 'Oceania'],
//        categories: ,
//        title: {
//            text: null
//        }
//        },
//        yAxis: {
//            min: 0,
//            title: {
//                text: 'จำนวน',
//                align: 'high'
//            },
//            labels: {
//                overflow: 'justify'
//            }
//        },
//        tooltip: {
//            valueSuffix: ' millions'
//        },
//        plotOptions: {
//            bar: {
//                dataLabels: {
//                    enabled: true
//                }
//            }
//        },
//        legend: {
//            layout: 'vertical',
//            align: 'right',
//            verticalAlign: 'top',
//            x: -40,
//            y: 80,
//            floating: true,
//            borderWidth: 1,
//            backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
//            shadow: true
//        },
//        credits: {
//            enabled: false
//        },
//        series: data
//      
//        // series: [{
//        //     name: 'Year 1800',
//        //     data: [107, 31, 635, 203, 2]
//        // }, {
//        //     name: 'Year 1900',
//        //     data: [133, 156, 947, 408, 6]
//        // }, {
//        //     name: 'Year 2000',
//        //     data: [814, 841, 3714, 727, 31]
//        // }, {
//        //     name: 'Year 2016',
//        //     data: [1216, 1001, 4436, 738, 40]
//        // }]
//   });
    
  })
JS;

$this->registerJs($js,static::POS_END);

?>
<!-- WRAPPER -->

        <!-- MAIN CONTENT -->

                <!-- OVERVIEW -->
                <div class="panel panel-headline">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-dashboard"></i> ภาพรวมระบบ</h3>
<!--                        <p class="panel-subtitle">Period: Oct 14, 2016 - Oct 21, 2016</p>-->
                        <p class="panel-subtitle">เลือกช่วงข้อมูลที่ต้องการดูรายละเอียด</p>
                        <div class="row">
                            <div class="col-lg-5">
                                <form id="form_date" action="<?=Url::to(['site/index'],true)?>">
                                <?php
                                echo DateRangePicker::widget([
                                    'name'=>'date_select',
                                    'value' => $dateval,
                                    'options' => ['class'=>'date_select'],
                                    'presetDropdown' => true,
                                    'hideInput' => true,
                                    'convertFormat' => true,
                                    'pluginOptions' => [
                                            'locale'=>['format'=>'d-m-Y','separator'=>' ถึง ']
                                    ]
                                ]);
                                ?>
                                </form>
                            </div>
                        </div>

                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="metric">
                                    <span class="icon"><i class="fa fa-cube"></i></span>
                                    <p>
                                        <span class="number"><?=$zonecout?></span>
                                        <span class="title">จำนวนกอง</span>
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="metric">
                                    <span class="icon"><i class="fa fa-shopping-bag"></i></span>
                                    <p>
                                        <span class="number"><?=number_format($received,0)?></span>
                                        <span class="title">จำนวนรับเข้า</span>
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="metric">
                                    <span class="icon"><i class="fa fa-cubes"></i></span>
                                    <p>
                                        <span class="number"><?=number_format($productreceive,0)?></span>
                                        <span class="title">จำนวนผลิต</span>
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="metric">
                                    <span class="icon"><i class="fa fa-bar-chart"></i></span>
                                    <p>
                                        <span class="number">35%</span>
                                        <span class="title">เปอร์เซ็นของเสีย</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-9">

<!--                                <div id="container-chart" class="ct-chart"></div>-->
                                <?php
//                                $category = [];
//                                $product = [];
//                                $qty = [];

//                                if(count($productreceive_qty)>0){
//                                    foreach ($productreceive_qty as $value){
//                                       $category[] = $value->name;
//                                        $product[] =$value->name;
//                                        $qty[] =(int)$value->line_qty;
//                                    }
//                                }
                                echo Highcharts::widget([
                                    'options' => [
                                        'title' => ['text' => ''],
                                        'xAxis' => [
                                            'categories' => $name
                                        ],
                                        'yAxis' => [
                                            'title' => ['text' => 'จำนวน']
                                        ],
                                        'series' => [
                                            [
                                                    'type'=> 'column',
                                                    'name'=> $name,
                                                    'data'=> $qty,
                                            ]
                                        ]
                                    ]
                                ]);
                                ?>

                            </div>
                            <div class="col-md-3">
                                <div class="weekly-summary text-right">
                                    <span class="number"><?=number_format($received_amt)?></span>
<!--                                    <span class="percentage"><i class="fa fa-caret-up text-success"></i> 12%</span>-->
                                    <span class="info-label">มูลค่ารับสินค้า</span>
                                </div>
                                <div class="weekly-summary text-right">
                                    <span class="number"><?=number_format($productreceive_amt)?></span>
<!--                                    <span class="percentage"><i class="fa fa-caret-up text-success"></i> 23%</span>-->
                                    <span class="info-label">มูลค่ารับเข้าผลิต</span>
                                </div>
                                <div class="weekly-summary text-right">
                                    <span class="number">65,938</span>
<!--                                    <span class="percentage"><i class="fa fa-caret-down text-danger"></i> 8%</span>-->
                                    <span class="info-label">มูลค่าสินค้าคงคลัง</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END OVERVIEW -->
                <div class="row">
                    <div class="col-md-6">
                        <!-- RECENT PURCHASES -->
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">ประวัติการทำรายการล่าสุด</h3>
                                <div class="right">
                                    <button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
                                    <button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
                                </div>
                            </div>
                            <div class="panel-body no-padding">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th>เลขที่รายการ</th>
                                        <th>ประเภท</th>
                                        <th>วันที่</th>
                                        <th>จำนวน</th>
                                        <th>สถาณะ</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php foreach($last_trans as $value):?>
                                        <tr>
                                            <td><a href="#"><?=$value->journal_no?></a></td>
                                            <td><?=$value->trans_type?></td>
                                            <td><?=date('d-m-Y',$value->created_at)?></td>
                                            <td style="text-align: right"><?=number_format(\backend\models\Journaltrans::findSum($value->id),0)?></td>
                                            <td>
                                                <?php if($value->status == 1):?>
                                                  <span class="label label-success">Success</span>
                                                <?php else:?>
                                                    <span class="label label-default">Fail</span>
                                                <?php endif;?>
                                            </td>
                                        </tr>
                                    <?php endforeach;?>
                                    </tbody>
                                </table>
                            </div>
                            <div class="panel-footer">
                                <div class="row">
<!--                                    <div class="col-md-6"><span class="panel-note"><i class="fa fa-clock-o"></i></span></div>-->
                                    <div class="col-md-6 text-left"><a href="#" class="btn btn-primary">ดูรายการทั้งหมด</a></div>
                                </div>
                            </div>
                        </div>
                        <!-- END RECENT PURCHASES -->
                    </div>
                    <div class="col-md-6">
                        <!-- MULTI CHARTS -->
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">เปรียบเทียบยอดวางแผนกับรับเข้าจริง</h3>
                                <div class="right">
                                    <button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
                                    <button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
                                </div>
                            </div>
                            <div class="panel-body">
<!--                                <div id="visits-trends-chart" class="ct-chart"></div>-->
                                <?php
                                $month = ['Jan', 'Feb', 'Mar', 'Apl', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
                                $plan = ["แผนซื้อ","ซื้อจริง"];
                                //$po = [1500,1590];
                                echo Highcharts::widget([
                                    'options' => [
                                        'class'=>'compare_chart',
                                        'title' => ['text' => ''],
                                        'xAxis' => [
                                            'categories' => $month
                                        ],
                                        'yAxis' => [
                                            'title' => ['text' => 'จำนวนเ']
                                        ],
                                        'series' => [
                                            ['name' => $plan[0], 'data' => [100,200,450,350,400,689,550,300,450,200,600,1200]],
                                            ['name' => $plan[1], 'data' => [200,200,450,350,490,690,280,500,550,100,800,1290]],

                                        ],
                                        'credits' => ['enabled' => true],
                                        'chart' => [
                                            'type' => 'line',
                                        ],
                                    ]
                                ]);
                                ?>
                            </div>
                        </div>
                        <!-- END MULTI CHARTS -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <!-- TASKS -->
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">สถานะกอง</h3>
                                <div class="right">
                                    <button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
                                    <button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
                                </div>
                            </div>
                            <div class="panel-body">
                                <ul class="list-unstyled task-list">
                                    <li>
                                        <p>A1 <span class="label-percent">23%</span></p>
                                        <div class="progress progress-xs">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="23" aria-valuemin="0" aria-valuemax="100" style="width:23%">
                                                <span class="sr-only">23% Complete</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <p>A2 <span class="label-percent">80%</span></p>
                                        <div class="progress progress-xs">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                                <span class="sr-only">80% Complete</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <p>A3 <span class="label-percent">100%</span></p>
                                        <div class="progress progress-xs">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                                <span class="sr-only">Success</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <p>A4 <span class="label-percent">45%</span></p>
                                        <div class="progress progress-xs">
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
                                                <span class="sr-only">45% Complete</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <p>A5 <span class="label-percent">10%</span></p>
                                        <div class="progress progress-xs">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: 10%">
                                                <span class="sr-only">10% Complete</span>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- END TASKS -->
                    </div>
                    <div class="col-md-4">
                        <!-- VISIT CHART -->
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">ควบคุมคุณภาพ</h3>
                                <div class="right">
                                    <button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
                                    <button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div id="visits-chart" class="ct-chart"></div>
                            </div>
                        </div>
                        <!-- END VISIT CHART -->
                    </div>
                    <div class="col-md-4">
                        <!-- REALTIME CHART -->
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">สาเหตุเสียสูงสุด</h3>
                                <div class="right">
                                    <button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
                                    <button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
                                </div>
                            </div>
                            <div class="panel-body">
<!--                                <div id="system-load" class="easy-pie-chart" data-percent="70">-->
<!--                                    <span class="percent">70</span>-->
<!--                                </div>-->
<!--                                <h4>CPU Load</h4>-->
<!--                                <ul class="list-unstyled list-justify">-->
<!--                                    <li>High: <span>95%</span></li>-->
<!--                                    <li>Average: <span>87%</span></li>-->
<!--                                    <li>Low: <span>20%</span></li>-->
<!--                                    <li>Threads: <span>996</span></li>-->
<!--                                    <li>Processes: <span>259</span></li>-->
<!--                                </ul>-->
                            </div>
                        </div>
                        <!-- END REALTIME CHART -->
                    </div>
                </div>

        <!-- END MAIN CONTENT -->
    </div>
    <!-- END MAIN -->
    <div class="clearfix"></div>
    <footer>
        <div class="container-fluid">
            <p class="copyright">&copy; 2018 <a href="https://www.themeineed.com" target="_blank">Theme I Need</a>. All Rights Reserved.</p>
        </div>
    </footer>


<!-- END WRAPPER -->