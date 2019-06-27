<%@page import="java.sql.*"%>
<div class="row">
	<div class="col-sm-3 mx-auto">
		<h3 style="font-family: sans-serif;">Top Selling Products</h3>
	</div>
</div>


<div class="row text-center" style="margin-top: 2rem; margin-bottom:5rem;">
	<%
		try {
			String type = request.getParameter("category");
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
			Statement st = conn.createStatement();
			int cnt = 0;
			ResultSet us;
			if(type!=null){
				System.out.println("not null");
				 us = st.executeQuery("SELECT * FROM inventory WHERE category='" + type + "';");
			}
			else{
				us = st.executeQuery("SELECT * FROM inventory ORDER BY time_added DESC;");
			}	
			while (us.next()) {
				cnt++;
	%>
	<div class="col-sm-3 mx-auto" style="margin-bottom: 1rem;">
		<div class="card">
			<div class="card-body">
				<img class="card-img-top"
					src="/Internship-Infy/inventory/productimg/whirlpool-330-fridge.jpeg"
					style="width: 20rem; height: auto;" alt="Product Image">
				<div class="card-body">
					<h4 class="card-title" id="item_Name"><%=us.getString("item_name")%></h4>
					<small class="card-text" id="item_Info"
						style="overflow: hidden; text-overflow: ellipsis;"><%=us.getString("item_info")%></small>
					<br> <a class="btn btn-primary"
						style="color: white; margin-top: 1rem"
						href="inventory/show-item.jsp?id=<%=us.getString("item_ID")%>"
						id="item_Price"> Rs. <%=us.getString("item_price")%></a>
				</div>
			</div>
		</div>
	</div>



	<%
		}
		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
	%>


</div>


