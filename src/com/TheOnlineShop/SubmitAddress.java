package com.TheOnlineShop;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SubmitAddress extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("ID");
		String address = request.getParameter("InputFlat") + " "+ request.getParameter("InputArea") + " "
				+ request.getParameter("InputCity") + " " + request.getParameter("InputState") + " "
				+ request.getParameter("InputPincode");
		String username = request.getParameter("InputUsername");
		try{
				address += " " + request.getParameter("InputLandmark");
		}
		catch(Exception e) {
			
		}
		System.out.println("Received address as " + address);
	
		
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
			Statement st = conn.createStatement();

			int a = st.executeUpdate("UPDATE users SET address='"+ address +"' where username='" + username + "';");

			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			response.sendRedirect("http://localhost:8080/Internship-Infy/Transaction/ConfirmOrder");
		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();

		}

	}
}