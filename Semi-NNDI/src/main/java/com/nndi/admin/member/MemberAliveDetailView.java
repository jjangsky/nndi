package com.nndi.admin.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.MemberAliveDTO;

@WebServlet("/login/admin/detailaliveMember.do")
public class MemberAliveDetailView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id =(request.getParameter("id"));
		
		System.out.println("가져왔니? " + id);
		
		AdminMemberService adminmemberService = new AdminMemberService();
		
		MemberAliveDTO detailMemberAlive = adminmemberService.selectOneMemberAliveById(id);
		
		System.out.println( "Servlet : " + detailMemberAlive );
		
		String path = "";
		if (!"".equals(detailMemberAlive.getId()) && detailMemberAlive.getId() != null) {
			path = "/WEB-INF/views/admin/member/MemberDetail.jsp";
			request.setAttribute("detailMemberAlive", detailMemberAlive);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			request.setAttribute("message", "목록 조회 실패!");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
