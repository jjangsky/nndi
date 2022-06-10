package com.nndi.client.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/commend/delete/*")
public class CommendDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int num = Integer.valueOf(request.getParameter("num"));
		
		int result = BoardService.deleteCommend(num);
		
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/client/board/CommendList.jsp";
			System.out.println("삭제 성공!");
		} else {
			path = "/WEB-INF/views/client/board/CommendList.jsp";
			System.out.println("삭제 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	
	}


}
