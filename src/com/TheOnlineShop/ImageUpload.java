package com.TheOnlineShop;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
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
	private String UPLOAD_DIRECTORY = "D:/Libraries/intern-infy/";
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
      
    	
        try {  
        	String name="";
        	List<FileItem> multiparts = new ServletFileUpload(
        			new DiskFileItemFactory()).parseRequest(request);
        	for(FileItem item : multiparts){
        		if(!item.isFormField()){
        			 name = new File(item.getName()).getName();
        			item.write( new File(UPLOAD_DIRECTORY + File.separator + name));
        		}
        	}
        	String item_ID = request.getParameter("");
        	Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
			Statement st = conn.createStatement();
			st.executeUpdate("INSERT INTO images(item_ID,image_url) values(" + item_ID + ",'" + (UPLOAD_DIRECTORY + File.separator + name) + "');");            
            //File uploaded successfully
            request.setAttribute("message", "File Uploaded Successfully");
            } 	catch (Exception ex) {
               request.setAttribute("message", "File Upload Failed due to " + ex);
            }          
          
        System.out.println(request+ "\n" + response);
     
//        request.getRequestDispatcher("/result.jsp").forward(request, response);
      
    }

}