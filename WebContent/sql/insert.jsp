
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String phonenumber = request.getParameter("phonenumber");
	String email = request.getParameter("email");
	String role = "ROLE_USER";
	System.out.println("Adding to MySQL DB");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
		Statement st = conn.createStatement();

		int i = st.executeUpdate("insert into users(username,password,phone_number,email)values('" + username
				+ "','" + password + "','" + phonenumber + "','" + email + "')");
		int j = st.executeUpdate(
				"insert into user_roles(username,role)values('" + username + "', '" + role + "')");
		out.println("You have been registered");
		conn.close();
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>
