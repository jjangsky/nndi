package com.nndi.client.member_info.book;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.joindto.client.member_info.book.MemberAndBookRentDTO;


@WebServlet("/login/Member/BookRent")
public class RentListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("고객 대출 도서 조회 Servlet 도착 ");
		/* Service, DTO 객체 생성 */
		MemberBookService memberService = new MemberBookService();
		
		/* 로그인 된 고객 Session 정보 가져오기 */
		HttpSession loginSession = request.getSession();
		
		/* 가져온 로그인 된 고객 Session정보로 해당 고객이 빌린 도서 대출 내역 조회해 오기(반납되지 않은 도서만) */
		List<MemberAndBookRentDTO>bookRentList = memberService.UserRentBook(loginSession);
		
		String path = "";
		System.out.println("Servlet에서의 조회 결과값: " + bookRentList);
		
		/* 가져온 고객 대출 도서 목록 Session에 담기 */
		HttpSession userBookRent = request.getSession();
		
		System.out.println("Servlet에서 Session에 담긴 결과값" + userBookRent.getAttribute("RentBookList"));
		/* 가져온 결과값에 따른 조건문 처리 */
		if(bookRentList.isEmpty()) {
			path = "";
			System.out.println("대출 도서 없음");
		} else {
			request.setAttribute("bookRentList", userBookRent);
			path = "/WEB-INF/views/client/member-info/book/MemberRentBookList.jsp";
			System.out.println("대출 도서 있음");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}


}
