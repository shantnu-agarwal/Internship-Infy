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
			<form action="../logOutServlet" method="post" id="logOutButton" hidden>
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



	<div class="wrapper" style="margin-bottom: 90px">
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
				<li class="btn disabled"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 20px; margin-right: 40px; width: 11rem;">
					<a href="account-management.jsp"
					style="color: white; font-family: sans-serif;">Account
						Management</a>
				</li>
				<li class="btn"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 20px; margin-right: 40px; width: 11rem;">
					<a href="view-inventory.jsp"
					style="color: white; font-family: sans-serif;">View Inventory</a>
				</li>
				<li class="btn"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 20px; margin-right: 40px; width: 11rem;">
					<a href="account-settings.jsp"
					style="color: white; font-family: sans-serif;">Account Settings</a>
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

			<div class="row">
				<div class="col text-center"
					style="margin-top: 20px; margin-bottom: 20px">
					<h2>Account Management</h2>
				</div>
			</div>
			<div class="row">
				<div class="col text-left"
					style="margin-top: 20px; margin-bottom: 20px">
					<h2>List of Sellers</h2>
				</div>
			</div>

			<!-------------------------------------------- 
    															seller table here	 
    														------------------------------------>

			<div class="table-responsive">
				<table class="table table-bordered table-striped">
					<thead class="thead-dark">
						<tr>
							<th scope="col">#</th>
							<th scope="col">Seller Names</th>
							<th scope="col">Phone Number</th>
							<th scope="col">Email</th>
							<th scope="col">Actions</th>
						</tr>
					</thead>
					<tbody>
						<%
							int cnt = 0;
							try {
								Class.forName("com.mysql.jdbc.Driver");
								Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
								Statement st = conn.createStatement();

								ResultSet us = st.executeQuery(
										"SELECT * from users,user_roles where (user_roles.role='ROLE_SELLER') and users.username = user_roles.username;");
								while (us.next()) {
									cnt++;
						%>
						<tr>
							<th scope="row"><%=cnt%></th>
							<td><%=us.getString("username")%></td>
							<td><%=us.getString("email")%></td>
							<td><%=us.getString("phone_number")%></td>
							<td><a class="btn" href="#!"><img alt="Remove User"
									src="remove.png"></a></td>
						</tr>
						<%
							}
								conn.close();
							} catch (Exception e) {
								e.printStackTrace();
							}
							if (cnt == 0) {
						%>
						<tr>
							<td>There are no registered sellers</td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
			</div>
			<div class="row">
				<div class="col text-left"
					style="margin-top: 20px; margin-bottom: 20px">
					<h2>List of Administrators</h2>
				</div>
			</div>

			<!-------------------------------------------- 
    												admin table here	 
    								----------------------------------------------------------->


			<div class="table-responsive">
				<table class="table table-bordered table-striped">
					<thead class="thead-dark">
						<tr>
							<th scope="col">#</th>
							<th scope="col">Administrator Name</th>
							<th scope="col">Email</th>
							<th scope="col">Actions</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>Admin ABC</td>
							<td>ABC@intern.com</td>
							<td><a class="btn" href="#!"><img alt="Remove Admin"
									src="remove.png"></a></td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Admin DEF</td>
							<td>DEF@intern.com</td>
							<td><a class="btn" href="#!"><img alt="Remove Admin"
									src="remove.png"></a></td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Admin GHI</td>
							<td>GHI@intern.com</td>
							<td><a class="btn" href="#!"><img alt="Remove Admin"
									src="remove.png"></a></td>
						</tr>
					</tbody>
				</table>
			</div>


			<!--  DATA ENTRY MODALS HERE-->

			<form name="b" action="../sql/new-seller.jsp" method="POST">
				<table>
					<tr>
						<td>Seller Name</td>
						<td><input type='text' name='sellername'
							placeholder="Jon Doe" autofocus></td>
					</tr>
					<tr>
						<td>Login Username</td>
						<td><input type='text' name='username' placeholder="Jon Doe"
							autofocus></td>
					</tr>
					<tr>
						<td>Mobile Number</td>
						<td><input type='text' name='phonenumber'
							placeholder="9876543210" /></td>
					</tr>
					<tr>
						<td>Email Address:</td>
						<td><input type='text' name='email'
							placeholder="email@example.com" autofocus></td>
					</tr>
					<tr>
						<td>Choose a Password:</td>
						<td><input type='password' name='password'
							placeholder="********" /></td>
					</tr>
					<tr>
						<td class="modal-footer"><input name="submit" type="submit"
							value="Add Seller!" class="btn btn-primary"></td>


						<%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
					</tr>
				</table>
			</form>


			<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
				data-target="#sellerModal">Add a New Seller</button>

			<div class="modal fade" id="sellerModal" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">

						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Enter your
								credentials</h5>
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>

						<div class="modal-body">
							<form name='a' action="login" method='POST'>
								<table>
									<tr>
										<td>Email:</td>
										<td><input type='text' name='username'
											placeholder="email@example.com" autofocus></td>
									</tr>
									<tr>
										<td>Password:</td>
										<td><input type='password' name='password'
											placeholder="********" /></td>
									</tr>
									<tr>
										<td class="modal-footer"><input name="submit"
											type="submit" value="Login!" class="btn btn-primary"></td>


										<!-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> -->
									</tr>
								</table>
							</form>

						</div>
					</div>
				</div>
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
			© <a href="/Internship-Infy/"> The Online Shop</a>
		</div>
	</footer>

	<!--------------------------------------------------- 
											SCRIPTS HERE
				-------------------------------------------------->





	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.min.js"></script>




	<script>
		
	</script>


	<!--------------------------------------------------- 
											MODALS HERE
				-------------------------------------------------->






</body>
</html>