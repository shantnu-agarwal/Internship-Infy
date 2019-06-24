<%@page import="org.w3c.dom.html.HTMLDocument"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top"
	style="top: 0;">
	<a href="http://localhost:8080/Internship-Infy/"> <img
		src="http://localhost:8080/Internship-Infy/img/logo.jpg" height="75px">
	</a>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="/Internship-Infy/">The Online Shop</a></li>
			<li class="nav-item"><a class="nav-link"
				href="http://localhost:8080/Internship-Infy/cart.jsp">My Cart</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Support</a></li>
		</ul>
		<!---------------------------------- LOGIN HERE
											----------------------------------------->

		<c:if test="${empty pageContext.request.userPrincipal.name }">

			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#loginModal">Login</button>
			<button class="btn btn-outline-success my-2 my-sm-0"
				data-toggle="modal" data-target="#registerModal"
				style="margin-left: 10px">Register</button>
		</c:if>
		<c:if test="${not empty pageContext.request.userPrincipal.name }">
			<form hidden action="logOutServlet" method="POST" id="logOutButton"></form>
			<h5 class="right" style="margin-right: 1rem">Logged in as:
				${pageContext.request.userPrincipal.name }</h5>
			<button type="button" class="btn btn-primary"
				onclick="javascript:document.getElementById('logOutButton').submit();">
				Logout</button>
		</c:if>

		<!--------------------------- REGISTER HERE 
									---------------------------------->

	</div>
</nav>
<!------------------------------------------------- 
								MODAL FOR LOG IN
						------------------------------------------->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Enter your
					credentials</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">

				<form name="f" action="login" method="POST">
					<div class="form-group">
						<label>Username</label> <input class="form-control"
							name="username" placeholder="Jon Doe">
					</div>
					<div class="form-group">
						<label>Email address</label> <input type="password"
							class="form-control" name="password" placeholder="********">
					</div>
					<div>
						<div class="modal-footer">
							<input name="submit" type="submit" value="Login!"
								class="btn btn-primary">
						</div>

					</div>
					<!-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> -->
				</form>

			</div>
		</div>
	</div>
</div>

<!------------------------------------------------- 
								MODAL FOR REGISTRATION
						------------------------------------------->
<div class="modal fade" id="registerModal" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Please provide
					your details to proceed with registration</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="container" style="margin: auto">

					<form name='f' action="InsertIntoDBFromSelf" method='POST' class="needs-validation" novalidate="">
						<div class="form-group">
							<label for="validationName">Name:</label><input type="text" name="InputName"
								placeholder="Jon Doe" class="form-control" id="validationName">
						</div>
						<div class="form-group">
							<label for="validationEmail">Email:</label><input type="email" name="InputEmail"
								placeholder="email@exmaple.com" class="form-control" id="validationEmail">
						</div>
						<div class="form-group">
							<label for="validationMobileNumber">Mobile Number</label> <input type='text'
								name='InputMobileNumber' placeholder="9876543210"
								class="form-control" id="validationMobileNumber"/>
						</div>
						<div class="form-group">
							<label for="validationUsername">Username</label> <input type='text' name='InputUsername'
								placeholder="username" class="form-control" id="validationUsername">
						</div>
						<div class="form-group">
							<label for="validationPassword">Password</label> <input type='password'
								name='InputPassword1' placeholder="********"
								class="form-control" id="validationPassword"/>
						</div>
						<div class="form-group">
							<label for="validationConfirmPassword">Confirm Password</label> <input type='password'
								name='InputPassword2' placeholder="********"
								class="form-control" id="validationConfirmPassword"/>
						</div>

						<div class="modal-footer" hidden>
							<input name="submit" type="submit" id="register">
						</div>
					</form>
					<button type="button" class="btn btn-primary right"
						onclick="javascript:document.getElementById('register').submit();">
						Register</button>
					<h6>You are registering as a user. To register as a seller or
						administrator, please contact the admin.</h6>
				</div>
			</div>

		</div>
	</div>
</div>


<!-------------------------
 							SCRIPTS HERE ------------------>


<script>
	$('.modal-body').on('shown.bs.modal', function() {
		$(this).find('[autofocus]').focus();
	});
</script>