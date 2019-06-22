package com.TheOnlineShop;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;

@WebServlet("/LogOutServlet")
public class LogOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(auth!=null)
			new SecurityContextLogoutHandler().logout(request, response, auth);
		
		response.sendRedirect("http://localhost:8080/Internship-Infy/");
		System.out.println("LogOutServlet: Log out complete");
	}

}
