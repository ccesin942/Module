{*
* LISTADO DE VARIABLES DISPONIBLES EN EL TPL PARA MOSTRAR LAS ESTADISTICAS
*	total_sales
*	total_orders
*	total_customers
*	total_visits
*	total_products
*	actual_month_customers
*	actual_month_orders
*	actual_month_visits
*	actual_month_products
*	actual_month_sales
*	last_month_customers
*	last_month_orders
*	last_month_visits
*	last_month_products
*	last_month_sales
*	actual_year_customers
*	actual_year_orders
*	actual_year_visits
*	actual_year_products
*	actual_year_sales
*	last_year_customers
*	last_year_orders
*	last_year_visits
*	last_year_products
*	last_year_sales
*}


{*-------------------------------------------------BLOQUE ETIQUETAS PARA CARGAR VARIABLES DESDE EL DOM-----------------------------------------*}

		{*<h3>----------------------------------------------TOTALES------------------------------------</h3>*}
		
		{*---------------------------------<h5>Número de ventas realizadas</h5>*}
		{foreach item=con from=$total_orders}
			<p id="total_orders" style="display:none;">		{$con.total}</p>
		{/foreach}
			
		{*---------------------------------------------<h5>Visitas Totales</h5>*}
		{foreach item=con from=$total_visits}
			<p id="total_visits" style="display:none;">		{$con.total}</p>
		{/foreach}
		
		{*----------------------------------------------<h5>Total Clientes</h5>*}
		{foreach item=con from=$total_customers}
			<p id="total_customers" style="display:none;">	{$con.total}</p>
		{/foreach}
		
		{*------------------------------------------<h5>Total de productos</h5>*}
		{foreach item=con from=$total_products}
			<p id="total_products" style="display:none;">	{$con.total}</p>
		{/foreach}
			
		{*---------------------------------------<h5>Monto Total de Ventar</h5>*}
		{foreach item=con from=$total_sales}
			<p id="total_sales" style="display:none;">		{$con.total}</p>
		{/foreach}

		
		{*------------------------------------------<h3>Mes Actual</h3>----------------------------------*}

		{*---------------------------------<h5>Número de ventas realizadas</h5>*}
		{foreach item=con from=$actual_month_orders}
			<p id="actual_month_orders" style="display:none;">		{$con.total} </p>
		{/foreach}
		{*---------------------------------------------<h5>Visitas Totales</h5>*}
		{foreach item=con from=$actual_month_visits}
			<p id="actual_month_visits" style="display:none;"> 		{$con.total} </p>
		{/foreach}
		{*----------------------------------------------<h5>Total Clientes</h5>*}
		{foreach item=con from=$actual_month_customers}
			<p id="actual_month_customers" style="display:none;">	{$con.total} </p>
		{/foreach}
		{*------------------------------------------<h5>Total de productos</h5>*}
		{foreach item=con from=$actual_month_products}
			<p id="actual_month_products" style="display:none;"> 	{$con.total} </p>
		{/foreach}
		{*---------------------------------------<h5>Monto Total de Ventar</h5>*}
		{foreach item=con from=$actual_month_sales}
			<p id="actual_month_sales" style="display:none;">		{$con.total} </p>
		{/foreach}
		
	
	
		{*------------------------------------------<h3>Mes Anterior</h3>-----------------------------------*}
		
		{*---------------------------------<h5>Número de ventas realizadas</h5>*}
		{foreach item=con from=$last_month_orders}
			<p id="last_month_orders" style="display:none;">	{$con.total}</p>
		{/foreach}
				
		{*---------------------------------------------<h5>Visitas Totales</h5>*}
		{foreach item=con from=$last_month_visits}
			<p id="last_month_visits" style="display:none;">	{$con.total}</p>
		{/foreach}
				
		{*----------------------------------------------<h5>Total Clientes</h5>*}
		{foreach item=con from=$last_month_customers}
			<p id="last_month_customers" style="display:none;">	{$con.total}</p>
		{/foreach}
				
		{*------------------------------------------<h5>Total de productos</h5>*}
		{foreach item=con from=$last_month_products}
			<p id="last_month_products" style="display:none;">	{$con.total}</p>
		{/foreach}
				
		{*---------------------------------------<h5>Monto Total de Ventar</h5>*}
		{foreach item=con from=$last_month_sales}
			<p id="last_month_sales" style="display:none;">		{$con.total}</p>
		{/foreach}
		
	

	
		{*-------------------------------------------<h3>Año Actual</h3>-----------------------------------*}
		
		{*-----------------------------------<h5>Número de ventas realizadas</h5>*}
		{foreach item=con from=$actual_year_orders}
			<p id="actual_year_orders" style="display:none;">	{$con.total}</p>
		{/foreach}
				
		{*-----------------------------------------------<h5>Visitas Totales</h5>*}
		{foreach item=con from=$actual_year_visits}
			<p id="actual_year_visits" style="display:none;">	{$con.total}</p>
		{/foreach}
				
		{*------------------------------------------------<h5>Total Clientes</h5>*}
		{foreach item=con from=$actual_year_customers}
			<p id="actual_year_customers" style="display:none;">{$con.total}</p>
		{/foreach}
				
		{*--------------------------------------------<h5>Total de productos</h5>*}
		{foreach item=con from=$actual_year_products}
			<p id="actual_year_products" style="display:none;">	{$con.total}</p>
		{/foreach}
				
		{*-----------------------------------------<h5>Monto Total de Ventar</h5>*}
		{foreach item=con from=$actual_year_sales}
			<p id="actual_year_sales" style="display:none;">	{$con.total}</p>
		{/foreach}
		
	

	
		{*------------------------------------------<h3>Año Anterior</h3>-----------------------------------*}
		
		{*------------------------------<h5>Número de ventas realizadas</h5>*}
		{foreach item=con from=$last_year_orders}
			<p id="last_year_orders" style="display:none;">		{$con.total}</p>
		{/foreach}
				
		{*------------------------------------------<h5>Visitas Totales</h5>*}
		{foreach item=con from=$last_year_visits}
			<p id="last_year_visits" style="display:none;">		{$con.total}</p>
		{/foreach}
				
		{*-------------------------------------------<h5>Total Clientes</h5>*}
		{foreach item=con from=$last_year_customers}
			<p id="last_year_customers" style="display:none;">	{$con.total}</p>
		{/foreach}
				
		{*---------------------------------------<h5>Total de productos</h5>*}
		{foreach item=con from=$last_year_products}
			<p id="last_year_products" style="display:none;">	{$con.total}</p>
		{/foreach}
				
		{*------------------------------------<h5>Monto Total de Ventar</h5>*}
		{foreach item=con from=$last_year_sales}
			<p id="last_year_sales" style="display:none;">		{$con.total}</p>
		{/foreach}


{*---------------------------------------------BLOQUE DE JAVASCRIPT PARA GENERAR EL CHART-----------------------------------------------*}

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.0/Chart.bundle.js"></script> {*-----------> CDN chart.JS*}
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>

<script>

	function change(tg,msg){	
		if(myChart) myChart.destroy() ;
		var cc  = document.getElementById('chart1'),
			cc2 = document.getElementById('chart2');

		cc.style  = 'display:none;';
		cc2.style = 'display:none;';
			

		var value;
			value = document.getElementById("value1" ); value.innerHTML = '?';
			value = document.getElementById("value2" ); value.innerHTML = '?';
			value = document.getElementById("value3" ); value.innerHTML = '?';
			value = document.getElementById("value4" ); value.innerHTML = '?';
			value = document.getElementById("value5" ); value.innerHTML = '?';
			value = document.getElementById("_value1"); value.innerHTML = '?';
			value = document.getElementById("_value2"); value.innerHTML = '?';
			value = document.getElementById("_value3"); value.innerHTML = '?';
			value = document.getElementById("_value4"); value.innerHTML = '?';
			value = document.getElementById("_value5"); value.innerHTML = '?';

		var control = document.getElementById('stats_control');
			control.innerHTML = tg;

		var tgs = ["tg1","tg2","tg3"],  aux,sbm,l;
			tgs.forEach(function(element){
				aux = document.getElementById(element);
				if(element == tg){
					aux.className = "container col-md-2 menuActive";
				}
				else{
					aux.className = "container col-md-2 menu_";
				}
			});
			
			if(msg == 'Total'){
				sbm = document.getElementById('sbMenuActual');
				l = document.getElementById('l1');
				l.innerHTML = msg;
				
				sbm = document.getElementById('sbMenuAnterior');
				sbm.style = 'display:none;';
				
				sbm = document.getElementById('sbMenuComp');
				sbm.style = 'display:none;';
			}
			else{	
				sbm = document.getElementById('sbMenuActual');
				l = document.getElementById('l1');
				l.innerHTML = msg + ' Actual';
				sbm.className = "fa fa-calendar-check-o col-md-2 subMenu";
				sbm.style = '';
			
				sbm = document.getElementById('sbMenuAnterior');
				l = document.getElementById('l2');
				l.innerHTML = msg + ' Anterior';
				sbm.className = "fa fa-mail-reply col-md-2 subMenu";
				sbm.style = '';

				sbm = document.getElementById('sbMenuComp');
				l = document.getElementById('l3');
				l.innerHTML = 'Comparacion';
				sbm.className = "fa fa-random col-md-2 subMenu";
				sbm.style = '';
			}
	}		
</script>

<script>

	var myChart;						

	function draw(id, time, time2, align, opt){	

		var cc  = document.getElementById('chart1'),
			cc2 = document.getElementById('chart2');
		
		if(align == 'C'){
			cc.className = 'col-md-8 col-md-offset-2';
			cc.style  = '';
			cc2.style = 'display:none;';
		}
		else{
			cc.className  = 'col-md-6';
			cc.style  = '';
			cc2.className = 'col-md-6';
			cc2.style = '';
		} 

		var control = document.getElementById('stats_control'),prefix, prefix2, labels;
		if(control.innerHTML == 'tg1'){
			prefix = 'total';
		}
		else 
		if(control.innerHTML == 'tg2'){
			prefix  = time  + 'month';
			prefix2 = time2 + 'month';
		}
		else
		if(control.innerHTML == 'tg3'){
			prefix  = time  + 'year';
			prefix2 = time2 + 'year';
		}
		
		var orders 	   = parseInt( document.getElementById( prefix  +'_orders' 	  ).innerHTML ),
			visits 	   = parseInt( document.getElementById( prefix  +'_visits' 	  ).innerHTML ),
			customers  = parseInt( document.getElementById( prefix  +'_customers' ).innerHTML ),
			products   = parseInt( document.getElementById( prefix  +'_products'  ).innerHTML ),
			sales 	   = parseInt( document.getElementById( prefix  +'_sales' 	  ).innerHTML );if(!sales)sales=0;

		if(opt == 1){
			var	orders2	   = parseInt( document.getElementById( prefix2 +'_orders' 	  ).innerHTML ),
				visits2	   = parseInt( document.getElementById( prefix2 +'_visits' 	  ).innerHTML ),
				customers2 = parseInt( document.getElementById( prefix2 +'_customers' ).innerHTML ),
				products2  = parseInt( document.getElementById( prefix2 +'_products'  ).innerHTML ),
				sales2	   = parseInt( document.getElementById( prefix2 +'_sales' 	  ).innerHTML ); if(!sales2)sales2=0;
		}

		var ctx = document.getElementById(id).getContext('2d');
		
		var value;
		
		if(myChart){ myChart.destroy(); alert('myChart deleted');}
		
		if(opt == '0'){ 
			myChart = new Chart(ctx, {
			type: 'bar',
				data: {
					labels: ['Nro ventas','Visitas totales','Clientes','Productos','Monto Ventas'],
					datasets: [{
							label: 'Mes Actual',
							data: [orders,visits,customers,products/*,sales*/],
							backgroundColor: [
								'rgba(16, 23, 93, 0.7)',
								'rgba(63, 195, 0, 0.7)',
								'rgba(195,71, 32, 0.7)',
								'rgba(50, 10,150, 0.7)'/*,
								'rgba(250, 10,150, 0.7)'*/								
							],
							borderColor: [
								'rgba(16, 23, 93, 0)',
								'rgba(16, 23, 93, 0)',
								'rgba(16, 23, 93, 0)',
								'rgba(16, 23, 93, 0)'/*,
								'rgba(16, 23, 93, 0)'*/
							],
							borderWidth: 1
					}]
					},
				options: {
					scales: {
						yAxes: [{
							ticks: {
								beginAtZero:true
							}
						}]
					},
					legend: {
      					display: true,
      					labels: {
      					  fontColor: '#555'
      					},
      					position: 'bottom'
					}
				}
		});
		value = document.getElementById("value1"); value.innerHTML = orders;
		value = document.getElementById("value2"); value.innerHTML = visits;
		value = document.getElementById("value3"); value.innerHTML = customers;
		value = document.getElementById("value4"); value.innerHTML = products;
		value = document.getElementById("value5"); value.innerHTML = sales;
		}
		else
		if(opt == '1'){ 
			myChart = new Chart(ctx, {
			type: 'bar',
				data: {
					labels: ['Nro ventas','Visitas totales','Clientes','Productos','Monto Ventas'],
					datasets: [{
							label: 'Mes Actual',
							data: [orders,visits,customers,products/*,sales*/],
							backgroundColor: [
								'rgba(16, 23, 93, 0.7)',
								'rgba(63, 195, 0, 0.7)',
								'rgba(195,71, 32, 0.7)',
								'rgba(50, 10,150, 0.7)'/*,
								'rgba(250, 10,150, 0.7)'*/								
							],
							borderColor: [
								'rgba(16, 23, 93, 0)',
								'rgba(16, 23, 93, 0)',
								'rgba(16, 23, 93, 0)',
								'rgba(16, 23, 93, 0)'/*,
								'rgba(16, 23, 93, 0)'*/
							],
							borderWidth: 1
					},
					{
							label: 'Mes Anterior',
							data: [orders2,visits2,customers2,products2/*,sales2*/],
							backgroundColor: [
								'rgba(16, 23, 93, 0.7)',
								'rgba(63, 195, 0, 0.7)',
								'rgba(195,71, 32, 0.7)',
								'rgba(50, 10,150, 0.7)'/*,
								'rgba(250, 10,150, 0.7)'*/								
							],
							borderColor: [
								'rgba(16, 23, 93, 0)',
								'rgba(16, 23, 93, 0)',
								'rgba(16, 23, 93, 0)',
								'rgba(16, 23, 93, 0)'/*,
								'rgba(16, 23, 93, 0)'*/
							],
							borderWidth: 1
					}]
					},
				options: {
					scales: {
						yAxes: [{
							ticks: {
								beginAtZero:true
							}
						}]
					},
					legend: {
						display: true,
						labels: {
							fontColor: '#555'
						},
						position: 'bottom'
					}
			
				}
		});
		value = document.getElementById("value1"); value.innerHTML = orders;
		value = document.getElementById("value2"); value.innerHTML = visits;
		value = document.getElementById("value3"); value.innerHTML = customers;
		value = document.getElementById("value4"); value.innerHTML = products;
		value = document.getElementById("value5"); value.innerHTML = sales; 
		
		value = document.getElementById("_value1"); value.innerHTML = orders2;
		value = document.getElementById("_value2"); value.innerHTML = visits2;
		value = document.getElementById("_value3"); value.innerHTML = customers2;
		value = document.getElementById("_value4"); value.innerHTML = products2;
		value = document.getElementById("_value5"); value.innerHTML = sales2;
		}
		
		
	}
</script>

<style>
	.menu_{
		color:#afafaf;
		font-weight: bold !important;
		padding-left: 72.5px !important;
		border-color:rgba(0,0,0,0.5) !important;
		height: 25px;
		transition: 1.5s!important;
		cursor: pointer;
	}
	.menu_:hover{
		color: rgb(37, 137, 236) !important;
	}
	.menuActive{
		padding-right: 145px !important;
		height: 25px;
		border-bottom-style: inset !important;
		border-bottom-width: 3px !important;
		border-bottom-color: rgb(37, 137, 236) !important;
		transition:0.2s;
	}

	.subMenu{
		font-size:20px;
		margin-bottom: 10px !important; 
		padding-top: 2.5px; 
		padding-bottom: 2.5px;
		cursor:pointer;
		color: #afafaf;
		transition:0.5s;
	}
	.subMenu:hover{
		color: rgb(37, 137, 236) !important;
	}

	.tittle{
		border-color:rgba(0,0,0,0);
		font-weight: bold !important;
		margin: 0px !important;
		height: 25px;
	}
	.value{
		color: white;
		display:block !important;
		margin: auto;
		text-shadow: 2px 2px rgba(0, 0, 0, 0.5);
		text-align: center;
		font-size: xx-large;
		background-color: rgba(0, 0, 0, 0.2);
	}
	.cont{
		padding-top:25px;
		padding-bottom:10px;
		background-color: white;
		width:100% !important;
		margin-right:25px !important;
		margin-left:0px !important;
		margin-top:0px !important;
		box-shadow:3px 3px 3px rgba(0,0,0,0.2);
		border-top-style: inset !important;
		border-top-width: 1px !important;
		border-top-color: rgba(0,0,0,0.1) !important;
	}
	.tabla{
		background-color: #d0e0ff;
		border-color: rgba(0,0,0,0);
		text-align:center;
		height: 53px;
		transition:1s;
		padding:0px !important;
	}
	.tab_head{
		background-color: #639afd;
		color: white !important;
		margin-top: 0px !important; 
		margin-bottom: 0px !important; 
		height: 2.3em;
	}
</style>



<div class="panel" style="padding:0px !important;">
	<div class="row panel-body" style="background-color: white; padding:0px !important; margin-right:0px !important; margin-left:0px !important;">
		<div id="tg1" class="container col-md-2 menu_">
			<h3 style="border-bottom-color: rgba(0,0,0,0);" class="tittle" onclick="change('tg1','Total')">Total</h3>
		</div>

		<div id="tg2"  class="container col-md-2 menu_">
			<h3 style="border-bottom-color: rgba(0,0,0,0);" class="tittle" onclick="change('tg2','Mes')">Mes</h3>
		</div>
		<div id="tg3" class="container col-md-2 menu_">
			<h3 style="border-bottom-color: rgba(0,0,0,0);" class="tittle" onclick="change('tg3','Año')">Año</h3>
		</div>
	</div>
	
	<div class="container cont">
		<div class="jumbotron col-md-12">

		<p id="stats_control" style="display:none;"></p>

		<div class="row col-md-12" >
			<i id="sbMenuActual" 	class="fa fa-calendar-check-o col-md-2 subMenu" onclick="draw('myChart','actual_','last_','C','0')"> <label id="l1" style="font-size:13px; padding-left:5px;"> Estadistica_Actual		</label></i>
			<i id="sbMenuAnterior" 	class="fa fa-mail-reply 	  col-md-2 subMenu" onclick="draw('myChart','last_'  ,'last_','C','0')"> <label id="l2" style="font-size:13px; padding-left:5px;"> Estadistica_Anterior	</label></i>
			<i id="sbMenuComp"	 	class="fa fa-random 		  col-md-2 subMenu" onclick="draw('myChart','actual_','last_','D','1')"> <label id="l3" style="font-size:13px; padding-left:5px;"> Comparacion				</label></i>
		</div>	
		

		
		<div class="row">
			<div id="chart1" class="col-md-6 chart_cont" style="display:none;">
				<i class="fa fa-bar-chart" style="font-size: 15px !important;" aria-hidden="true"><label style="font-size:12px !important;">Data Estadistica Actual</label></i>
				<div style="width:100% !important;">
					<div class="panel-body" style="padding: 0px !important;">
					
						<div class="container col-md-3 tabla">
							<h5 class="tab_head">Número de ventas realizadas</h5>
							<label id="value1">0</label>
						</div>

						<div class="container col-md-2 tabla">
							<h5 class="tab_head">Visitas Totales</h5>
							<label id="value2">0</label>
						</div>

						<div class="container col-md-2 tabla">
							<h5 class="tab_head">Total Clientes</h5>
							<label id="value3">0</label>
						</div>

						<div class="container col-md-2 tabla">
							<h5 class="tab_head">Total de productos</h5>
							<label id="value4">0</label>
						</div>

						<div class="container col-md-3 tabla">
							<h5 class="tab_head">Monto Total de Ventas</h5>
							<label id="value5">0</label>
						</div>
					</div>	
				</div>
			</div>
			<div id="chart2" class="col-md-6 chart_cont" style="display:none;">
				<i class="fa fa-bar-chart" style="font-size: 15px !important;" aria-hidden="true"><label style="font-size: 12px !important;">Data Estadistica Anterior</label></i>
				<div style="width:100% !important;">
					<div class="panel-body" style="padding: 0px !important;">
					
						<div class="container col-md-3 tabla">
							<h5 class="tab_head">Nro Ventas realizadas</h5>
							<label id="_value1">0</label>
						</div>

						<div class="container col-md-2 tabla">
							<h5 class="tab_head">Visitas Totales</h5>
							<label id="_value2">0</label>
						</div>

						<div class="container col-md-2 tabla">
							<h5 class="tab_head">Total Clientes</h5>
							<label id="_value3">0</label>
						</div>

						<div class="container col-md-2 tabla">
							<h5 class="tab_head">Total de productos</h5>
							<label id="_value4">0</label>
						</div>

						<div class="container col-md-3 tabla">
							<h5 class="tab_head">Monto Total de Ventas</h5>
							<label id="_value5">0</label>
						</div>
					</div>	
				</div>
			</div>
			<div class="col-md-8 col-md-offset-2" style="margin-top:35px;"><canvas id="myChart"></canvas></div>

		</div>
	</div>
</div>
