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

	<div class="wrapper">
		<nav id="sidebar" style="background-color: #FFD54F">
			<div class="sidebar-header">
				<h3
					style="color: #6a5acd; margin-left: 60px; margin-bottom: 20px; margin-top: 120px; font-family: sans-serif">
					<strong>Products</strong>
				</h3>
			</div>
			<ul class="list-unstyled components text-white">
				<li
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 0px; padding-bottom: 10px; margin-left: 40px; margin-right: 40px;">
					<a href="/Internship-Infy/"
					style="color: white; font-family: sans-serif;">All Products</a>
				</li>
				<li class="active"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 0px; padding-bottom: 10px; margin-left: 40px; margin-top: 25px; margin-right: 40px;">
					<a href="/Internship-Infy/?category=electronics"
					style="color: white; font-family: sans-serif;">Home Appliances</a>
				</li>
				<li
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 25px; margin-right: 40px;">
					<a href="/Internship-Infy/?category=furniture"
					style="color: white; font-family: sans-serif;">Furniture</a>
				</li>
				<li
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 25px; margin-right: 40px; color: white; font-family: sans-serif;">
					<a href="/Internship-Infy/?category=Books"
					style="color: white; font-family: sans-serif;">Books</a>

				</li>
				<li
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 25px; margin-bottom: 20px; margin-right: 40px; color: white; font-family: sans-serif;">
					<a href="contact.jsp"
					style="color: white; font-family: sans-serif;">Contact</a>
				</li>
			</ul>
		</nav>
	</div>



	<!--------------------------------------------------------------------------------------------------------------
																			MAIN PAGE CONTENT 
			------------------------------------------------------------------------------------------------------------->
	<div id="content" style="margin-top: 100px;">

<h1 class="text-center"> My Cart</h1>
		<table id="cart-table">
			<tr>
				<th>Item Number</th>
				<th>Item Name</th>
				<th>Item Quantity</th>
				<th>Item Cost</th>
				<th>Seller Name</th>
				<th>Photo</th>
			</tr>
		</table>
		
		
		
		
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
		<form method="GET" action="ViewCart" id="viewcartform"
			name="cart-form" hidden>
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