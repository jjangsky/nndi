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
  <div class="post list"> 
    <table class="blueone">
      <thead>
        <tr>
            <th>번호</th>
            <th>아이디</th>           
            <th>날짜</th>
            <th>제목</th>
            <th>공개여부</th>
            <th>조회수</th>
		    </tr>        
    </thead>
    <tbody>
    <c:forEach var="qna" items="${ requestScope.qnalist }">
      <tr>
          <td class="test">${qna.num}</td>
          <td class="test">${qna.memId}</td>
          <td class="test">${qna.postDate}</td>
          <td class="test">${qna.title}</td>
          <td class="test">${qna.displayYn}</td>
          <td class="test">${qna.hits}</td>

      </tr>
       <c:if test="${qna.managerId != null}">

      <tr>
      	  <td>[답변]</td>
          <td class="test2" style="display: none;">${qna.num}</td>
          <td class="test2">${qna.managerId}</td>
          <td class="test2">${qna.postDate}</td>
          <td class="test2">${qna.title}</td>
          <td class="test2">${qna.displayYn}</td>
          <td class="test2">${qna.hits}</td>

      </tr>

      </c:if> 
      </c:forEach>
    </tbody>
    </table>
    
    
  </div>
  <button class="r1" onclick="location.href='${pageContext.servletContext.contextPath}/login/board/QNAWritepage'">문의글작성</button>
  
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
		
		if(document.getElementsByClassName("test")) {
			
			const $tds = document.getElementsByClassName("test");
			for(let i = 0; i < $tds.length; i++) {
				
				$tds[i].onmouseenter = function() {

					this.parentNode.style.cursor = "pointer";
				}
				
				$tds[i].onclick = function() {
							
					const num = this.parentNode.children[0].innerText;
					location.href="${pageContext.servletContext.contextPath}/login/board/QNABoardListDetail?num=" + num;
					
				}
				
			}
			
		}
		
		if(document.getElementsByClassName("test2")) {
			
			const $tds = document.getElementsByClassName("test2");
			for(let i = 0; i < $tds.length; i++) {
				
				$tds[i].onmouseenter = function() {

					this.parentNode.style.cursor = "pointer";
				}
				
				$tds[i].onclick = function() {
					/* 게시물 번호까지 알아왔으니 이제 상세보기는 할 수 있습니다. */
							
					const num = this.parentNode.children[1].innerText;
					location.href="${pageContext.servletContext.contextPath}/login/board/QNABoardAnswerList?num=" + num;
					
				}
				
			}
			
		}
		
	</script>

</body>
</html>























