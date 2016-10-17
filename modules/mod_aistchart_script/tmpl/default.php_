<?php
defined('_JEXEC') or die;
jimport( 'joomla.database.table' );
?>

<script type="text/javascript">

/*chart*/
var randomScalingFactor = function () {
    return Math.round(Math.random() * 40)
};

var title = '';

var dataA = {
    name: "За месяц",
	color: "<?php echo $triggerA; ?>",
    data: [<?php echo $percent; ?>],
	borderWidth: 0
};

var dataB = {
    name: "После 30% комиссии",
	color: "<?php echo $triggerB; ?>",
    data: [<?php echo $percent30; ?>],
	borderWidth: 0
};
var dataC = {
    name: "В долларах",
	color: "<?php echo $triggerC; ?>",
    data: [<?php echo $usd; ?>],
	borderWidth: 0
};

var months = [<?php echo $data; ?>];

$(function(){
	
	if( $('#container').length > 0 ){
		
		$('#container').highcharts({
		
			chart: {
				type: 'column',
				backgroundColor: '#efefef',
			},
			title: {
				text: ''
			},
			xAxis: {
				categories: months,
				labels:{
					enabled: false					
				}
			},
			yAxis: {
		                title: {
                    		   	text: null
		                },
			},
			credits: {
				enabled: false
			},
			legend:{
				enabled: false
			},
			exporting:{
				enabled: false
			},
			series: [dataA]
		});	
		
	}
	
	
   $(document).on('click', '.chart-standart', function () {
		
		$('.chart-link').removeClass('selected');
		$("input.aist_combine").val('');
		$(this).addClass('selected');
		$('.chart-combine').removeClass('selected');
		$('input#aist_method').val('standart');
		
		$('.result-triggers .chart-a').trigger('click');
		
    });
	
    $(document).on('click', '.chart-combine', function () {
		
		var check = $('input#aist_method').val();
		
		if(check == 'combine'){
			
			$(this).children('span').html('Сравнить значения');
			
			//$('.chart-link').removeClass('selected');
			$("input.aist_combine").val('');
			$(this).removeClass('selected');
			$('.chart-combine').removeClass('selected');
			$('input#aist_method').val('standart');
		
		}
		else{
			
			$(this).children('span').html('Отключить сравнение');

			//$('.chart-combine').removeClass('selected');
			$("input.aist_combine").val('');
			//$(this).addClass('selected');
			$('.chart-combine').addClass('selected');
			$('input#aist_method').val('combine');
		
		}
		
		$('.result-triggers .chart-a').trigger('click');
		
    });	
	
    $(document).on('click', '.chart-link', function () {
		
		var Load = [];
		var method = $('input#aist_method').val();
		
		var word = $(this).data('chart');
		
		$('.result-table td div').hide();
		
		if(method == 'combine'){
			
			
			
			//проверяем количество
			var count = 0;
			$("input.aist_combine").each(function(){
				
				if($(this).val() != ''){
					count = count + 1;
				}
			});
			
			if($(this).hasClass('selected') && count > 1){
				$(this).removeClass('selected');
				$('input#aist_combine_' + word).val('');
			}
			else{
				$(this).addClass('selected');
				$('input#aist_combine_' + word).val(word);
			}
			
			var z = 0;
			
			//changeGraph('bar');
			$("input.aist_combine").each(function(){
				
				if($(this).val() != ''){
					
					var w = $(this).val();
					
					Load[z] = getData(w);
					
					z = z + 1;
					
					$('.result-table td div.data-table-' + w).show();
				}
			});
			
		}
		else{
			
			if(!$(this).hasClass('selected')){
				$('.chart-link').removeClass('selected');
				$(this).addClass('selected');
			}			
			
			Load[0] = getData(word);
			
			$('.result-table td div.data-table-' + word).show();
		}
		
		loadGraph(Load);
		
    });

	function loadGraph(data){
		
		var type = $('#aist_method').val();
		
		if( $('#container').length > 0 ){

			$('#container').highcharts({
			
				chart: {
					type: 'column',
					backgroundColor: '#efefef',
				},
				title: {
					text: ''
				},
				xAxis: {
					categories: months,
					labels:{
						enabled: false					
					}
				},
				credits: {
					enabled: false
				},
				legend:{
					enabled: false
				},
				exporting:{
					enabled: false
				},
				series: data
			});
		
		}
		
	}	
	
	function changeGraph(data){

		$('#aist_method').val(data);
		
		var line = $('#aist_line').val();

		if(line == 'c'){
			$('.result-triggers .chart-c').trigger('click');
		}
		else if(line == 'b'){
			$('.result-triggers .chart-b').trigger('click');
		}
		else if(line == 'd'){
			$('.result-triggers .chart-d').trigger('click');
		}
		else{
			$('.result-triggers .chart-a').trigger('click');
		}
		
	}

	function getData(word){
		
		if(word == 'a') data = dataA;
		else if(word == 'b') data = dataB;
		else if(word == 'c') data = dataC;
		else if(word == 'd') data = dataD;
		
		return data;
	}
	
});	
</script>