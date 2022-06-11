/*
 * package com.nndi.admin.member;
 * 
 * import java.io.IOException; import java.util.List;
 * 
 * import javax.servlet.ServletException; import
 * javax.servlet.annotation.WebServlet; import javax.servlet.http.HttpServlet;
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * import
 * com.nndi.model.joindto.admin.member.MemberAliveAndBookRentAndBookInfoDTO;
 * 
 * 
 * @WebServlet("/login/admin/memberDetailBookRentList.do") public class
 * MemberDetailBooRentkList extends HttpServlet { private static final long
 * serialVersionUID = 1L;
 * 
 * protected void doGet(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException {
 * 
 * System.out.println("확인용 서블릿 도착");
 * 
 * AdminMemberService adminmemberService = new AdminMemberService();
 * 
 * List<MemberAliveAndBookRentAndBookInfoDTO> memberBookRentList =
 * adminmemberService.selectOneMemberBookRentListById();
 * 
 * // for(MemberAliveAndBookRentAndBookInfoDTO memberBookRentList
 * :memberBookRentList ) { // System.out.println(memberBookRentList); // } // //
 * String path = ""; // if (!memberBookRentList.isEmpty()) { // path =
 * "/WEB-INF/views/admin/member/MemberDetailBookRentList.jsp"; //
 * request.setAttribute("memberBookRentList", memberBookRentList); // } else {
 * // path = "/WEB-INF/views/admin/selectErrorPage/selectError.jsp"; //
 * request.setAttribute("message", "목록 조회 실패!"); // // } // //
 * request.getRequestDispatcher(path).forward(request, response);
 * 
 * }
 * 
 * }
 * 
 */