<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Showcase | The Online Shop</title>
<link rel="stylesheet" href="../css/index.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">

</head>
<body>

	<%@ include file="../template/header.jsp"%>



	<!--------------------------------------------------------------------------------------------------------------
																			LEFT SIDE MENU
							------------------------------------------------------------------------------------------------------------->

	<%@ include file="/template/sidebar.jsp"%>



	<!--------------------------------------------------------------------------------------------------------------
																			MAIN PAGE CONTENT 
			------------------------------------------------------------------------------------------------------------->
	<div id="content" style="margin-top: 100px; margin-left: 10rem;">
		<div class="row" style="margin-bottom: 1rem;">
			<button onclick="window.history.back();" class="btn btn-primary">Go
				Back</button>
		</div>
		<div class="card md-10" style="width: auto;">
			<%
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
					Statement st = conn.createStatement();

					ResultSet rs = st.executeQuery(
							"SELECT * FROM images where images.item_ID = '" + request.getParameter("id") + "';");
					rs.next();
			%>
			<div class="row no-gutters">
				<div class="col-md-5">
					<img
						src="http://localhost:8080/Internship-Infy/productimages/<%=rs.getString("image_name")%>"
						class="card-img" alt="Fridge Image Here"
						style="height: auto; width: 600px;">
				</div>
				<%
					ResultSet us = st.executeQuery("SELECT * from inventory,users where item_ID="
								+ request.getParameter("id") + " and inventory.seller_username=users.username;");
						us.next();
				%>
				<div class="col-md-5">
					<div class="card-body" style="font-family: sans-serif">
						<h4 class="card-title">
							<strong><%=us.getString("item_name")%></strong>
						</h4>
						<p class="card-text text-justify"><%=us.getString("item_info")%></p>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">Sold by: <strong><%=us.getString("full_name")%></strong></li>
						<li class="list-group-item"><h4>
								Rs. <strong><%=us.getString("item_price")%></strong>
							</h4></li>

						<!-----------------  ADD TO CART AND BUY OPTIONS 
											--------------------------------->

						<c:if test="${not empty pageContext.request.userPrincipal.name }">
							<%
								if (us.getString("item_quantity").equals("0")) {
							%>
							<li class="list-group-item"><h4>Sorry, this item is out of
									stock.</h4></li>
							<%
								} else {
							%>
							<li class="list-group-item">
								<form id="add-to-cart-form" method="POST" action="AddToCart">
									<input name="id" value="<%=request.getParameter("id")%>" hidden>
									<input name="LoggedIn"
										value="${pageContext.request.userPrincipal.name}" hidden>

									<button class="btn" type="submit" id="add-to-cart-button">
										<img alt="Add to Cart" src="img/carticon.png"
											style="max-width: 2rem; margin-right: 1rem">Add to Cart
									</button>
									<input type="number" name="Quantity"
										placeholder="Choose Quantity" min=1
										max=<%=us.getString("item_quantity")%> required>
								</form>
							</li>
							<li class="list-group-item">
								<form method="POST"
									action="../transaction/BuyNow?id=<%=request.getParameter("id")%>">
									<button class="btn" type="submit" id="buy-now-button">
										<img alt="Buy Now" src="img/buynow.png"
											style="max-width: 2rem; margin-right: 1rem">Buy Now
									</button>
									<input type="number" name="Quantity"
										placeholder="Choose Quantity" min=1
										max=<%=us.getString("item_quantity")%> required>
								</form>
							</li>
							<%
								}
							%>
						</c:if>

						<!---------------------=
						 				WITHOUT LOGIN OPTIONS 
						 				------------------------->
						<c:if test="${ empty pageContext.request.userPrincipal.name }">
							<li class="list-group-item">
								<button class="btn" data-toggle="popover"
									data-content="Please login first!" title="Uh oh!">
									<img alt="Add to Cart" src="img/carticon.png"
										style="max-width: 2rem; margin-right: 1rem">Add to Cart
								</button>
							</li>
							<li class="list-group-item">
								<button class="btn" data-toggle="popover"
									data-content="Please login first!" title="Uh oh!">
									<img alt="Buy Now" src="img/buynow.png"
										style="max-width: 2rem; margin-right: 1rem">Buy Now
								</button>
						</c:if>


					</ul>
				</div>

			</div>

			<%
				} catch (Exception e) {
					System.out.print(e);
					e.printStackTrace();

				}
			%>

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
	<script src="../js/popper.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/bootstrap-validate.js"></script>
	<script src="../template/validate.js"></script>
	<!-- <script src="add-to-cart.js"></script> -->
</body>
</html>