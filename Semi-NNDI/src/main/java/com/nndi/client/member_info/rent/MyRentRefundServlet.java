package com.nndi.client.member_info.rent;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nndi.model.commondto.MemberAliveDTO;
import com.nndi.model.joindto.client.member_info.rent.RentRequestSQLAndCenterManagementDTO;

@WebServlet("/login/rent/refund")
public class MyRentRefundServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession loginSession = request.getSession();
		MemberAliveDTO loginMember = (MemberAliveDTO) loginSession.getAttribute("loginMember");
		System.out.println(loginMember.getId());
		
		String login = loginMember.getId();
		
		List<RentRequestSQLAndCenterManagementDTO> rentRefund = MyPageRentService.selectRentRefund(login);
		System.out.println(rentRefund);
		
		String path = "";
		if(rentRefund != null) {
			path = "/WEB-INF/views/client/member-info/rent/RentRefund.jsp";
			request.setAttribute("rentRefund", rentRefund);
		} else {
			path = "/WEB-INF/views/client/member-info/rent/RentRefund.jsp";
			request.setAttribute("message", "게시물 목록 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}


}
