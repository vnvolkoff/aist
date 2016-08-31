<?php
defined('_JEXEC') or die;
jimport( 'joomla.database.table' );
?>

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
			
				<?php if(empty($method) || $method == 'graph'): ?>
                <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
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
				<!--<li class="chart-link chart-a selected" data-chart="b" style="color:<?php echo $triggerA; ?>;"><span style="border-bottom:1px dashed <?php echo $triggerA; ?>;">После 30% комиссии</span></li>-->
				<li class="chart-link chart-b selected" data-chart="a" style="color:<?php echo $triggerA; ?>;"><span style="border-bottom:1px dashed <?php echo $triggerA; ?>;">За месяц</span>	</li>
				<li class="chart-link chart-c" data-chart="c" style="color:<?php echo $triggerC; ?>;"><span style="border-bottom:1px dashed <?php echo $triggerC; ?>;">В долларах</span>	</li>
				<li style="padding-left: 150px;"><a style="text-decoration: underline;" href="https://docs.google.com/spreadsheets/d/1YFvm757p2WfcouIVScmclVDHg7PJIFMrQN_3UAtldDU/edit#gid=0" target="_blank">Подробная таблица</a></li>
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
						
						$x = 0;
					
					?>
					<?php for($x = 1;$x<13;$x++): ?>
                    <td>
						<div class="data-table-a percent" style="color:<?php echo $triggerA; ?>;"><?php if($data[$start][$x]['percent']) echo $data[$start][$x]['percent'].'%'; else echo '-'; ?></div>
						<div class="data-table-b percent30" style="color:<?php echo $triggerB; ?>;"><?php if($data[$start][$x]['percent30']) echo $data[$start][$x]['percent30'].'%'; else echo '-'; ?></div>
						<div class="data-table-c usd" style="color:<?php echo $triggerC; ?>;"><?php if($data[$start][$x]['usd']) echo $data[$start][$x]['usd'].'%'; else echo '-'; ?></div>
					</td>
					<?php 
						$total_percent = $total_percent + $data[$start][$x]['percent'];
						$total_percent30 = $total_percent30 + $data[$start][$x]['percent30'];
						$total_usd = $total_usd + $data[$start][$x]['usd'];
					?>
					<?php endfor; ?>
					<td>
						<div class="data-table-a percent" style="color:<?php echo $triggerA; ?>;"><?php echo $total_percent; ?>%</div>
						<div class="data-table-b percent30" style="color:<?php echo $triggerB; ?>;"><?php echo $total_percent30; ?>%</div>
						<div class="data-table-c usd" style="color:<?php echo $triggerC; ?>;"><?php echo $total_usd; ?>%</div>
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

