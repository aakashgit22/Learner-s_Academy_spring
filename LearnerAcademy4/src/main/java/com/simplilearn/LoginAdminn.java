
package com.simplilearn;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "LoginAdminn", urlPatterns = {"/LoginAdminn"})

public class LoginAdminn extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
   
   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		String un=request.getParameter("username");
		String pw=request.getParameter("password");
		
		if(un.equals("admin") && pw.equals("admin"))
		{
			response.sendRedirect("adminHomepage.jsp");
			return;
		}
		else
		{
			response.sendRedirect("adminlogin.jsp");
			return;
		}
	}
}
		
	