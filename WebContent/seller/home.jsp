<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Seller Home | The Online Shop</title>
<link rel="stylesheet" href="../template/css/sidebar.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">

</head>
<body>



	<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top"
		style="top: 0;">
		<a href="/Internship-Infy/"> <img src="../img/logo.jpg"
			height="75px"></img>
		</a>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="/Internship-Infy/">The Online Shop</a></li>
				<li class="nav-item">
					<h6 class="nav-link"
						style="font-style: italic; color: red; padding-top: 10px">Welcome
						${pageContext.request.userPrincipal.name }!</h6>
				</li>
			</ul>
			<c:if test="${empty pageContext.request.userPrincipal.name }">

				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#loginModal">Login</button>
				<button class="btn btn-outline-success my-2 my-sm-0"
					data-toggle="modal" data-target="#registerModal"
					style="margin-left: 10px">Register</button>
			</c:if>
			<c:if test="${not empty pageContext.request.userPrincipal.name }">
				<form hidden action="../logOutServlet" method="POST"
					id="logOutButton"></form>
				
				<button type="button" class="btn btn-primary"
					onclick="javascript:document.getElementById('logOutButton').submit();">
					Logout</button>
			</c:if>
		</div>
	</nav>



	<!--------------------------------------------------------------------------------------------------------------
																			LEFT SIDE MENU
							------------------------------------------------------------------------------------------------------------->
	<div class="wrapper">
		<nav id="sidebar" style="background-color: #FFD54F;">
			<div class="sidebar-header">
				<h3 class="text-center"
					style="color: #6a5acd; margin-bottom: 20px; margin-top: 30px;">
					<strong>Menu</strong>
				</h3>
			</div>
			<ul class="list-unstyled components">
				<li class="btn"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-right: 40px; width: 11rem;">
					<a href="inventory" style="color: white; font-family: sans-serif;">View
						My Inventory</a>
				</li>
				<li class="btn"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 20px; margin-right: 40px; width: 11rem;">
					<a href="#!" style="color: white; font-family: sans-serif;">Change
						My Details</a>
				</li>
			</ul>
		</nav>



		<!--------------------------------------------------------------------------------------------------------------
																			MAIN PAGE CONTENT 
			------------------------------------------------------------------------------------------------------------->

		<div id="content"></div>
		<div class="container" style="margin-top: 2rem;">
			<div class="jumbotron" style="box-shadow: 1px 2px 0px">
				<h1 class="display-4">Welcome back!</h1>
				<p class="lead">This is your dashboard. On the left, you have
					the menu and below, you can see some metrics about your listings on
					our platform!</p>
				<hr class="my-4">
				<p>Let's get going!</p>
				<a class="btn btn-primary btn-lg" href="inventory" role="button">Jump
					to Inventory</a>
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

	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
</body>
</html>