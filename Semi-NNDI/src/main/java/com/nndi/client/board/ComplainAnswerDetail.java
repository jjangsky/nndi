package com.nndi.client.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.client.board.BoardAndCategoryDTO;

@WebServlet("/login/answer/complain/detail/*")
public class ComplainAnswerDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			      
      int num = Integer.valueOf(request.getParameter("num"));
      
      System.out.println(num);
      
      BoardService boardService = new BoardService();
      
      BoardAndCategoryDTO complainAnswer = boardService.selectComplainAnswer(num);
      
      System.out.println(complainAnswer); //확인용
      
      String path = "";
		if(complainAnswer != null) {
			path = "/WEB-INF/views/client/board/ComplainAnswerDetail.jsp";
			request.setAttribute("complainAnswer", complainAnswer);
		} else {
			path = "/WEB-INF/views/client/board/ComplainAnswerDetail.jsp";
			request.setAttribute("message", "게시물 목록 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);

	
	}


}
