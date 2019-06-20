
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
	String name = request.getParameter("InputName");
String email = request.getParameter("InputEmail");
String mobilenumber = request.getParameter("InputMobileNumber");
String username= request.getParameter("InputUsername");
String password = request.getParameter("InputPassword");
String role = "ROLE_USER";
String timestamp = new Timestamp(System.currentTimeMillis()).toString();
String by = "self";
	
	
	
	System.out.println("Adding to MySQL DB");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
		Statement st = conn.createStatement();

		int i = st.executeUpdate("insert into users(full_name,email,phone_number,username,password,time_created,added_by) values('"
				+ name + "','" + email + "','" + mobilenumber + "','" + username + "','" + password + "','" + timestamp + "', '"+ by + "')");
		int j = st.executeUpdate(
				"insert into user_roles(username,role)values('" + username + "', '" + role + "')");
		out.println("You have been registered");
		conn.close();
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>
