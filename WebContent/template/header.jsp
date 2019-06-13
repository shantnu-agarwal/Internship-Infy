
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top"
	style="top: 0;">
	<a href="http://localhost:8080/Internship-Infy/"> <img src="http://localhost:8080/Internship-Infy/img/logo.jpg" height="75px">
	</a>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="/Internship-Infy/">The Online Shop</a></li>
			<li class="nav-item"><a class="nav-link" href="#">My Cart</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Support</a></li>
		</ul>
		<!---------------------------------- LOGIN HERE
											----------------------------------------->



		<%= request.getParameter("login") %>

		<!--<button type="button" class="btn btn-primary text-white"
			onclick="javascript:window.location.href='login.jsp'">Login
		</button>
		-->
				
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#loginModal">
					  Login
				</button>
			

		<!--------------------------- REGISTER HERE 
									---------------------------------->

		<button class="btn btn-outline-success my-2 my-sm-0"
			data-toggle="modal" data-target="#registerModal"
			style="margin-left: 10px">Register</button>

	


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


				<form name='f' action="login" method='POST'>
					<table>
						<tr>
							<td>Email:</td>
							<td><input type='text' name='username' value='' placeholder="email@example.com"></td>
						</tr>
						<tr>
							<td>Password:</td>
							<td><input type='password' name='password' placeholder="********"/></td>
						</tr>
						<tr>
							<td class="modal-footer"><input name="submit" type="submit" value="Login!" class="btn btn-primary" ></td>


							<!-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> -->
						</tr>
					</table>
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
					<p style="margin-bottom: 0px;">Name:</p>
					<input type="text" placeholder="John Doe"></input>
					<p style="margin-bottom: 0px; margin-top: 10px">Email:</p>
					<input type="text" placeholder="email@exmaple.com"></input>
					<p style="margin-bottom: 0px; margin-top: 10px">Phone Number:</p>
					<input type="text" placeholder="9876543210"></input>
					<p style="margin-bottom: 0px; margin-top: 10px">Choose a strong
						password:</p>
					<input type="text" placeholder="********"></input>

				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Register</button>
			</div>
		</div>
	</div>
</div>


<!-------------------------
 							SCRIPTS HERE ------------------>