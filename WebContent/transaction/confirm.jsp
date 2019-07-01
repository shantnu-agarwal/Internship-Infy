<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checkout | The Online Shop</title>
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

		<div class="container">
			<h3 class="text-center" style="text-align: justify;">Your order
				has been confirmed. Thank you for shopping with us!</h3>
			<div class="row" style="margin-bottom: 1rem;">
				<a href="http://localhost:8080/Internship-Infy/"
					class="btn btn-primary">Continue Shopping</a>
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
	<script src="../js/popper.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<!-- <script src="add-to-cart.js"></script> -->
</body>
</html>