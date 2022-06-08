package com.nndi.client.use_intro;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/site/NNDIIntroduce")
public class NNDIIntroduceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path="";
		path="/WEB-INF/views/client/use-intro/NNDIIntroduceMainPage.jsp";

		request.getRequestDispatcher(path).forward(request, response);
	}

}
