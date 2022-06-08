package com.nndi.admin.main;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login/admin/main")
public class AdminMainPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		나중에 로그인 완료되면 바껴야 함다!!!!!!!!!!!!!!!!!
//		request.setCharacterEncoding("UTF-8");
//		
//		request.getRequestDispatcher("/WEB-INF/views/admin/login/AdminMain.jsp").forward(request, response);
//	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		request.getRequestDispatcher("/WEB-INF/views/admin/login/AdminMain.jsp").forward(request, response);
	}
}
