<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<jsp:include page="../../common/includepage/UserHeader.jsp"/>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../../common/includepage/CustomerContactCentersAside.jsp"/>
<section>
  <div>
    <h3 class="notice"><b>FAQ</b></h3>
  </div>
<div class="post list"> 
    <table class="blueone">
      <thead>
        <tr>
            <th>번호</th>
            <th>관리자 ID</th>           
            <th>제목</th>
            <th>조회수</th>
            <!-- <th>상세</th> -->
		    </tr>        
    </thead>
    <tbody>
    <c:forEach var="faq" items="${ requestScope.faqdto }">
      <tr>
          <td class="qaf">${faq.num}</td>
          <td class="qaf">${faq.managerId}</td>
          <td class="qaf">${faq.title}</td>
          <td class="qaf">${faq.hits}</td>
<%--            <td>
          	<button onclick="location.href = '${pageContext.servletContext.contextPath}/login/board/FAQListDetail?num=${faq.num}'">
          		보기
          	</button>
          </td> --%>
      </tr>
      </c:forEach>
    </tbody>
    </table>
    
  </div>
  
    <div class="pagination">
      <a href="#">&laquo;</a>
      <a href="#">1</a>
      <a class="active" href="#">2</a>
      <a href="#">3</a>
      <a href="#">4</a>
      <a href="#">5</a>
      <a href="#">6</a>
      <a href="#">&raquo;</a>
  </div>
</section>
<jsp:include page="../../common/includepage/UserFooter.jsp"/>
  <script>
		
		if(document.getElementsByClassName("qaf")) {
			
			const $tds = document.getElementsByClassName("qaf");
			for(let i = 0; i < $tds.length; i++) {
				
				$tds[i].onmouseenter = function() {

					this.parentNode.style.cursor = "pointer";
				}
				
				$tds[i].onclick = function() {
					/* 게시물 번호까지 알아왔으니 이제 상세보기는 할 수 있습니다. */
							
					const num = this.parentNode.children[0].innerText;
					location.href="${pageContext.servletContext.contextPath}/login/board/FAQListDetail?num=" + num;
					
				}
				
			}
			
		}
   </script>
</body>
</html>