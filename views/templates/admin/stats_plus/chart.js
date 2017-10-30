
function draw(labels){

							var X = ["TOTALES"];
							var total_orders 	= parseInt( document.getElementById( 'total_orders' 	).innerHTML ),
								total_visits 	= parseInt( document.getElementById( 'total_visits' 	).innerHTML ),
								total_customers = parseInt( document.getElementById( 'total_customers' 	).innerHTML ),
								total_products	= parseInt( document.getElementById( 'total_products'	).innerHTML ),
								total_sales 	= parseInt( document.getElementById( 'total_sales' 		).innerHTML ); 

							var ctx = document.getElementById("myChart").getContext('2d');
							var myChart = new Chart(ctx, {
								type: 'bar',
									data: {
										labels: X,
										datasets: [{
												label: 'Nro ventas realizadas',
												data: [total_orders],
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
												data: [total_visits],
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
												data: [total_customers],
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
												data: [total_products],
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