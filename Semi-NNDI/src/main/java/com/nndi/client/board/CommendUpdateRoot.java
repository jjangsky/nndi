package com.nndi.client.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login/board/commend/update")
public class CommendUpdateRoot extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		System.out.println(num);
		
		/*
		BoardService board = new BoardService();
		
		BoardAndCategoryDTO cmd = board.complainDetail(num);
		
		request.setAttribute("cmd", cmd);
		*/
		request.setAttribute("num", num);
		
		request.getRequestDispatcher("/WEB-INF/views/client/board/CommendUpdate.jsp").forward(request, response);

	}


}
