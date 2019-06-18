<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String phonenumber = request.getParameter("phonenumber");
	String email = request.getParameter("email");
	String sellername = request.getParameter("sellername");
	String role = "ROLE_SELLER";
	System.out.println("Adding to MySQL DB");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
		Statement st = conn.createStatement();

		int i = st.executeUpdate("insert into sellers(username,password,phone_number,email,sellername)values('" + username
				+ "','" + password + "','" + phonenumber + "','" + email + "','" + sellername + "')");
		int j = st.executeUpdate(
				"insert into user_roles(username,role)values('" + username + "', '" + role + "')");
		out.println("You have been registered");
		conn.close();
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>
<html>
<script>window.location.replace("http://localhost:8080/Internship-Infy/admin/account-management.jsp");</script>
</html>
