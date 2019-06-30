<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Add New Product | The Online Shop</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../template/css/sidebar.css">

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
				<li class="btn"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 20px; margin-right: 40px; width: 11rem;">
					<a href="home" style="color: white; font-family: sans-serif;"><strong>Back
							to Dashboard</strong></a>
				</li>
			</ul>
		</nav>



		<!--------------------------------------------------------------------------------------------------------------
																			MAIN PAGE CONTENT 
			------------------------------------------------------------------------------------------------------------->
		<div id="content" style="margin-top: 2rem;"></div>
		<div class="container">
			<h1 class="text-center"
				style="margin-top: 3rem; margin-bottom: 2rem;">Add New Product</h1>

			<h5 id="response"
				style="color: red; margin-bottom: 1rem; visibility: hidden"></h5>
			<form style="margin-bottom: 3rem;" id="productForm"
				action="addProductIntoDB" method="get" enctype="multipart/form-data">
				<div class="form-group">
					<label>Full Product Name</label> <input class="form-control"
						name="InputName" placeholder="Samsung Fridge" id="validationName"
						required />
				</div>
				<div class="form-group">
					<label>Product Category</label> <select class="form-control"
						name="InputCategory" required id="validationCategory">
						<option value="" selected disabled hidden>Choose here</option>
						<option value="Electronics">Electronics</option>
						<option value="Furniture">Furniture</option>
						<option value="Books">Books</option>
					</select>
				</div>
				<div class="form-group">
					<label>Price for one item</label>
					<div class="input-group">
						<div class="input-group-prepend">
							<div class="input-group-text">Rs.</div>
						</div>
						<input class="form-control" type="number" name="InputPrice"
							placeholder="23999" id="validationPrice" min="1" required>
						<div class="input-group-append">
							<span class="input-group-text">/item</span>
						</div>
					</div>

				</div>
				<div class="form-group">
					<label>Add a detailed description of the product</label> <input
						class="form-control" type="text" name="InputInfo"
						placeholder="List some features, uses and other product information"
						id="validationDescription" required>
				</div>
				<div class="form-group">
					<label>Total Quantity</label> <input class="form-control"
						name="InputQuantity" type="number" placeholder="Eg. 500"
						id="validationQuantity" min="1" required> <small
						class="form-text text-muted">This is the total stock of
						the product that you have.</small>
				</div>

				<input name="InputSeller" hidden
					value="${pageContext.request.userPrincipal.name}">

				<button name="submit" type="submit" class="btn btn-primary">Confirm
					and add product listing.</button>
			</form>
			<form action="upload" method="post" enctype="multipart/form-data"
				style="margin-bottom: 7rem" id="image-form">
				<div class="form-group">
					<label>Product Image</label> <input type="file" name="file"
						class="form-control" accept="image/*"><small
						class="form-text text-muted">Try to upload a clear image</small>
				</div>
				<input name="SetInputID" value="LOL" id="SetInputID" hidden> <input
					type="submit" value="Upload Image" class="btn btn-primary" />
			</form>


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
	<script src="../js/bootstrap-validate.js"></script>
	<script src="validate.js"></script>


</body>
</html>