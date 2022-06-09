package com.nndi.admin.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.QnaDTO;


@WebServlet("/login/admin/QnaRE")
public class AdminQnaRE extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		String content = request.getParameter("content");
		int num = Integer.valueOf(request.getParameter("num"));
		
		System.out.println("Controller " + content + " " + num);
		
		QnaDTO Qna = new QnaDTO();
		
		Qna.setNum(num);
		Qna.setAnswerContent(content);
		
		BoardService boardService = new BoardService();
		
		int result = boardService.UpdateQnaRE(Qna);
		
		if(result>0) {
			response.sendRedirect("qnaList");
			System.out.println("success");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/selectErrorPage/UpdateFail.jsp").forward(request, response);
			System.out.println("fail");
		}
		
	}

}
