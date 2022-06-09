package com.nndi.client.classes;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;

@WebServlet("/login/board/ClassphList")
public class ClassPhysicalList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("서블릿 확인용");
		ClassListService classservice = new ClassListService();
		List<ClassesAndTeacherAndCenterDTO> classList = classservice.ClassPhysicalList();
		System.out.println("dto 확인용 "+ classList);
		
		request.setCharacterEncoding("UTF-8");
		
		request.setAttribute("classList", classList);
		
		request.getRequestDispatcher("/WEB-INF/views/client/classes/ClassPhysicalList.jsp").forward(request, response);
		
	}
	
}	
