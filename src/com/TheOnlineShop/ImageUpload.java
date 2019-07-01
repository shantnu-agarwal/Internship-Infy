package com.TheOnlineShop;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class ImageUpload extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String UPLOAD_DIRECTORY = "C:/Users/Shantnu Agarwal/eclipse-workspace/Internship-Infy/WebContent/productimages";
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("Image upload being attempted.");
		String timestamp = new Timestamp(System.currentTimeMillis()).toString();
		try {
			String name = "";
			String item_ID="";
			List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
			for (FileItem item : multiparts) {
				if (!item.isFormField()) {
					name = new File(item.getName()).getName();
					item.write(new File(UPLOAD_DIRECTORY + File.separator + name));
				}
				else {
					
				    item_ID = item.getString();
					
				}
			}
	
			System.out.println("ID received: " + item_ID);
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
			Statement st = conn.createStatement();
			st.executeUpdate("INSERT INTO images(item_ID,image_url,image_name,time_added) values(" + item_ID + ",'"
					+ (UPLOAD_DIRECTORY + File.separator + name) + "','"+ name +"','" + timestamp + "');");
			// File uploaded successfully
			System.out.println("Image was uploaded successfully!");
			response.sendRedirect("http://localhost:8080/Internship-Infy/seller/inventory");
		} catch (Exception ex) {
			System.out.print(ex);
			ex.printStackTrace();
			request.setAttribute("message", "File Upload Failed due to " + ex);
			System.out.println("Image uploading FAILED!");
		}
		

//        request.getRequestDispatcher("/result.jsp").forward(request, response);

	}

}