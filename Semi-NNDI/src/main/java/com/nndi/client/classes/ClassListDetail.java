package com.nndi.client.classes;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.ClassDTO;

@WebServlet("/login/board/ClassListDetail")
public class ClassListDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("ClassListDetail 서블릿 확인용");
		int num = Integer.parseInt(request.getParameter("num"));
		
		System.out.println("파라미터 확인용"+num);
		
		ClassListService classlist = new ClassListService();
		ClassDTO classdto = classlist.classdetail(num);
		
		System.out.println("dto확인용"+classdto);
		request.setAttribute("classdto", classdto);
		
		request.getRequestDispatcher("/WEB-INF/views/client/classes/ClassListDetail.jsp").forward(request, response);
		
		
		}	
}