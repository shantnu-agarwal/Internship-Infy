<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>The Online Shop | Cart</title>
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

		<h1 class="text-center">My Cart</h1>
		<hr class="my-5	">
		<table class="table table-bordered table-hover" id="cart-table">
			<thead class="thead-dark">
				<tr>
					<th>Item Name</th>
					<th>Item Quantity</th>
					<th>Photo</th>
					<th>Item Cost (Rs.)</th>

				</tr>
			</thead>
			
		</table>



		<h3 id="totalCost"></h3>

		<form method="GET" action="ViewCart" id="viewcartform"
			name="cart-form" hidden>
			<input name="username"
				value="${pageContext.request.userPrincipal.name}" type="text">
		</form>
		<div></div>
		<div class="container text-center" style="margin-top: 2rem">
			<a class="btn btn-primary text-white" href="transaction/checkout.jsp"
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