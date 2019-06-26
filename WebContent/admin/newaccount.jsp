<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin | The Online Shop</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../template/css/sidebar.css">


</head>
<body>

	<!--------------------------------------------------- 
										HEADER HERE
				-------------------------------------------------->

	<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top"
		style="top: 0;">
		<a href="/Internship-Infy/admindash"> <img
			src="http://localhost:8080/Internship-Infy/img/logo.jpg"
			height="75px">
		</a>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="/Internship-Infy/admindash">The Online Shop</a></li>
				<li class="nav-item">
					<h6 class="nav-link"
						style="font-style: italic; color: red; padding-top: 10px">
						Welcome ${pageContext.request.userPrincipal.name }</h6>
				</li>
			</ul>
			<h5 class="right" style="margin-right: 1rem">Logged in as:
				${pageContext.request.userPrincipal.name }</h5>
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
					<a href="manageUsers"
					style="color: white; font-family: sans-serif;">Manage Users</a>
				</li>
				<li class="btn"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 20px; margin-right: 40px; width: 11rem;">
					<a href="viewInventory"
					style="color: white; font-family: sans-serif;">View Inventory</a>
				</li>
				<li class="btn"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 20px; margin-right: 40px; width: 11rem;">
					<a href="Settings" style="color: white; font-family: sans-serif;">Account
						Settings</a>
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

		<!-------------------------------------------- 
    					MAIN BODY HERE 
    				------------------------------------>




		<div class="container">

			<h1 class="text-center"
				style="margin-top: 3rem; margin-bottom: 2rem;">Add New Account</h1>


			<p id="response"></p>

			<form style="margin-bottom: 5rem;" action="NewAccountFromAdmin"
				method="get" id="accountForm">
				<div class="form-group">
					<label>Full Name</label> <input class="form-control"
						name="InputName" placeholder="Jon Doe" required
						id="validationName">
				</div>
				<div class="form-group">
					<label>Email address</label> <input type="email"
						class="form-control" name="InputEmail"
						aria-describedby="emailHelp" placeholder="Enter email address"
						required>
				</div>
				<div class="form-group">
					<label>Mobile Number</label> <input type="text"
						class="form-control" name="InputMobileNumber"
						placeholder="9876543210" required id="validationMobileNumber">
				</div>
				<div class="form-group">
					<label>Choose a username</label> <input class="form-control"
						name="InputUsername" placeholder="username" required
						id="validationUsername"> <small
						class="form-text text-muted">This will be used for login
						and it must be unique.</small>
				</div>
				<div class="form-group">
					<label>Password</label> <input type="password" class="form-control"
						name="InputPassword1" placeholder="Password" required
						id="validationPassword"><small
						class="form-text text-muted">Choose a strong password.</small>
				</div>
				<div class="form-group">
					<label>Confirm Password</label> <input type="password"
						class="form-control" name="InputPassword2" placeholder="Password"
						required id="validationConfirmPassword"><small
						class="form-text text-muted">Type the same password again</small>
				</div>
				<div class="form-group">
					<label>Choose Account Type</label> <select class="form-control"
						name="InputUserType" required>
						<option value="" selected disabled hidden>Choose here</option>
						<option value="ROLE_USER">User</option>
						<option value="ROLE_SELLER">Seller</option>
						<option value="ROLE_ADMIN">Administrator</option>
					</select>
				</div>

				<button type="submit" class="btn btn-primary">Confirm and
					add new account</button>
			</form>




		</div>




	</div>




	<!--------------------------------------------------- 
										FOOTER HERE
				-------------------------------------------------->

	<footer class="page-footer font-small blue -bottom fixed-bottom"
		id="myFooter" style="background-color: lightcyan">

		<div class="footer-copyright text-center py-3"
			style="background-color: lightblue">
			© <a href="/Internship-Infy/"> The Online Shop</a>
		</div>
	</footer>

	<!--------------------------------------------------- 
											SCRIPTS HERE
				-------------------------------------------------->








	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap-validate.js"></script>
	<script src="validate.js"></script>





	<script>
		
	</script>

</body>
</html>