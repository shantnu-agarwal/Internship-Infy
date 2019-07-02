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
			<c:if test="${not empty pageContext.request.userPrincipal.name }">
				<li class="nav-item"><a class="nav-link"
					href="http://localhost:8080/Internship-Infy/cart.jsp"
					id="cart-link"></a>
					<form hidden id="cart-form" method="GET" name="cart-form"
						action="http://localhost:8080/Internship-Infy/GetCart">
						<input name="username"
							value="${pageContext.request.userPrincipal.name}">

					</form></li>
			</c:if>



			<li class="nav-item"><a class="nav-link"
				href="http://localhost:8080/Internship-Infy/contact.jsp">Support</a></li>
		</ul>

		<!---------------------------------- LOGIN HERE
											----------------------------------------->

		<c:if test="${empty pageContext.request.userPrincipal.name }">
			<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
				<p style="color: red; margin-right: 1rem;">
					Your login attempt was not successful due to <br />
					<c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
					.
				</p>
			</c:if>

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

				<form name="f" action="http://localhost:8080/Internship-Infy/login"
					method="POST">
					<div class="form-group">
						<label>Username</label> <input class="form-control"
							name="username" placeholder="Jon Doe">
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password"
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

					<div>
						<p id="response" style="color: red"></p>
					</div>
					<form name='f' action="InsertIntoDBFromSelf" method="get"
						id="register">

						<div class="form-group">
							<label>Name:</label><input type="text" name="InputName"
								placeholder="Jon Doe" class="form-control" id="validationName"
								required>
						</div>
						<div class="form-group">
							<label>Email:</label><input type="email" name="InputEmail"
								placeholder="email@exmaple.com" class="form-control"
								id="validationEmail" required>
						</div>
						<div class="form-group">
							<label>Mobile Number</label> <input type='text'
								name='InputMobileNumber' placeholder="9876543210"
								class="form-control" id="validationMobileNumber" maxlength='10'
								required />
						</div>
						<div class="form-group">
							<label>Username</label> <input type='text' name='InputUsername'
								placeholder="username" class="form-control"
								id="validationUsername" required>
						</div>
						<div class="form-group">
							<label>Password</label> <input type='password'
								name='InputPassword1' placeholder="********"
								class="form-control" id="validationPassword" required />
						</div>
						<div class="form-group">
							<label>Confirm Password</label> <input type='password'
								name='InputPassword2' placeholder="********"
								class="form-control" id="validationConfirmPassword" required />
						</div>
						<button name="submit" type="submit" class="btn btn-primary"
							id="register_btn">Register</button>
					</form>
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#loginModal" data-dismiss="modal"
						style="margin-top: 1rem; visibility: hidden" id="postRegButton">Login</button>

				</div>
			</div>

		</div>
	</div>
</div>

