package com.nndi.admin.classes;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login/admin/classUpdate")
public class AdminClassUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int num = Integer.valueOf(request.getParameter("num"));
		
//		String num = request.getParameter("num");
		
		System.out.println("가져왔니 ? " + num);
		
		
		
		request.getRequestDispatcher("/WEB-INF/views/admin/class/ClassUpdate.jsp").forward(request, response);
		
	}

}
