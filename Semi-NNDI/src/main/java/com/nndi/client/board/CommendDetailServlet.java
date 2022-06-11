package com.nndi.client.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.AdmireDTO;
import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.joindto.client.board.AdmireAndCategoryDTO;

@WebServlet("/board/list/commend/detail/*")
public class CommendDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession loginSession = request.getSession();
		MemberAliveDTO loginMember = (MemberAliveDTO) loginSession.getAttribute("loginMember");
		System.out.println(loginMember.getId());
		
		int num = Integer.valueOf(request.getParameter("num"));
		
		System.out.println(num);
		
		AdmireAndCategoryDTO commendDetail = BoardService.commendDetail(num);
		
		System.out.println(commendDetail);
		
		String path = "";
		if(loginMember.getId().equals(commendDetail.getMemId())) {
			path = "/WEB-INF/views/client/board/CommendDetail.jsp";
			request.setAttribute("commendDetail", commendDetail);
		} else {
			path = "/WEB-INF/views/client/board/Commend.jsp";
			request.setAttribute("message", "게시물 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
