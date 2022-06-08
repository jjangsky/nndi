package com.nndi.client.Account;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.ManagerDTO;

@WebServlet("/Account/Managerinput")
public class AccountManagerInputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ManagerDTO managerList = new ManagerDTO();
		
		managerList.setManagerId(request.getParameter("managerId"));
		managerList.setPwd(request.getParameter("password"));
		managerList.setManagerName(request.getParameter("managerName"));
		
		int result = new MemberService().registManager(managerList);
		
		if(result > 0) {
			System.out.println("가입 성공");
			response.sendRedirect(request.getContextPath());
		} else {
			System.out.println("가입 실패");
			response.sendRedirect(request.getContextPath());
		}
	}

}
