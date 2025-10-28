package com.company.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.company.dao.UserDao;

/**
 * Servlet implementation class forgotServlet
 */
@WebServlet("/forgotServlet")
public class forgotServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forgotServlet() {
        super();
        // TODO Auto-generated constructor stub-
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String newPass = request.getParameter("new-password");
		String email = request.getParameter("email");
	
		UserDao.updateQuery(newPass, email);
	}

}
