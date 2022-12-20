package com.simplilearn;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "logout",  urlPatterns = {"/logout"})
public class logout extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;

	protected void doget(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	HttpSession session = request.getSession(false);
	session.removeAttribute("username");
	session.invalidate();
	
	response.sendRedirect("adminlogin.jsp");
	}
}
