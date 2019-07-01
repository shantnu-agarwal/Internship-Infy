//TO GET THE ITEMS FROM THE CART TABLE FOR THE CART PAGE
package com.TheOnlineShop;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

public class ViewCart extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");

		System.out.println("Fetching cart details for " + username);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
			Statement st = conn.createStatement();

			ResultSet rs = st.executeQuery("SELECT * FROM cart where username='" + username + "' and transaction_status='NOT DONE';");
			
			
			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			String json="";
			int cnt=1;
			List<Integer> list = new ArrayList<>();
		    
			while (rs.next()) {
				
				int ITEM_ID = (Integer) rs.getObject("item_id");
				int ITEM_QUANTITY = (Integer) rs.getObject("quantity");
				list.add(ITEM_ID);
				list.add(ITEM_QUANTITY);
				cnt++;
				System.out.println(ITEM_ID);
				System.out.println(ITEM_QUANTITY);
				
				json = new Gson().toJson(list);
				
			}
			response.getWriter().write(json);
		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}

		
			

	}
}