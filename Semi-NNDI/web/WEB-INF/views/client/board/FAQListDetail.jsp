<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<jsp:include page="../../common/includepage/UserHeader.jsp"/>
<title>Insert title here</title>
</head>
<jsp:include page="../../common/includepage/CustomerContactCentersAside.jsp"/>
<body>

	<section style="float: left; width: 1500px;">
    	<div class="l1">
    		<div class="d1">
      			<h3>${requestScope.faqdto.title}</h3>
     			<p><b>작성자: </b>${requestScope.faqdto.managerId}</p>
    		</div>
  		</div>  

  		<div class="l1">
    		<div class="d1">
      			<p>${requestScope.faqdto.content}</p>
    		</div>
  		</div>
  
    	<div><br><br><br><br><br><br>
    		<button class="r1" onclick="location.href='${pageContext.servletContext.contextPath}/login/board/FAQList'">목록으로</button>
  		</div>
	</section>


</body>
<br clear="both">
<jsp:include page="../../common/includepage/UserFooter.jsp"/>
</html>