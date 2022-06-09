package com.nndi.client.member_info.rent;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.client.member_info.rent.RentRequestSQLAndCenterManagementDTO;

@WebServlet("/login/myPage/rentList")
public class RentListSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String user = request.getParameter("user");
		System.out.println(user);
		
		List<RentRequestSQLAndCenterManagementDTO> myPageRentList = MyPageRentService.selectMyRentRequest(user);
		System.out.println(myPageRentList);
		
		String path = "";
		if(myPageRentList != null) {
			path = "/WEB-INF/views/client/member-info/rent/RentList.jsp";
			request.setAttribute("myPageRentList", myPageRentList);
		} else {
			path = "/WEB-INF/views/client/member-info/rent/RentList.jsp";
			request.setAttribute("message", "게시물 목록 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
		
	}

	

}
