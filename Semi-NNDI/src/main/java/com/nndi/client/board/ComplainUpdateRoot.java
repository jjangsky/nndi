package com.nndi.client.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.client.board.BoardAndCategoryDTO;

@WebServlet("/login/board/complain/update")
public class ComplainUpdateRoot extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int num = Integer.parseInt(request.getParameter("num"));
		
		request.setAttribute("num", num);
		
		String path = "/WEB-INF/views/client/board/ComplainUpdate.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
		
		
		
	}


}
