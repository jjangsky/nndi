package com.nndi.client.book;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.admin.book.BookService;
import com.nndi.model.commondto.BookInfoDTO;

@WebServlet("/site/ClientBookInfo")
public class ClientBookList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("컨트롤러 도착");
		
		ClientBookService bookService = new ClientBookService();
		
		List<BookInfoDTO> bookList = bookService.selectAllBookList();
		
		for(BookInfoDTO book : bookList) {
			System.out.println(book);
		}
		
		String page = "";
		
		if(!bookList.isEmpty()) {
			
			page = "/WEB-INF/views/client/book/bookList.jsp";
			
			request.setAttribute("bookList", bookList);

		} else {
			
			page = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
			
			request.setAttribute("message", "도서 조회에 실패하셨습니다. 자세한 사항은 유선으로 연락 부탁드립니다.");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
		
	
		
	}

}
