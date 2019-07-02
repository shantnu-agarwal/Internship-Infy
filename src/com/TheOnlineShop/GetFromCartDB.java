package com.TheOnlineShop;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/GetFromCartDB")
public class GetFromCartDB extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("ID");

		System.out.println("Fetching item details for ID: " + id);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
			Statement st = conn.createStatement();

			ResultSet rs = st.executeQuery("SELECT * FROM inventory,images where inventory.item_ID='" + id + "' and images.item_ID='" + id + "';");

			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			String json = "";
			
			Map<String, Object> info = new LinkedHashMap<>();

			rs.next();

			String ITEM_NAME = (String) rs.getObject("item_name");
			int ITEM_PRICE = (Integer) rs.getObject("item_price");
			String IMAGE_NAME = (String) rs.getObject("image_name");
			info.put("item_name", ITEM_NAME);
			info.put("item_price", ITEM_PRICE);
			info.put("image_name", IMAGE_NAME);

			
			System.out.println("Item Name : " + ITEM_NAME);

			json = new Gson().toJson(info);

			response.getWriter().write(json);
		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}

	}
}