		<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" style="top:0;">
			<a href="/Internship-Infy/">
				<img src="img/logo.jpg" height="75px">
			</a>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
			  	<ul class="navbar-nav mr-auto">
					<li class="nav-item active">
						<a class="nav-link" href="/Internship-Infy/">The Online Shop</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">My Cart</a>
					</li>
					<li class="nav-item">
							<a class="nav-link" href="#">Support</a>
						</li>
				</ul>
				<!---------------------------------- LOGIN HERE
											----------------------------------------->
				
				
				
					
				
				<button type="button" class="btn btn-primary text-white" onclick="javascript:window.location.href='login.jsp'">Login
				</button>
				<!-- 
				
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#loginModal">
					  Login
				</button>
				-->
				
				
				<!--------------------------- REGISTER HERE 
									---------------------------------->
									
				<button class="btn btn-outline-success my-2 my-sm-0" data-toggle="modal" data-target="#registerModal" style="margin-left: 10px">Register</button>
				
				
				
				  
			</div>
		</nav>
		<!------------------------------------------------- 
								MODAL FOR LOG IN
						------------------------------------------->
		<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
    					<div class="modal-content">
      						<div class="modal-header">
        						<h5 class="modal-title" id="exampleModalLabel">Enter your credentials</h5>
        						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          							<span aria-hidden="true">&times;</span>
        						</button>
      						</div>
      						<div class="modal-body">
	        					<div class="container" style=" margin:auto"">
	        						<p style="margin-bottom:0px;">Email: </p><input type="text" placeholder="email@example.com"></input>
									<p style="margin-bottom:0px; margin-top:10px">Password: </p><input type="password" placeholder="********"></input>
	        					</div>
      						</div>
      						<div class="modal-footer">
        						<button type="button" class="btn btn-primary">Login</button>
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
        						<h5 class="modal-title" id="exampleModalLabel">Please provide your details to proceed with registration</h5>
        						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          							<span aria-hidden="true">&times;</span>
        						</button>
      						</div>
      						<div class="modal-body">
	        					<div class="container" style="margin:auto">
	        						<p style="margin-bottom:0px;">Name:</p><input type="text" placeholder="John Doe"></input>
	        						<p style="margin-bottom:0px; margin-top:10px">Email:</p><input type="text" placeholder="email@exmaple.com"></input>
	        						<p style="margin-bottom:0px; margin-top:10px">Phone Number:</p><input type="text" placeholder="9876543210"></input>
									<p style="margin-bottom:0px; margin-top:10px">Choose a strong password: </p><input type="text" placeholder="********"></input>
									
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