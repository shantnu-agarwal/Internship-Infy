<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product ABC | The Online Shop</title>
<link rel="stylesheet" href="../css/index.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">

</head>
<body>

	<%@ include file="../template/header.jsp"%>



	<!--------------------------------------------------------------------------------------------------------------
																			LEFT SIDE MENU
							------------------------------------------------------------------------------------------------------------->

	<%@ include file="/template/sidebar.jsp"%>



	<!--------------------------------------------------------------------------------------------------------------
																			MAIN PAGE CONTENT 
			------------------------------------------------------------------------------------------------------------->
	<div id="content" style="margin-top: 100px; margin-left: 10rem;">

		<div class="card md-10" style="width: auto;">
			<div class="row no-gutters">
				<div class="col-md-5">
					<img src="productimg/lg-675-fridge.jpeg" class="card-img"
						alt="Fridge Image Here">
				</div>
				<div class="col-md-5">
					<div class="card-body" style="font-family: sans-serif">
						<h4 class="card-title">
							<strong>LG 675 L Frost Free Side by Side Refrigerator</strong>
						</h4>
						<p class="card-text text-justify">Digital Inverter Compressor
							intelligently varies its power and running speed according to
							immediate cooling requirement of the compressor. It does not
							require a stabilizer since it comes with an voltage fluctuation
							safe internal circuitary. However, if you face frequent voltage
							fluctuations, an external stabilizer is recommended.</p>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">Sold by: <strong>SELLER
								NAME</strong></li>
						<li class="list-group-item"><h4>
								<strong>Rs.1,29,749</strong>
							</h4></li>
						<li class="list-group-item"><a class="btn" href="#!"> <img
								alt="Add to Cart" src="img/carticon.png"
								style="max-width: 2rem; margin-right: 1rem">Add to Cart
						</a></li>
						<li class="list-group-item"><a class="btn" href="#!"> <img
								alt="Buy Now!" src="img/buynow.png"
								style="max-width: 2rem; margin-right: 1rem">Buy Now
						</a></li>
					</ul>
				</div>

			</div>
		</div>







	</div>





	<!--------------------------------------------------------------------------------------------------------------
																			FOOTER  
			------------------------------------------------------------------------------------------------------------->


	<%@ include file="/template/footer.jsp"%>




	<!--------------------------------------------------------------------------------------------------------------
																				SCRIPTS HERE
						------------------------------------------------------------------------------------------------------------->

	<script type="javascript" src="/js/jquery.min.js"></script>
	<script type="javascript" src="/js/bootstrap.min.js"></script>
</body>
</html>