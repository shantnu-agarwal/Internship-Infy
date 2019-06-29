<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>The Online Shop | Home</title>
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body>



	<%@ include file="/template/header.jsp"%>



	<!--------------------------------------------------------------------------------------------------------------
																			LEFT SIDE MENU
							------------------------------------------------------------------------------------------------------------->

	<%@ include file="/template/sidebar.jsp"%>



	<!--------------------------------------------------------------------------------------------------------------
																			MAIN PAGE CONTENT 
			------------------------------------------------------------------------------------------------------------->
	<div id="content" style="margin-top: 100px;">

		<div class="card mb-3 mx-auto" style="max-width: 80%;">
			<div class="card-header">ITEM NUMBER : #</div>
			<div class="row no-gutters">
				<div class="col-md-4" style="height: 400px">
					<img src="inventory/productimg/samsung-670-fridge.jpg"
						class="card-img" alt="Product Image" height=100%;>
				</div>
				<div class="col-md-8">


					<div class="card-body">
						<ul class="list-group">
							<li class="list-group-item">
								<h5 class="card-title">PRODUCT NAME HERE</h5>
								<p class="card-text">SELLER NAME HERE</p>
								<p class="card-text">
									<small class="text-muted">Added on: DATE AND TIME HERE</small>
								</p>
							</li>
							<li class="list-group-item">
								<p class="card-text">QUANTITY HERE</p>
								<div class="btn-group" role="group" aria-label="Basic example">
									<button type="button" class="btn btn-secondary">-</button>
									<a class="btn btn-secondary disabled">Choosen Quantity</a>
									<button type="button" class="btn btn-secondary">+</button>
								</div>
							</li>
							<hr class="my-4">
							<li class="list-group-item mx-auto">
								<p class="card-text" style="color: BLUE">Rs. 99999</p>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<form method="GET" action="ViewCart" hidden id="viewcartform"
			name="cart-form">
			<input name="username"
				value="${pageContext.request.userPrincipal.name}" type="text">
		</form>
		<div></div>
		<div class="container text-center" style="margin-top: 2rem">
			<a class="btn btn-primary text-white" href="#!"
				style="background-color: green"><h4>Checkout</h4></a>
		</div>



	</div>








	<!--------------------------------------------------------------------------------------------------------------
																			FOOTER  
			------------------------------------------------------------------------------------------------------------->


	<%@ include file="/template/footer.jsp"%>


	<!--------------------------------------------------------------------------------------------------------------
																				SCRIPTS HERE
						------------------------------------------------------------------------------------------------------------->

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/viewCart.js"></script>


</body>
</html>