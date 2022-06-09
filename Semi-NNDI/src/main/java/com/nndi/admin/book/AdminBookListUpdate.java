package com.nndi.admin.book;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.BookInfoDTO;

@WebServlet("/login/admin/deleteBook.do")
public class AdminBookListUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("서블릿 도착");
		
		int code = Integer.valueOf(request.getParameter("code"));
		System.out.println(code);
		
		BookService bookService = new BookService();
		int result = bookService.updateBookSearchYn(code);
		
		if (result > 0) {
			response.sendRedirect("bookList");
			System.out.println("변경 성공");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/selectErrorPage/UpdateFail.jsp").forward(request, response);
		}
	}


}
