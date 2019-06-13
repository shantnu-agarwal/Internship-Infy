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
					<img src="productimg/whirlpool-330-fridge.jpeg" class="card-img"
						alt="Fridge Image Here">
				</div>
				<div class="col-md-5">
					<div class="card-body" style="font-family: sans-serif">
						<h4 class="card-title">
							<strong>Whirlpool 330 L Frost Free Triple Door
								Refrigerator</strong>
						</h4>
						<p class="card-text text-justify">From retaining moisture to
							eliminating bacteria, this 330 L refrigerator from Whirlpool has
							everything in place to keep your food and daily essentials such
							as fruits and vegetables fresh and tasty for a longer period of
							time. Its Triple-door design includes an Active Fresh Zone where
							you can store your fruits and vegetables and avoid odor-mixing.</p>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">Sold by: <strong>SELLER
								NAME</strong></li>
						<li class="list-group-item"><h4>
								<strong>Rs.40,600</strong>
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