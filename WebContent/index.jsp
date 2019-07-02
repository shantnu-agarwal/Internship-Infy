<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<title>
			The Online Shop | Home
		</title>
		<link rel="stylesheet" href="css/index.css">
 		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="shortcut icon" href="#" />
	</head>
	<body>
		


<%@ include file="/template/header.jsp" %>



			<!--------------------------------------------------------------------------------------------------------------
																			LEFT SIDE MENU
							------------------------------------------------------------------------------------------------------------->

<%@ include file="/template/sidebar.jsp" %>


			
			<!--------------------------------------------------------------------------------------------------------------
																			MAIN PAGE CONTENT 
			------------------------------------------------------------------------------------------------------------->
			<div id="content" style="margin-top:100px;">

				
					
					<%@include file="template/productCards.jsp" %>
					
					
					
				
					
					 

			</div>
	
					






		<!--------------------------------------------------------------------------------------------------------------
																			FOOTER  
			------------------------------------------------------------------------------------------------------------->
			   
		
<%@ include file="/template/footer.jsp" %>

		
			<!--------------------------------------------------------------------------------------------------------------
																				SCRIPTS HERE
						------------------------------------------------------------------------------------------------------------->
	
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/bootstrap-validate.js"></script>
		<script src="template/validate.js"></script>
		
		
		
	</body>
</html>