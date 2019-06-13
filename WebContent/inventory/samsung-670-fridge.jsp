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
					<img src="productimg/samsung-670-fridge.jpg" class="card-img"
						alt="Fridge Image Here">
				</div>
				<div class="col-md-5">
					<div class="card-body" style="font-family: sans-serif">
						<h4 class="card-title">
							<strong>Samsung 670 L Frost Free Double Door 3 Star
								Refrigerator</strong>
						</h4>
						<p class="card-text text-justify">Whether it is keeping your
							fruits and veggies cool and fresh or keeping your ice cream and
							desserts frozen for a long time, this 670 L double-door
							refrigerator from Samsung is the ideal friend in your kitchen.
							With features such as Cool Pack, Power Cool Mode, Twist Ice
							Maker, Power Freeze Mode, Twin Cooling Plus Technology, Digital
							Inverter Technology, Deodorizing Filter, and an Easy Slide Shelf,
							this refrigerator makes storing and cooling your food items seem
							easy.</p>
						<p class="card-text">
							<small class="text-muted">Top Selling Home Appliance
								Product!</small>
						</p>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">Sold by: <strong>SELLER
								NAME</strong></li>
						<li class="list-group-item"><h4>
								<strong>Rs.74,980</strong>
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