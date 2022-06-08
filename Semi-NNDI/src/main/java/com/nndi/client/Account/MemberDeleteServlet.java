package com.nndi.client.Account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.MemberAliveDTO;

@WebServlet("/OutMember")
public class MemberDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("탈퇴 신청 서블릿 도착");
		
		HttpSession loginSession = request.getSession();
		MemberAliveDTO loginMember = (MemberAliveDTO) loginSession.getAttribute("loginMember");
		
		int result = new MemberService().deletemember(loginMember);
		
		if(result > 0) {
			System.out.println("회원 탈퇴 성공");
		      loginSession.setAttribute("loginStatus", 0);
		      response.sendRedirect(request.getContextPath());
		} else {
			System.out.println("회원 탈퇴 실패");
			response.sendRedirect(request.getContextPath());
		}
	}


}
