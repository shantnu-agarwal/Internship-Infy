<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>The Online Shop | Buy Now</title>
<link rel="stylesheet" href="../css/index.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
<body>

	<%@ include file="/template/header.jsp"%>


	<%@ include file="/template/sidebar.jsp"%>
	<!--------------------------------------------------------------------------------------------------------------
																			MAIN PAGE CONTENT 
			------------------------------------------------------------------------------------------------------------->
	<div id="content" style="margin-top: 100px; margin-left: 10rem;">
		<div class="row" style="margin-bottom: 1rem;">
			<button onclick="window.history.back();" class="btn btn-primary">Go
				Back</button>
		</div>
		<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
				Statement st = conn.createStatement();
		%>
		<div class="container">
			<h3 class="text-center" style="margin-bottom: 3rem;">Please
				provide your delivery details</h3>
			<form style="margin-bottom: 2rem;" id="productForm"
				action="BuyNowClass" method="POST">
				<div class="form-row">
					<div class="col">
						<label>House Number/Flat Number</label> <input
							class="form-control" name="InputFlat" placeholder="A37" required />
					</div>
					<div class="col">
						<label>Area/Locality</label> <input class="form-control"
							name="InputArea" required>
					</div>
				</div>
				<div class="form-row" style="margin-top: 2rem;">
					<div class="col">
						<label>City</label> <input class="form-control" name="InputCity"
							required>
					</div>
					<div class="col">
						<label>State</label> <input class="form-control" name="InputState"
							required>
					</div>
				</div>
				<div class="form-row" style="margin-top: 2rem;">
					<div class="col">
						<label>Pincode</label> <input class="form-control"
							name="InputPincode" id="validationPincode" maxlength='6' required>
					</div>
					<div class="col"></div>
				</div>
				<div class="form-row" style="margin-top: 2rem;">
					<div class="col">
						<label>Landmark</label> <input class="form-control" type="text"
							name="InputLandmark" placeholder="Eg. Near India Gate">
					</div>
					<div class="col"></div>
				</div>
				<div class="col"></div>
				<input name="InputUsername" hidden
					value="${pageContext.request.userPrincipal.name}"> <input
					name="InputID" hidden value=<%=request.getParameter("id")%>>
				<input name="InputQuantity" hidden value=<%=request.getParameter("Quantity")%>>

				<button name="submit" type="submit"
					class="btn-primary btn-lg btn-block" style="margin-top: 2rem;">Place
					Order</button>
			</form>
		</div>
		<%
			} catch (Exception e) {

			}
		%>









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