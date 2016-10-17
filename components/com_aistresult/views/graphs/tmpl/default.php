<?php
/** @var $this AistresultViewGraphs */
defined( '_JEXEC' ) or die; // No direct access

$data = Array();

foreach ( $this->items as $item ){
	
	$data[$item->gyear][$item->gmonth]['percent'] = $item->gpercent;
	$data[$item->gyear][$item->gmonth]['percent30'] = $item->gpercent30;
	$data[$item->gyear][$item->gmonth]['usd'] = $item->gusd;
}


$componentParams = &JComponentHelper::getParams('com_aistresult');
$start = $componentParams->get('start', '2014'); 
$end = date('Y') + 1;

$otchet1 = $componentParams->get('otchet1');
$otchet2 = $componentParams->get('otchet2');

$triggerA = $componentParams->get('triggerA');
$triggerB = $componentParams->get('triggerB'); 
$triggerC = $componentParams->get('triggerC'); 

$method = JRequest::getVar('method');

?>

<!--result-->
<div class="result view-section">
    <div class="inner wide-inner">

        <div class="result-top">
                <div class="result-left">
					<p>Результаты подтверждены аудитором БДО Юникон 2</p>
					<a href="http://www.aistinvest.ru/docs/aist-invest-report20142015q1.pdf" target="_blank">Отчет #12222</a> <a href="http://www.aistinvest.ru/docs/aist-invest-report2015q2.pdf" target="_blank">Отчетвмвапвапвап #2</a>
				</div>

            </div>

            <div class="result-chart hide-on-mobile">
			
				<?php if(empty($method) || $method == 'graph'): ?>
                <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
				<?php endif; ?>

				<input type="hidden" name="method" id="aist_method" value="standart" />

				<input type="hidden" name="combine[]" id="aist_combine_a" class="aist_combine" value="a" />
				<input type="hidden" name="combine[]" id="aist_combine_b" class="aist_combine" value="b" />
				<input type="hidden" name="combine[]" id="aist_combine_c" class="aist_combine" value="c" />
				
            </div>
		
		<div class="t-trigger">
		
			<?php if(empty($method)): ?>
			<div class="result-type"><a class="chart-combine"><span>Включить режим сравнения</span></a></div>
			<?php endif; ?>
			
			<ul class="result-triggers">
				<li class="chart-link chart-a selected" data-chart="a" style="color:<?php echo $triggerA; ?>;">&bull; <span style="border-bottom:1px dashed <?php echo $triggerA; ?>;">За месяц</span></li>
				<li class="chart-link chart-b" data-chart="b" style="color:<?php echo $triggerB; ?>;">&bull; <span style="border-bottom:1px dashed <?php echo $triggerB; ?>;">После 30% комиссии</span>	</li>
				<li class="chart-link chart-c" data-chart="c" style="color:<?php echo $triggerC; ?>;">&bull; <span style="border-bottom:1px dashed <?php echo $triggerC; ?>;">В долларах</span>	</li>
			</ul>
		
		</div>		
		
		<?php if(empty($method) || $method == 'table'): ?>
        <div class="result-table">
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
						$total_mmvb = 0;
						
						$x = 0;
					
					?>
					<?php for($x = 1;$x<13;$x++): ?>
                    <td>
						<div class="data-table-a percent" style="color:<?php echo $triggerA; ?>;"><?php if($data[$start][$x]['percent']) echo $data[$start][$x]['percent'].'%'; else echo '-'; ?></div>
						<div class="data-table-b percent30" style="color:<?php echo $triggerB; ?>;"><?php if($data[$start][$x]['percent30']) echo $data[$start][$x]['percent30'].'%'; else echo '-'; ?></div>
						<div class="data-table-c usd" style="color:<?php echo $triggerC; ?>;"><?php if($data[$start][$x]['usd']) echo $data[$start][$x]['usd'].'%'; else echo '-'; ?></div>
						<div class="data-table-d mmvb" style="color:<?php echo $triggerD; ?>;"><?php if($data[$start][$x]['mmvb']) echo $data[$start][$x]['mmvb'].'%'; else echo '-'; ?></div>
					</td>
					<?php 
						$total_percent = $total_percent + $data[$start][$x]['percent'];
						$total_percent30 = $total_percent30 + $data[$start][$x]['percent30'];
						$total_usd = $total_usd + $data[$start][$x]['usd'];
						$total_mmvb = $total_mmvb + $data[$start][$x]['usd'];
					?>
					<?php endfor; ?>
					<td>
						<div class="data-table-a percent" style="color:<?php echo $triggerA; ?>;"><?php echo $total_percent; ?>%</div>
						<div class="data-table-b percent30" style="color:<?php echo $triggerB; ?>;"><?php echo $total_percent30; ?>%</div>
						<div class="data-table-c usd" style="color:<?php echo $triggerC; ?>;"><?php echo $total_usd; ?>%</div>
						<div class="data-table-d mmvb" style="color:<?php echo $triggerD; ?>;"><?php echo $total_mmvb; ?>%</div>
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

