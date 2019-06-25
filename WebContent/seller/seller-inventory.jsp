<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>My Inventory| The Online Shop</title>
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
						Seller!</h6>
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
					<a href="seller-inventory.jsp"
					style="color: white; font-family: sans-serif;">View My
						Inventory</a>
				</li>
				<li class="btn"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 20px; margin-right: 40px; width: 11rem;">
					<a href="#!" style="color: white; font-family: sans-serif;">Change
						My Details</a>
				</li>
				<li class="btn"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 20px; margin-right: 40px; width: 11rem;">
					<a href="home.jsp" style="color: white; font-family: sans-serif;"><strong>Back
							to Dashboard</strong></a>
				</li>
			</ul>
		</nav>



		<!--------------------------------------------------------------------------------------------------------------
																			MAIN PAGE CONTENT 
			------------------------------------------------------------------------------------------------------------->
		<div id="content" style="margin-top: 2rem;"></div>
		<div class="container">
			<div class="row">
				<div class="col text-center"
					style="margin-top: 3rem; margin-bottom: 3rem;">
					<h1>My Inventory</h1>
				</div>
			</div>
			<div class="table-responsive">
				<table class="table table-bordered table-striped" id="TableList">
					<thead class="thead-dark">
						<tr>
							<th scope="col">#</th>
							<th scope="col">Item ID</th>
							<th scope="col">Product Name</th>
							<th>Price</th>
							<th>Quantity</th>
							<th scope="col">Category</th>
						</tr>
					</thead>
					<tbody>
						<%
							try {
								Class.forName("com.mysql.jdbc.Driver");
								Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
								Statement st = conn.createStatement();
								int cnt = 0;
								ResultSet us = st.executeQuery("SELECT * from inventory");
								while (us.next()) {
									cnt++;
						%>
						<tr>
							<th scope="row"><%=cnt%></th>
							<td><%=us.getString("item_ID")%></td>
							<td><%=us.getString("item_name")%></td>
							<td><%=us.getString("item_price")%></td>
							<td><%=us.getString("item_quantity")%></td>
							<td><%=us.getString("category")%></td>
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
				<a class="btn btn-primary" href="addProduct">Add New Product
					to Inventory</a>
			</p>

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