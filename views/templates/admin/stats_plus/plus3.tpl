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

<script>

	var myChart;						
	
	function draw(id, labels, prefix,tg){	

		var tgs = ["tg1","tg2","tg3","tg4","tg5"], aux;
			tgs.forEach(function(element){
				aux = document.getElementById(element);
				if(element == tg){
					aux.className = "container col-md-2 menuActive";
				}
				else{
					aux.className = "container col-md-2 menu";
				}
			});

		var orders 	  = parseInt( document.getElementById( prefix+'_orders' 	).innerHTML ),
			visits 	  = parseInt( document.getElementById( prefix+'_visits' 	).innerHTML ),
			customers = parseInt( document.getElementById( prefix+'_customers' 	).innerHTML ),
			products  = parseInt( document.getElementById( prefix+'_products'	).innerHTML ),
			sales 	  = parseInt( document.getElementById( prefix+'_sales' 		).innerHTML ); 

		var value;
			value = document.getElementById("value1"); value.innerHTML = orders;
			value = document.getElementById("value2"); value.innerHTML = visits;
			value = document.getElementById("value3"); value.innerHTML = customers;
			value = document.getElementById("value4"); value.innerHTML = products;
			value = document.getElementById("value5"); value.innerHTML = sales;
			
			
			
		var ctx = document.getElementById(id).getContext('2d');
		if(myChart){
			myChart.destroy();
		}		
		myChart = new Chart(ctx, {
			type: 'bar',
				data: {
					labels: labels,
					datasets: [{
							label: 'Nro ventas realizadas',
							data: [orders],
							backgroundColor: [
								'rgba(16, 23, 93, 0.2)'
							],
							borderColor: [
								'rgba(16, 23, 93,1)'
							],
							borderWidth: 1
					},
					{
							label: 'Visitas totales',
							data: [visits],
							backgroundColor: [
								'rgba(63, 195, 0, 0.2)'
							],
							borderColor: [
								'rgba(63, 195, 0,1)'
							],
							borderWidth: 1
					},
					{
							label: 'Total clientes',
							data: [customers],
							backgroundColor: [
								'rgba(195,71, 32, 0.2)'
							],
							borderColor: [
								'rgba(195, 71,32,1)'
							],
							borderWidth: 1
					},
					{
							label: 'Total productos',
							data: [products],
							backgroundColor: [
								'rgba(50, 10,150, 0.2)'
							],
							borderColor: [
								'rgba(50, 10,150,1)'
							],
							borderWidth: 1
					},
					{  
							label: 'Monto total de ventas',
							data: [sales],
							backgroundColor: [
								'rgba(250, 10,150, 0.2)'
							],
							borderColor: [
								'rgba(250, 10,150,1)'
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
					}
				}
		});
	}
</script>




<style>
	.menu{
		border-color:rgba(0,0,0,0.5) !important;
		border-width:3px !important;
		background-color: rgba(0,99,157,0.1);
		background-color: rgba(245, 244, 243,0.5);
		height: 25px;
		transition: 0.5s;
		cursor: pointer;
	}
	.menuActive{
		background-color: rgb(245, 244, 243);
		height: 25px;
		box-shadow:0 -5px 10px rgba(0,0,0,0.3);
		transition:1s;
	}
	.tittle{
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
		padding-top:40px;
		padding-bottom:40px;
		background-color:rgba(221,219,215,0.3);
		width:100% !important;
		margin-right:25px !important;
		margin-left:10px !important;
		margin-top:0px !important;
		box-shadow:0 -3px 3px rgba(0,0,0,0.3);
	}
	.tabla{
		background-color: rgba(0, 109, 150, 0.1);
		border-color: rgba(0,0,0,0.3);
		border-style: inset;
		border-width: 1px;
		text-align:center;
	}
</style>



<div class="panel">
	<div class="panel-heading">
		<i class="icon-gear">
			Stats Plus
		</i>
	</div>
	
	<div class="row panel-body" style="padding-bottom:0px !important; padding-left:4px !important;">
		<div id="tg1" class="container col-md-2 menu">
			<h3 class="tittle" onclick="draw('myChart',['TOTALES'],'total','tg1'); draw('myChart2',['TOTALES'],'total','tg1')">Total</h3>
		</div>

		<div id="tg2"  class="container col-md-2 menu">
			<h3 class="tittle" onclick="draw('myChart',['MES ACTUAL'],'actual_month','tg2')">Mes Actual</h3>
		</div>

		<div id="tg3" class="container col-md-2 menu">
			<h3 class="tittle" onclick="draw('myChart',['MES ANTERIOR'],'last_month','tg3')">Mes Anterior</h3>
		</div>

		<div id="tg4" class="container col-md-2 menu">
			<h3 class="tittle" onclick="draw('myChart',['AÑO ACTUAL'],'actual_year','tg4')">Año Actual</h3>
		</div>
	
		<div id="tg5" class="container col-md-2 menu">
			<h3 class="tittle" onclick="draw('myChart',['AÑO ANTERIOR'],'last_year','tg5')">Año Anterior</h3>
		</div>
	</div>
	
	<div class="container cont" style="padding-top:10px !important; padding-bottom:10px !important; margin-left:0px !important;">
		<div class="jumbotron col-md-12">

		<div class="container" style="margin-left: 0px !important;">
			<i class="icon-AdminParentStats col-md-12" style="font-size:17px; text-align:left;">Estadisticas totalizadas...</i>
		</div>	
		

		<div style="width:100% !important;">
			<div class="panel-body">
			
				<div class="container col-md-3 tabla">
					<h5 style="margin-top:1.5px; margin-bottom:1.5px;">Número de ventas realizadas</h5>
					<label id="value1">0</label>
				</div>

				<div class="container col-md-2 tabla">
					<h5 style="margin-top:1.5px; margin-bottom:1.5px;">Visitas Totales</h5>
					<label id="value2">0</label>
				</div>

				<div class="container col-md-2 tabla">
					<h5 style="margin-top:1.5px; margin-bottom:1.5px;">Total Clientes</h5>
					<label id="value3">0</label>
				</div>

				<div class="container col-md-2 tabla">
					<h5 style="margin-top:1.5px; margin-bottom:1.5px;">Total de productos</h5>
					<label id="value4">0</label>
				</div>

				<div class="container col-md-3 tabla">
					<h5 style="margin-top:1.5px; margin-bottom:1.5px;">Monto Total de Ventas</h5>
					<label id="value5">0</label>
				</div>
			</div>	
		</div>
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<canvas id="myChart"></canvas>
			</div>
			
		</div>


		</div>
	</div>
</div>
