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
		<div class="row" style="margin-bottom: 1rem;">
			<button onclick="window.history.back();" class="btn btn-primary">Go
				Back</button>
		</div>
		<div class="container">
			<h3 class="text-center" style="margin-bottom: 3rem;">Please
				provide your delivery details</h3>
			<form style="margin-bottom: 2rem;" id="productForm"
				action="SubmitAddress" method="POST">
				<div class="form-group">
					<label>House Number/Flat Number</label> <input class="form-control"
						name="InputFlat" placeholder="A37" required />
				</div>
				<div class="form-group">
					<label>Area/Locality</label> <input class="form-control"
						name="InputArea" required>
				</div>
				<div class="form-group">
					<label>City</label> <input class="form-control" name="InputCity"
						required>
				</div>
				<div class="form-group">
					<label>State</label> <input class="form-control" name="InputState"
						required>
				</div>
				<div class="form-group">
					<label>Pincode</label> <input class="form-control"
						name="InputPincode" id="validationPincode" required>
				</div>
				<div class="form-group">
					<label>Landmark</label> <input class="form-control" type="text"
						name="InputLandmark" placeholder="Eg. Near India Gate">
				</div>
				<input name="InputUsername" hidden
					value="${pageContext.request.userPrincipal.name}">

				<button name="submit" type="submit" class="btn-primary btn-lg btn-block">Place
					Order</button>
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
	<script src="../js/popper.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/bootstrap-validate.js"></script>
	<script src="validate.js"></script>
	<!-- <script src="add-to-cart.js"></script> -->
</body>
</html>