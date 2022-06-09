package com.nndi.client.classes;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.ClassMemberDTO;
import com.nndi.model.commondto.ClassPaymentDTO;

@WebServlet("/login/board/ClassApply")
public class ClassApply extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("서블릿 확인용입니당");
		
		int num = Integer.parseInt(request.getParameter("clsNum"));
		
		System.out.println("클래스 넘버 확인용" + num);
		
		
		ClassMemberDTO classmemberdto = new ClassMemberDTO();
		ClassPaymentDTO paymentdto = new ClassPaymentDTO();
		
		ClassApplyService classapply = new ClassApplyService();
		int result = classapply.classmemberinsert(classmemberdto, paymentdto);
		System.out.println("인서트 확인용"+paymentdto);
		
		if(result>0) {
//			response.sendRedirect("QNABoardList");
			System.out.println("성공시 콘솔 출력 문구");
		} else {
			System.out.println("실패시 콘솔 출력");
		}
	}	
}
