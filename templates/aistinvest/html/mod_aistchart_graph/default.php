<?php
defined('_JEXEC') or die;
jimport( 'joomla.database.table' );
?>
        <script>
           var chart;
           var chartData = [];

function changetable (dataind) {
    'use strict';
    var tochange = document.getElementById( "results" );
    var divs = tochange.getElementsByTagName("div");
    for ( var i = 0; i < divs.length; i++ ) {
       if  (divs.item(i).id === dataind ) {
          divs.item(i).className = "data-table-a percent";
       }
       else if  (typeof (+divs.item(i).id)  === "number" ) {
          divs.item(i).className = "data-table-a dontshow";
       }
   }

    var myidon;
    var myidoff;

    if (dataind === '2') {myidon = 'bpercent'; myidoff = 'ddoll';}
    else if (dataind === '3') {myidoff = 'bpercent'; myidon = 'ddoll';}
    document.getElementById( myidon ).className  = "chart-link chart-b selected";
    document.getElementById( myidoff ).className  = "chart-link chart-b";


}


           AmCharts.ready(function () {
                type: "serial",
                chartData = [
              <?php for($i=$start;$i<$end;$i++): 
			$total_percent = 0;
			$total_percent30 = 0;
			$total_usd = 0;
			for($x = 1;$x<13;$x++): 
                          if($data[$i][$x]['percent']) {$mypercent=$data[$i][$x]['percent']; $mypercent30=$data[$i][$x]['percent30'];
                            echo '{ "newDate": "'.$i.'-'.$x.'",  "results": '.$mypercent.', "pureresults": \''.$mypercent30.'\' },';
                          } else break 2;
                        endfor;
                    endfor;
              ?>
              ],


               // SERIAL CHART
               chart = new AmCharts.AmSerialChart();

               chart.dataProvider = chartData;
               chart.categoryField = "newDate";


               chart.synchronizeGrid = true; // this makes all axes grid to be at the same intervals

               // AXES
               var categoryAxis = chart.categoryAxis;


               categoryAxis.parseDates = true; // as our data is date-based, we set parseDates to true
               categoryAxis.minPeriod = "MM"; // our data is daily, so we set minPeriod to DD
               categoryAxis.dateFormats =  [ { 



                    period: 'DD',
                    format: 'YYYY-MM'
                }, {
                    period: 'WW',
                    format: 'YYYY-MM'
                }, {
                    period: 'MM',
                    format: 'YYYY-MM'
                }, {
                    period: 'YYYY',
                    format: 'YYYY-MM'
                }];

               // first value axis (on the left)
               var valueAxis1 = new AmCharts.ValueAxis();
               valueAxis1.axisColor = "black";
               valueAxis1.axisThickness = 1;
                valueAxis1.title = "Доходность, %";

               chart.addValueAxis(valueAxis1);

               // GRAPHS
               // first graph
               var graph1 = new AmCharts.AmGraph();
               graph1.valueAxis = valueAxis1; // we have to indicate which value axis should be used
               graph1.title = "Накопительная доходность";
               graph1.valueField = "pureresults";
//               graph1.balloonText = "[[pureresults]] %";
               graph1.balloonText = "[[pureresults]] %";

               graph1.bullet = "round";
               graph1.bulletBorderThickness = 1;
               graph1.autoGridCount = true;
               graph1.lineColor = "<?php echo $triggerA; ?>";

               chart.addGraph(graph1);


               // CURSOR
               var chartCursor = new AmCharts.ChartCursor();
               chartCursor.cursorAlpha = 1;
               chartCursor.fullWidth = false;
           chartCursor.categoryBalloonColor = "green";

               chartCursor.categoryBalloonDateFormat = 'YYYY-MM';
               chartCursor.BalloonColor = "green";
               chart.addChartCursor(chartCursor);



               // SCROLLBAR
               var chartScrollbar = new AmCharts.ChartScrollbar();
               chartScrollbar.resizeEnabled = true;
               console.log( chartScrollbar );

               chart.addChartScrollbar(chartScrollbar);

               // LEGEND
               var legend = new AmCharts.AmLegend();
               legend.marginLeft = 110;
               legend.useGraphSettings = true;
               chart.addLegend(legend);

               // WRITE
               chart.write("chartdiv");
           });


           // this method is called when chart is first inited as we listen for "dataUpdated" event
           function zoomChart() {
               // different zoom methods can be used - zoomToIndexes, zoomToDates, zoomToCategoryValues
               chart.zoomToIndexes(10, 20);
           }
        </script>


<!--result-->
<div class="result view-section">
    <div class="inner wide-inner">

        <div class="result-top">
                <div class="result-left">
					<p><strong>Результаты подтверждены аудитором <a href="http://www.bdo.ru/rus/" target="_blank">БДО Юникон</a></strong></p>
					(<a href="mailto:clients@aistinvest.ru">отчеты высылаем по запросу</a>)
				</div>
			<div class="result-right">
                                                <a class="faq-button low" href="/index.php?option=com_content&amp;view=article&amp;id=1&amp;Itemid=102">Ответы на частые вопросы</a>
                                            </div>

            </div>

            <div class="result-chart hide-on-mobile">
			
				<?php  if(empty($method) || $method == 'graph'): ?>

<!--                <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div> -->
                <div id="chartdiv" style="min-width: 310px; height: 400px; margin: 0 auto">ttt</div>
				<?php endif; ?>

				<input type="hidden" name="method" id="aist_method" value="standart" />

				<input type="hidden" name="combine[]" id="aist_combine_a" class="aist_combine" value="a" />
				<input type="hidden" name="combine[]" id="aist_combine_b" class="aist_combine" value="b" />
				<input type="hidden" name="combine[]" id="aist_combine_c" class="aist_combine" value="c" />
				
            </div>
		
		<div class="t-trigger">
		
			<!--<?php if(empty($method)): ?>
			<div class="result-type"><a class="chart-combine"><span>Сравнить значения</span></a></div>
			<?php endif; ?>-->
			
			<ul class="result-triggers">
				<!--<li class="chart-link chart-a selected" data-chart="b" style="color:<?php echo $triggerA; ?>;" onclick="changetable ('1')"<span style="border-bottom:1px  <?php echo $triggerA; ?>;">Накопительный доход</span></li>-->
				<li id="bpercent" class="chart-link chart-b selected" data-chart="a" style="color:<?php echo $triggerB; ?>;" onclick="changetable ('2')"<span id="bpercent" style="border-bottom:1px  <?php echo $triggerA; ?>;">Основной процент</span>	</li>
				<li id="ddoll" class="chart-link chart-c" data-chart="c" style="color:<?php echo $triggerC; ?>;" onclick="changetable ('3')"<span id="dpercent" style="border-bottom:1px dashed <?php echo $triggerC; ?>;">Доход в долларах</span>	</li>
				<li style="padding-left: 150px;"><a style="text-decoration: underline;" href="https://docs.google.com/spreadsheets/d/1YFvm757p2WfcouIVScmclVDHg7PJIFMrQN_3UAtldDU/edit#gid=0" target="_blank">Подробная таблица</a></li>
			</ul>
		
		</div>		
		
		<?php if(empty($method) || $method == 'table'): ?>
        <div class="result-table" id="results">
            <table>
                <thead>
                <tr>
                    <th></th>
                    <th>Январь</th>
                    <th>Февраль</th>
                    <th>Март</th>
                    <th>Апрель</th>
                    <th>Май</th>
                    <th>Июнь</th>
                    <th>Июль</th>
                    <th>Август</th>
                    <th>Сентябрь</th>
                    <th>Октябрь</th>
                    <th>Ноябрь</th>
                    <th>Декабрь</th>
                    <th>Год</th>
                </tr>
                </thead>
                <tbody>
				<?php for($start;$start<$end;$start++): ?>
                <tr>
                    <td><?php echo $start; ?></td>
					<?php
					
						$total_percent = 0;
						$total_percent30 = 0;
						$total_usd = 0;
						
						$x = 0;
					
					?>
					<?php for($x = 1;$x<13;$x++): ?>
                    <td>
						<div class="data-table-a dontshow" id="1"  style="color:<?php echo $triggerA; ?>;"><?php if($data[$start][$x]['percent30']) echo $data[$start][$x]['percent30'].'%'; else echo '-'; ?></div>
						<div class="data-table-a percent" id="2"  style="color:<?php echo $triggerB; ?>;"><?php if($data[$start][$x]['percent']) echo $data[$start][$x]['percent'].'%'; else echo '-'; ?></div>
						<div class="data-table-a dontshow" id="3"  style="color:<?php echo $triggerC; ?>;"><?php if($data[$start][$x]['usd']) echo $data[$start][$x]['usd'].'%'; else echo '-'; ?></div>
					</td>
					<?php 
						$total_percent = $total_percent + $data[$start][$x]['percent'];
						$total_percent30 = $total_percent30 + $data[$start][$x]['percent30'];
						$total_usd = $total_usd + $data[$start][$x]['usd'];
					?>
					<?php endfor; ?>
					<td>
						<div class="data-table-a dontshow" id="1"  style="color:<?php echo $triggerA; ?>;"><?php echo $total_percent30; ?>%</div>
						<div class="data-table-a percent" id="2"  style="color:<?php echo $triggerB; ?>;"><?php echo $total_percent; ?>%</div>
						<div class="data-table-a dontshow" id="3"  style="color:<?php echo $triggerC; ?>;"><?php echo $total_usd; ?>%</div>
					</td>
                </tr>
				<?php endfor; ?>
                </tbody>
            </table>
		</div>
		<?php endif; ?>
    </div>
</div>
<!-- end of result-->

