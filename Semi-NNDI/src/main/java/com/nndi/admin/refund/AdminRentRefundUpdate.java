package com.nndi.admin.refund;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login/admin/rentRefund.do")
public class AdminRentRefundUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/*대관 환불 내역 업데이트 서블릿 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("서블릿 도착 확인");
		
		int num = Integer.valueOf(request.getParameter("postNum"));
		System.err.println(num);
		
		RefundService refundService = new RefundService();
		
		int result = refundService.updateRentRefund(num);
		
		if(result > 0) {
			response.sendRedirect("rentRefundList");
			System.out.println("success");
		} else {
			request.getRequestDispatcher("/WEB-INF/views/selectErrorPage/UpdateFail.jsp").forward(request, response);
			System.out.println("fail");
		}
		
	}

}
