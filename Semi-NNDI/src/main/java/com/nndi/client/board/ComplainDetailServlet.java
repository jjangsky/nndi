package com.nndi.client.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.client.board.BoardAndCategoryDTO;

@WebServlet("/login/board/complain/detail/*")
public class ComplainDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int num = Integer.valueOf(request.getParameter("num"));
		
		System.out.println(num);
		
		BoardService boardService = new BoardService();
		
		BoardAndCategoryDTO complainDetail = boardService.complainDetail(num);
		
		System.out.println(complainDetail); //확인용
		
		String path = "";
		if(complainDetail != null) {
			path = "/WEB-INF/views/client/board/ComplainSelectDetail.jsp";
			request.setAttribute("complainDetail", complainDetail);
		} else {
			path = "/WEB-INF/views/client/board/ComplainSelectDetail.jsp";
			request.setAttribute("message", "게시물 목록 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}


}
