package com.nndi.common.paging;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nndi.model.commondto.Pagenation;
import com.nndi.model.commondto.PagingDTO;
import com.nndi.model.joindto.admin.board.AdmireAndCategoryDTO;
import com.nndi.model.joindto.admin.classes.ClassesAndTeacherAndCenterDTO;

@WebServlet("/login/board/paging")
public class PagingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("페이징 처리 Servlet 출발 확인");
		
		String currentPage = request.getParameter("currentPage");
		System.out.println("서블릿에서 전달받은 currentPage 확인: " + currentPage);
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		String searchCondition = request.getParameter("searchCondition");
		String searchValue = request.getParameter("searchValue");
		
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("searchCondition", searchCondition);
		searchMap.put("searchValue", searchValue);
		
		System.out.println("Servlet에서 지정한 Map: " + searchMap);
		
		PagingService pagingService = new PagingService();
		int totalCount = pagingService.selectClassTotalCount(searchMap);
		System.out.println("Servlet에서 지정한 totalCount" + totalCount);
		
		int limit = 8;
		int buttonAmount = 5;
		
		PagingDTO PagingDTO = null;
		
		if(searchCondition != null && !"".equals(searchCondition)) {
			PagingDTO = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount, searchCondition, searchValue);
		} else {
			PagingDTO = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		}
		
		System.out.println("Service 처리 전 초기화 DTO 값 : " + PagingDTO);
		
		
		List<ClassesAndTeacherAndCenterDTO> classList = pagingService.selectBoradList(PagingDTO);
		
		
		System.out.println("Service 처리 후 초기화 DTO 값 : " + classList);
		
		String path = "";
		if(classList != null) {
			
			path = "/WEB-INF/views/client/classes/QNAClassList.jsp";
			request.setAttribute("classList", classList);
			request.setAttribute("PagingDTO", PagingDTO);
		} else {
			path = "/WEB-INF/views/common/resultPage/FailedResultPage.jsp";
			request.setAttribute("message", "게시물 목록 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
