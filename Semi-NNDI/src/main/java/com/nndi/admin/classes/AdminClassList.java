package com.nndi.admin.classes;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;


@WebServlet("/login/admin/classList")
public class AdminClassList extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("컨트롤러 도착");
		
		ClassesService classService = new ClassesService();
		
		List<ClassesAndTeacherAndCenterDTO> classList = classService.selectAllClassList();
		
		System.out.println("Controller : " + classList);
		
		String path = "";
		if (!classList.isEmpty()) {
			path = "/WEB-INF/views/admin/class/ClassList.jsp";
			request.setAttribute("classList", classList);
		} else {
			path = "/WEB-INF/views/selectErrorPage/selectError.jsp";
			System.out.println("잔넨..");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
}

}
