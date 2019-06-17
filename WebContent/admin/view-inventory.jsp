<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- <link rel="stylesheet" href="../css/index.css"> -->
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../template/css/sidebar.css">
<link rel="stylesheet" href="../css/adminDashboard.css">
</head>
<body>


	<!--------------------------------------------------- 
										HEADER HERE
				-------------------------------------------------->

	<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top"
		style="top: 0;">
		<a href="http://localhost:8080/Internship-Infy/"> <img
			src="http://localhost:8080/Internship-Infy/img/logo.jpg"
			height="75px"></img>
		</a>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="/Internship-Infy/">The Online Shop</a></li>
				<li class="nav-item">
					<h6 class="nav-link"
						style="font-style: italic; color: red; padding-top: 10px">Welcome
						Administrator!</h6>
				</li>
			</ul>
			<form action="../logOutServlet" method="post" id="logOutButton"
				hidden>
				<button type="submit" value="Logout"></button>
			</form>
			<button type="button" class="btn btn-primary right"
				onclick="javascript:document.getElementById('logOutButton').submit();">
				Log Out</button>
		</div>
	</nav>

	<!--------------------------------------------------- 
										SIDE PANEL HERE
				-------------------------------------------------->



	<div class="wrapper">
		<nav id="sidebar" style="background-color: #FFD54F;">
			<div class="sidebar-header">
				<h3
					style="color: #6a5acd; margin-left: 30px; margin-bottom: 20px; margin-top: 30px;">
					<strong>Admin Controls</strong>
				</h3>
			</div>
			<ul class="list-unstyled components">
				<li class="btn"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-right: 40px; width: 11rem;">
					<a href="manage-users.jsp"
					style="color: white; font-family: sans-serif;">Manage Users</a>
				</li>
				<li class="btn"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 20px; margin-right: 40px; width: 11rem;">
					<a href="account-management.jsp"
					style="color: white; font-family: sans-serif;">Account
						Management</a>
				</li>
				<li class="btn disabled"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 20px; margin-right: 40px; width: 11rem;">
					<a href="view-inventory.jsp"
					style="color: white; font-family: sans-serif;">View Inventory</a>
				</li>
				<li class="btn"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 20px; margin-right: 40px; width: 11rem;">
					<a href="#!" style="color: white; font-family: sans-serif;">Account
						Settings</a>
				</li>
				<li class="btn"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 20px; margin-right: 40px; width: 11rem;">
					<a href="#!" style="color: white; font-family: sans-serif;"
					class="center-text">Other Tasks</a>
				</li>
				<li class="btn"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 25px; margin-right: 40px; width: 11rem;">
					<a href="../admindash"
					style="color: white; font-family: sans-serif;" class="center-text"><strong>Go
							back to Dashboard</strong></a>
				</li>
			</ul>
		</nav>



		<div id="content">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container-fluid" style="margin-left: 100px;">
					<!-- INTENTIONALLY BLANK-->
				</div>
			</nav>
		</div>


		<div class="container">
			<div class="row">
				<div class="col text-center"
					style="margin-top: 20px; margin-bottom: 20px">
					<h2>Product Inventory Details</h2>
				</div>
			</div>

			<div class="table-responsive">
				<table class="table table-bordered table-striped">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Item ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Seller ID</th>
							<th scope="col">Quantity</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">94121</th>
							<td>Samsung Fridge</td>
							<td>Seller ABC</td>
							<td>43</td>
						</tr>
						<tr>
							<th scope="row">75472</th>
							<td>Whirlpool Fridge</td>
							<td>Seller DEF</td>
							<td>23</td>
						</tr>
						<tr>
							<th scope="row">42343</th>
							<td>Apple iPhone XR</td>
							<td>Seller GHI</td>
							<td>11</td>
						</tr>
						<tr>
							<th scope="row">94121</th>
							<td>Samsung Fridge</td>
							<td>Seller ABC</td>
							<td>43</td>
						</tr>
						<tr>
							<th scope="row">75472</th>
							<td>Whirlpool Fridge</td>
							<td>Seller DEF</td>
							<td>23</td>
						</tr>
						<tr>
							<th scope="row">42343</th>
							<td>Apple iPhone XR</td>
							<td>Seller GHI</td>
							<td>11</td>
						</tr>
						<tr>
							<th scope="row">94121</th>
							<td>Samsung Fridge</td>
							<td>Seller ABC</td>
							<td>43</td>
						</tr>
						<tr>
							<th scope="row">75472</th>
							<td>Whirlpool Fridge</td>
							<td>Seller DEF</td>
							<td>23</td>
						</tr>
						<tr>
							<th scope="row">42343</th>
							<td>Apple iPhone XR</td>
							<td>Seller GHI</td>
							<td>11</td>
						</tr>
						<tr>
							<th scope="row">94121</th>
							<td>Samsung Fridge</td>
							<td>Seller ABC</td>
							<td>43</td>
						</tr>
						<tr>
							<th scope="row">75472</th>
							<td>Whirlpool Fridge</td>
							<td>Seller DEF</td>
							<td>23</td>
						</tr>
						<tr>
							<th scope="row">42343</th>
							<td>Apple iPhone XR</td>
							<td>Seller GHI</td>
							<td>11</td>
						</tr>
						<tr>
							<th scope="row">94121</th>
							<td>Samsung Fridge</td>
							<td>Seller AfweC</td>
							<td>213</td>
						</tr>
						<tr>
							<th scope="row">75472</th>
							<td>Whirlpool Fridge</td>
							<td>Seller gjwF</td>
							<td>0</td>
						</tr>
						<tr>
							<th scope="row">42343</th>
							<td>Apple iPhone XR</td>
							<td>Seller GHI</td>
							<td>11</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>



	<!--------------------------------------------------- 
										FOOTER HERE
				-------------------------------------------------->

	<footer class="page-footer font-small blue -bottom fixed-bottom"
		id="myFooter" style="background-color: lightcyan">

		<div class="footer-copyright text-center py-3"
			style="background-color: lightblue">
			� <a href="/Internship-Infy/"> The Online Shop</a>
		</div>
	</footer>

	<!--------------------------------------------------- 
											SCRIPTS HERE
				-------------------------------------------------->





	<script type="javascript" src="../js/bootstrap.min.js"></script>
	<script type="javascript" src="../js/jquery.min.js"></script>
	<script type="javascript" src="../js/adminDashboard.js"></script>
</body>
</html>