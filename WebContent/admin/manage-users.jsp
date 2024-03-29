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
				<li class="btn disabled"
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




			<div class="row">
				<div class="col text-center"
					style="margin-top: 3rem; margin-bottom: 3rem;">
					<h1>Manage Users</h1>
				</div>
			</div>


			<form style="margin-bottom: 5rem;" action="../sql/add-to-db.jsp"
				method="POST">
				<div class="form-group">
					<label>Choose account type to view</label> <select
						class="form-control" name="InputUserType" id="abc">
						<option onclick="document.location.reload(true)" value="all">ALL</option>
						<option onclick="foo()" value="ROLE_USER">User Accounts</option>
						<option onclick="foo()" value="ROLE_SELLER">Seller
							Accounts</option>
						<option onclick="foo()" value="ROLE_ADMIN">Administrator
							Accounts</option>
					</select>
				</div>
			</form>
			<div>
				<p>
					<%
						String user = "";
						try {
							user = request.getParameter("kick");
					%>
					<%
						if (user.equals("done")) {
								out.print("The account has been removed successfully.");
							} else if (user == "fail") {
					%>
					User deletion failed
					<%
						}
						} catch (Exception e) {
						}
					%>
				</p>
			</div>

			<div class="table-responsive">
				<table class="table table-bordered table-striped" id="TableList">
					<thead class="thead-dark">
						<tr>
							<th scope="col">#</th>
							<th scope="col">Username</th>
							<th scope="col">Email Address</th>
							<th>Mobile Number</th>
							<th>Account Role</th>
							<th scope="col">Allowed Actions</th>
						</tr>
					</thead>
					<tbody>
						<%
							try {
								Class.forName("com.mysql.jdbc.Driver");
								Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
								Statement st = conn.createStatement();
								int cnt = 0;
								ResultSet us = st.executeQuery(
										"SELECT * from users,user_roles where users.username=user_roles.username ORDER BY users.time_created DESC;");
								while (us.next()) {
									cnt++;
						%>
						<tr>
							<th scope="row"><%=cnt%></th>
							<td><%=us.getString("username")%></td>
							<td><%=us.getString("email")%></td>
							<td><%=us.getString("phone_number")%></td>
							<td><%=us.getString("role")%></td>
							<td>
								<form id="deleteForm<%=us.getString("username")%>"
									action="deleteAccount" method="get">
									<input name="deleteUsername"
										value="<%=us.getString("username")%>" hidden>
									<button class="btn" type="submit">
										<img alt="Remove Account" src="remove.png">
									</button>
									<!-- <button class="btn" type="submit">
										EDIT
									</button> -->
								</form>
							</td>
						</tr>
						<%
							}

							} catch (Exception e) {
								e.printStackTrace();
							}
						%>

					</tbody>
				</table>
			</div>
			<p style="margin-bottom: 5rem;">
				<a class="btn btn-primary" href="newaccount.jsp"> Add new
					account</a>
			</p>


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


	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>

	<script src="update-table.js"></script>


	<script>
		
	</script>

</body>
</html>