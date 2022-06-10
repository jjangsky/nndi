<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<jsp:include page="../../../common/includepage/UserHeader.jsp"/>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../../../common/includepage/CustomerContactCentersAside.jsp"/>
<section>
<div>
   <h3 class="notice">${ sessionScope.loginMember.name } 님의 수강내역입니다.</h3>
</div>
<div class="post list"> 
    <table class="blueone">
      <thead>
        <tr>
            <th>수강 과목</th>
            <th>개강일</th>
		    </tr>        
    </thead>
    <tbody>
    <c:forEach var="mypagecls" items="${ requestScope.clsandpaymentdto }">
      <tr>
          <td class="test" style="display: none;">${mypagecls.clsNum}</td>
          <td class="test">${mypagecls.clsName}</td>
          <td class="test">${mypagecls.clsStartDay}</td>
      </tr>
       
      </c:forEach>
    </tbody> 
    </table>
    
    
  </div>
</section>

 <!-- <script>
		
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
							
					const num = this.parentNode.children[1].innerText;
					location.href="${pageContext.servletContext.contextPath}/login/board/QNABoardAnswerList?num=" + num;
					
				}
				
			}
			
		}
		
	</script> -->
<jsp:include page="../../../common/includepage/UserFooter.jsp"/>
</body>
</html>