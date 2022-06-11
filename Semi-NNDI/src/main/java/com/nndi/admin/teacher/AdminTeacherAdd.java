package com.nndi.admin.teacher;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.TeacherDTO;

@WebServlet("/login/admin/teacherAdd")
public class AdminTeacherAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/views/admin/teacher/TeacherAdd.jsp").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("강사등록");

		String no = request.getParameter("no");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		java.util.Date birth = null;
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        try {
        	birth = formatter.parse(request.getParameter("birth"));
        } catch (ParseException e) {
               e.printStackTrace();
        }
		
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String contractYn = request.getParameter("contractYn");
        
        TeacherDTO teacher = new TeacherDTO();
		
        teacher.setNo(no);
        teacher.setName(name);
        teacher.setGender(gender);
        teacher.setBirth(birth);
        teacher.setEmail(email);
        teacher.setPhone(phone);
        teacher.setAddress(address);
        teacher.setContractYn(contractYn);

		System.out.println(teacher);
		
		TeacherService teacherService = new TeacherService();
		
		int result = TeacherService.insertTeacher(teacher);
		
		System.out.println(result);
		
		if(result>0) {
			response.sendRedirect("TeacherList");
			System.out.println("success");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/selectErrorPage/UpdateFail.jsp").forward(request, response);
			System.out.println("fail");
		}


	}

}
