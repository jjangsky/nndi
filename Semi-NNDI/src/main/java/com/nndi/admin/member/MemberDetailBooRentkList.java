package com.nndi.admin.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.admin.member.BookRentAndBookInfoDTO;


@WebServlet("/login/admin/memberDetailBookRentList.do")
public class MemberDetailBooRentkList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = (request.getParameter("id"));
		
		System.out.println("가져왔니? " + id);
		
		AdminMemberService adminmemberService = new AdminMemberService();
		
		BookRentAndBookInfoDTO memberBookRentList = adminmemberService.selectOneMemberBookRentListById(id);
		
		System.out.println( "Servlet : " + memberBookRentList );
		
		String path = "";
		if (!"".equals(memberBookRentList.getMemId()) && memberBookRentList.getMemId() != null) {
			path = "/WEB-INF/views/admin/member/MemberDetailBookRentList.jsp";
			request.setAttribute("detailMemberAlive", memberBookRentList);
		} else {
			path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp";
			request.setAttribute("message", "목록 조회 실패!");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
