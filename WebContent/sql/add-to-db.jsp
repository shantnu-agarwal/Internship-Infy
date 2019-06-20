<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
	String name = request.getParameter("InputName");
	String email = request.getParameter("InputEmail");
	String mobilenumber = request.getParameter("InputMobileNumber");
	String username = request.getParameter("InputUsername");
	String password = request.getParameter("InputPassword1");
	String role = request.getParameter("InputUserType");
	System.out.println("Adding " + name + " as " + role + " to DB.");
	System.out.println("Adding to MySQL DB");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
		Statement st = conn.createStatement();

		int i = st.executeUpdate("insert into users(full_name,email,phone_number,username,password) values('"
				+ name + "','" + email + "','" + mobilenumber + "','" + username + "','" + password + "')");
		int j = st.executeUpdate(
				"insert into user_roles(username,role)values('" + username + "', '" + role + "')");
		conn.close();
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>
<html>
<script>
	window.location
			.replace("http://localhost:8080/Internship-Infy/admin/manage-users.jsp");
</script>
</html>
