package com.nndi.client.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.QnaDTO;

@WebServlet("/login/board/QNABoardListDetail")
public class QNABoardListDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		QNABoardListService qnaservice = new QNABoardListService();
		QnaDTO qnadto = qnaservice.QnaDetail(num);
		
		System.out.println(qnadto);
		request.setAttribute("qnadto", qnadto);
		
		request.getRequestDispatcher("/WEB-INF/views/client/board/QNABoardListDetail.jsp").forward(request, response);
		
		
		}	
}
