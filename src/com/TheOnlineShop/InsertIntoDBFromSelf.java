package com.TheOnlineShop;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertIntoDBFromSelf")
public class InsertIntoDBFromSelf extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("InputName");
		String email = request.getParameter("InputEmail");
		String mobilenumber = request.getParameter("InputMobileNumber");
		String username= request.getParameter("InputUsername");
		String password = request.getParameter("InputPassword1");
		String role = "ROLE_USER";
		String timestamp = new Timestamp(System.currentTimeMillis()).toString();
		String by = "self";
			

			System.out.println("Adding to MySQL DB");
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
				Statement st = conn.createStatement();

				int a = st.executeUpdate("insert into users(full_name,email,phone_number,username,password,time_created,added_by) values('"
						+ name + "','" + email + "','" + mobilenumber + "','" + username + "','" + password + "','" + timestamp + "', '"+ by + "')");
				a = st.executeUpdate(
						"insert into user_roles(username,role)values('" + username + "', '" + role + "')");
				System.out.println("New User Added (self): " + username);
				conn.close();
		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		finally{
			response.sendRedirect("http://localhost:8080/Internship-Infy/?register=true");
		}
	}
}
