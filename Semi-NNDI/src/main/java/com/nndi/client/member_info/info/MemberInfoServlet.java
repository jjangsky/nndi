package com.nndi.client.member_info.info;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login/MemberInfo")
public class MemberInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			HttpSession loginMemberSession = request.getSession();
			System.out.println(loginMemberSession);
			request.setAttribute("member", loginMemberSession);
			
			request.getRequestDispatcher("/WEB-INF/views/client/member-info/info/MemberInfo.jsp").forward(request, response);
	}

}
