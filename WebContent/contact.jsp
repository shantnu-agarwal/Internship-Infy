<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>The Online Shop | Home</title>
<link rel="stylesheet" href="css/index.css">
<link href="template/css/sidebar.css">
<link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body>



	<%@ include file="/template/header.jsp"%>



	<!--------------------------------------------------------------------------------------------------------------
																			LEFT SIDE MENU
							------------------------------------------------------------------------------------------------------------->




	<!-- Sidebar -->
	<div class="wrapper">
		<nav id="sidebar" style="background-color: #FFD54F">
			<div class="sidebar-header">
				<h3
					style="color: #6a5acd; margin-left: 60px; margin-bottom: 20px; margin-top: 120px; font-family: sans-serif">
					<strong>Products</strong>
				</h3>
			</div>
			<ul class="list-unstyled components text-white">
				<li
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 0px; padding-bottom: 10px; margin-left: 40px; margin-right: 40px;">
					<a href="/Internship-Infy/"
					style="color: white; font-family: sans-serif;">All Products</a>
				</li>
				<li class="active"
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 0px; padding-bottom: 10px; margin-left: 40px; margin-top: 25px; margin-right: 40px;">
					<a href="/Internship-Infy/?category=electronics"
					style="color: white; font-family: sans-serif;">Home Appliances</a>
				</li>
				<li
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 25px; margin-right: 40px;">
					<a href="/Internship-Infy/?category=furniture"
					style="color: white; font-family: sans-serif;">Furniture</a>
				</li>
				<li
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 25px; margin-right: 40px; color: white; font-family: sans-serif;">
					<a href="/Internship-Infy/?category=Books"
					style="color: white; font-family: sans-serif;">Books</a>

				</li>
				<li
					style="background-color: #3cb371; padding-left: 10px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; margin-left: 40px; margin-top: 25px; margin-bottom: 20px; margin-right: 40px; color: white; font-family: sans-serif;">
					<a href="contact.jsp"
					style="color: white; font-family: sans-serif;">Contact</a>
				</li>
			</ul>
		</nav>
	</div>



	<!--------------------------------------------------------------------------------------------------------------
																			MAIN PAGE CONTENT 
			------------------------------------------------------------------------------------------------------------->
	<div id="content" style="margin-top: 100px;">

		<div class="jumbotron">
			<h1 class="display-4 mx-auto">Hello, friends!</h1>
			<p class="lead">I am sorry to see that you are facing problems on
				this platform. But don't worry, I believe we can work it out
				together.</p>
			<hr class="my-4">
			<p>Get in touch with me through any of the following mediums and
				I would be glad to help</p>
			<div class="row">
				<div class="col">
					<a class="btn btn-primary btn-lg"
						href="https://github.com/shantnu-agarwal/Internship-Infy/issues"
						role="button">Raise an issue on GitHub</a>

				</div>
				<div class="col">
					<a class="btn btn-primary btn-lg"
						href="https://www.linkedin.com/in/shantnuagarwal/" role="button">Catch
						me on LinkedIn</a>
				</div>
				<div class="col">
					<a class="btn btn-primary btn-lg"
						href="http://twitter.com/shantnuagarwal" role="button">Find me
						on Twitter</a>
				</div>
				<div class="col">
					<a class="btn btn-primary btn-lg"
						href="mailto:shantnu.agarwal@outlook.com" role="button">Send
						me an email!</a>
				</div>
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

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-validate.js"></script>
	<script src="template/validate.js"></script>



</body>
</html>