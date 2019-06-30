<div class="card mb-3 mx-auto" style="max-width: 80%;">
			<div class="card-header">ITEM NUMBER : #</div>
			<div class="row no-gutters">
				<div class="col-md-4" style="height: 400px">
					<img src="inventory/productimg/samsung-670-fridge.jpg"
						class="card-img" alt="Product Image" height=100%;>
				</div>
				<div class="col-md-8">


					<div class="card-body">
						<ul class="list-group">
							<li class="list-group-item">
								<h5 class="card-title"><%=request.getParameter("item_name") %></h5>
								<p class="card-text"><%=request.getParameter("seller_username") %></p>
								<p class="card-text">
									<small class="text-muted">Added on: <%=request.getParameter("time_added") %></small>
								</p>
							</li>
							<li class="list-group-item">
								<p class="card-text"><%=request.getParameter("quantity") %></p>
								<div class="btn-group" role="group" aria-label="Basic example">
									<button type="button" class="btn btn-secondary">-</button>
									<a class="btn btn-secondary disabled">Choosen Quantity</a>
									<button type="button" class="btn btn-secondary">+</button>
								</div>
							</li>
							<hr class="my-4">
							<li class="list-group-item mx-auto">
								<p class="card-text" style="color: BLUE">Rs. 99999</p>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>