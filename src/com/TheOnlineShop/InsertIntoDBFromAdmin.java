package com.TheOnlineShop;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;

import java.io.IOException;
import java.sql.*;
import java.util.*;
import javax.servlet.http.*;

@WebServlet("/NewAccountFromAdmin")
public class InsertIntoDBFromAdmin extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("InputName");
		String email = request.getParameter("InputEmail");
		String mobilenumber = request.getParameter("InputMobileNumber");
		String username = request.getParameter("InputUsername");
		String password = request.getParameter("InputPassword1");
		String role = request.getParameter("InputUserType");
		System.out.println("Adding " + name + " as " + role + " to DB.");
		String timestamp = new Timestamp(System.currentTimeMillis()).toString();
		String by = "admin";

		System.out.println("Adding to MySQL DB");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
			Statement st = conn.createStatement();

			int i = st.executeUpdate(
					"insert into users(full_name,email,phone_number,username,password,time_created,added_by) values('"
							+ name + "','" + email + "','" + mobilenumber + "','" + username + "','" + password + "','"
							+ timestamp + "', '" + by + "')");
			int j = st.executeUpdate("insert into user_roles(username,role)values('" + username + "', '" + role + "')");
			System.out.println("Account Created Successfully.");
			conn.close();
		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		finally{
			response.sendRedirect("http://localhost:8080/Internship-Infy/admin/manage-users.jsp");
		}
	}
}
