<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin | The Online Shop</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="template/css/sidebar.css">
<link rel="stylesheet" href="css/adminDashboard.css">


</head>
<body>

	<!--------------------------------------------------- 
										HEADER HERE
				-------------------------------------------------->

	<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top"
		style="top: 0;">
		<a href="/Internship-Infy/"> <img src="img/logo.jpg" height="75px"></img>
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
			<form action="logOutServlet" method="post" id="logOutButton" hidden>
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
					<a href="admin/manageUsers"
					style="color: white; font-family: sans-serif;">Manage Users</a>
				</li>
				<li class="btn"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 20px; margin-right: 40px; width: 11rem;">
					<a href="admin/viewInventory"
					style="color: white; font-family: sans-serif;">View Inventory</a>
				</li>
				<li class="btn"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 20px; margin-right: 40px; width: 11rem;">
					<a href="admin/Settings" style="color: white; font-family: sans-serif;">Account
						Settings</a>
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

		<%
			int cnt = 0,cnt2=0;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
				Statement st = conn.createStatement();
				ResultSet us = st.executeQuery("SELECT * from user_roles;");

				while (us.next()) {
					cnt++;
				}
				us = st.executeQuery("SELECT * from user_roles where role='ROLE_SELLER';");
				while (us.next()) {
					cnt2++;
				}
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>


		<div class="container">
			<div class="row">

				<div class="col text-center"
					style="margin-top: 20px; margin-bottom: 20px">
					<h2>Administrator Dashboard</h2>
					<h5>Company Statistics</h5>
				</div>
			</div>
			<div class="row text-center">
				<div class="col">
					<div class="counter">
						<i class="fa fa-code fa-2x"></i>
						<h2 class="timer count-title count-number" data-to="<%=cnt%>"
							data-speed="1200"></h2>
						<p class="count-text ">Total Accounts</p>

					</div>
				</div>
				<div class="col">
					<div class="counter">
						<i class="fa fa-coffee fa-2x"></i>
						<h2 class="timer count-title count-number" data-to="<%=cnt2%>"
							data-speed="1500"></h2>
						<p class="count-text ">Registered Sellers</p>
					</div>
				</div>
				<div class="col">
					<div class="counter">
						<i class="fa fa-lightbulb-o fa-2x"></i>
						<h2 class="timer count-title count-number" data-to="999"
							data-speed="1500"></h2>
						<p class="count-text ">Inventory Size</p>
					</div>
				</div>
			</div>
			lol <br> more coming soon

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





	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/adminDashboard.js"></script>



	<script>
		
	</script>

</body>
</html>