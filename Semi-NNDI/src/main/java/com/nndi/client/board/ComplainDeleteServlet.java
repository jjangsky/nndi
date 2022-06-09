package com.nndi.client.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login/board/complain/delete/*")
public class ComplainDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.valueOf(request.getParameter("num"));
	
		System.out.println(num);
		
		BoardService boardService = new BoardService();
		
		int result = boardService.deleteComplain(num);
		
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/client/board/ComplainSelect.jsp";
			System.out.println("조회 여부 변경 성공");
		} else {
			path = "/WEB-INF/views/client/board/ComplainSelect.jsp";
			System.out.println("조회 여부 변경 실패");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}


}
