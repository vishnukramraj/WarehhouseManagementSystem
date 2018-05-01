package com.application.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.application.model.Authenticator;
import com.application.model.UserInfo;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
    public LoginServlet() {
    	super();
    }
    /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	*/
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("userId");
		String password = request.getParameter("password");
		RequestDispatcher dispatcher = null;
		Authenticator authenticator = new Authenticator();
		boolean result = authenticator.authenticate(username, password);
		if (result) {
			dispatcher = request.getRequestDispatcher("/success.jsp");
			UserInfo user = new UserInfo(username, password);
			request.setAttribute("user", user);
		} else {
			dispatcher = request.getRequestDispatcher("/error.jsp");
		}
		dispatcher.forward(request, response);
	}

}
