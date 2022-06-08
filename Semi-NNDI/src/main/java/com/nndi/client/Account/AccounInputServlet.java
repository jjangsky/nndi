package com.nndi.client.Account;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.MemberAliveDTO;

@WebServlet("/Account/input")
public class AccounInputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		MemberAliveDTO memberlist = new MemberAliveDTO();
		
		memberlist.setName(request.getParameter("uName"));
		memberlist.setGender(request.getParameter("selectGender"));
		
		if(memberlist.getGender().equals("남")){
			memberlist.setGender("M");
		} else {
			memberlist.setGender("W");
		}
		
		memberlist.setId(request.getParameter("userId"));
		memberlist.setIdQueNum(Integer.valueOf(request.getParameter("selectIdQueNum")));
		memberlist.setIdAnswer(request.getParameter("idQueAnswer"));
		memberlist.setPwd(request.getParameter("password"));
		memberlist.setEmail(request.getParameter("str_email01") +"@"+ request.getParameter("selectEmail"));
		
		java.util.Date date = null;
		
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
				try {
					date = formatter.parse(request.getParameter("userBD"));
					memberlist.setBirth(date);
				} catch (ParseException e) {
					e.printStackTrace();
				}
			
		memberlist.setAddress(request.getParameter("address")+request.getParameter(" address2"));
		memberlist.setPhone(request.getParameter("selectUserPhone")+request.getParameter("phone2")+request.getParameter("phone3"));
		
		int result = new MemberService().registMember(memberlist);
	
		if(result > 0) {
			System.out.println("가입 성공");
			response.sendRedirect(request.getContextPath());
		} else {
			System.out.println("가입 실패");
			response.sendRedirect(request.getContextPath());
		}
	}

}
