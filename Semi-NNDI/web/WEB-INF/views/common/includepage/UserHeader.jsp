<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/sidebars.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/Header.css" >
    <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
    <script src = "js/jquery-3.6.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <title>너나들이중랑</title>
</head>

<body>
	
    <img src="${pageContext.servletContext.contextPath}/resources/image/client/main_header.PNG" class="nndi-logo" onclick="location.href='${pageContext.servletContext.contextPath}/index.jsp'">
    <div class="topnav0"> 
        <br>
        <br>
        <c:choose>
        	<c:when test="${ sessionScope.loginStatus ne 1 }">
        	
        	</c:when>
        	<c:when test="${ sessionScope.loginStatus eq 1 }">
        		<button onclick="location.href='${pageContext.servletContext.contextPath}/login/MyPage'">마이페이지</button>
        	</c:when>
        </c:choose>
        
        
        <c:choose>
        	<c:when test="${ sessionScope.loginStatus ne 1 }">
        		<button type="submit" formmethod="post" onclick="location.href='${pageContext.servletContext.contextPath}/MemberLogin'">로그인</button>
        	</c:when>
        	<c:when test="${ sessionScope.loginStatus eq 1 }">
        		<button type="submit" formmethod="post" onclick="location.href='${pageContext.servletContext.contextPath}/login/MemberLoguut'">로그아웃</button>
        	</c:when>
        </c:choose>
        
        <button onclick="location.href='${pageContext.servletContext.contextPath}/site/SiteMap'">사이트맵</button>
      </div>

<div class="topnav1" >
<%--   <button onclick="location.href='${pageContext.servletContext.contextPath}/login/board/paging'">강좌 안내</button> --%>
  <button onclick="location.href='${pageContext.servletContext.contextPath}/login/board/QNAClassList'">강좌 안내</button>
  <button onclick="location.href='${pageContext.servletContext.contextPath}/site/CenterInfo'">시설 이용</button>
  <button onclick="location.href='${pageContext.servletContext.contextPath}/site/CCC'">고객 지원 센터</button>
  <button onclick="location.href='${pageContext.servletContext.contextPath}/site/agreement'">이용약관</button>
  <button onclick="location.href='${pageContext.servletContext.contextPath}/site/NNDIIntroduce'">너나들이 소개</button>
</div>

<div class="topnav2">
  <img src="${pageContext.servletContext.contextPath}/resources/image/client/fv_1.png" style="margin-right: 15%;">
  <img src="${pageContext.servletContext.contextPath}/resources/image/client/fv-2.png">
</div>

</body>
</html>