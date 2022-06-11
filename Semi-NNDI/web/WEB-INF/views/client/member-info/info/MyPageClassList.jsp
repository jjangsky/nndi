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
	<aside>
		<jsp:include page="../../../common/includepage/UserMyPageAside.jsp"/>
	</aside>
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

<jsp:include page="../../../common/includepage/UserFooter.jsp"/>
</body>
</html>