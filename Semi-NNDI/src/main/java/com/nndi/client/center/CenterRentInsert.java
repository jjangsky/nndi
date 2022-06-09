package com.nndi.client.center;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.RentRequestSQLDTO;


@WebServlet("/login/center/insert")
public class CenterRentInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		request.setCharacterEncoding("UTF-8");
		String code = request.getParameter("code");
		java.sql.Date start = java.sql.Date.valueOf(request.getParameter("start"));
		java.sql.Date end = java.sql.Date.valueOf(request.getParameter("end"));
		
		System.out.println(code);
		System.out.println(start);
		System.out.println(end);
		
		RentRequestSQLDTO rentReq = new RentRequestSQLDTO();
		rentReq.setCenterName(code);
		rentReq.setRentStart(start);
		rentReq.setRentEnd(end);
		
		int result = CenterService.insertRantReq(rentReq);
		
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/main/main.jsp";
			System.out.println("insert 성공");
		} else {
			path = "/WEB-INF/views/main/main.jsp";
			System.out.println("insert 실패");
		}
		
		
		request.getRequestDispatcher(path).forward(request, response);
		
		}

}
