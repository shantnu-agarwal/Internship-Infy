package com.TheOnlineShop;

import javax.servlet.http.HttpServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/admin/deleteAccount")
public class deleteAccount extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("deleteUsername");
		System.out.println("Attempting to remove the account of: " + name);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
			Statement st = conn.createStatement();

			int a = st.executeUpdate("DELETE FROM users where username=\"" + name +"\";");
			a = st.executeUpdate("DELETE FROM user_roles where username=\"" + name +"\";");
			conn.close();	
			
			System.out.println("Success");

			String text = "OK";

			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(text);
			response.sendRedirect("http://localhost:8080/Internship-Infy/admin/manageUsers?kick=done");
			
		} catch (Exception e) {
			String text = "NOT OKAY";

			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(text);
			response.sendRedirect("http://localhost:8080/Internship-Infy/admin/manageUsers?kick=fail");
			
			System.out.print(e);
			e.printStackTrace();
		} finally {

		}
	}

}
