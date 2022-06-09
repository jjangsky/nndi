package com.nndi.client.member_info.rent;


import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.joindto.client.member_info.rent.RentRequestSQLAndCenterManagementDTO;

@WebServlet("/login/rent/cancel/update/*")
public class MyRentCancelUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int num = Integer.parseInt(request.getParameter("num"));
		
		System.out.println(num);
		
		int result = MyPageRentService.updateCancel(num);
		
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/client/member-info/rent/RentList.jsp";
			System.out.println("update 성공");
		} else {
			path = "/WEB-INF/views/client/member-info/rent/RentList.jsp";
			System.out.println("update 실패");
		}

		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

	
}
