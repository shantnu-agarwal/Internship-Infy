package com.TheOnlineShop;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServlet;

public class addProductIntoDB extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 2L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("InputName");
		String category = request.getParameter("InputCategory");
		String price= request.getParameter("InputPrice");
		String info = request.getParameter("InputInfo");
		String quantity = request.getParameter("InputQuantity");
		
		String timestamp = new Timestamp(System.currentTimeMillis()).toString();
		String seller = request.getParameter("InputSeller");

		System.out.println("Adding to MySQL DB");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
			Statement st = conn.createStatement();

			int a = st.executeUpdate(
					"insert into inventory(item_name,item_price,item_quantity,item_info,category,time_added,time_updated,seller_username) values('"
							+ name + "','" + price + "','" + quantity + "','" + info + "','" + category + "','"
							+ timestamp + "','" + timestamp + "','" + seller+ "')");

			System.out.println("New Product added by " + seller + ". Product quantity: " + quantity);

			String text = "OK";

			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(text);
			conn.close();
		} catch (Exception e) {
			String text = "NOT OKAY";

			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(text);
			
			System.out.print(e);
			e.printStackTrace();
		} finally {

		}
	}

}
