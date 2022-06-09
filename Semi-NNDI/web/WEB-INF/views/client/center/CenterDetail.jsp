<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>너나들이 중랑</title>

<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/nndi-style.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/centerRent.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/centerList.css">


	<jsp:include page="../../common/includepage/UserHeader.jsp"/>
</head>

<body>

	<aside>
	<jsp:include page="../../common/includepage/CenterAside.jsp"/>
	</aside>
	
  <section>
	  <form action="">
	  <table class="blueone">
	      <tr>
	          <th>시설명</th>
	          <td>${requestScope.centerDetail.centerKindName }</td>
	      </tr>
	      <tr>
	        <th>>접수대상</th>
	        <td>제한없음:정기접수</td>
	    </tr>
	    <tr>
	        <th>>이용 시작일</th>
	        <td><input type="date" id="startDate"></td>
	    </tr>
	    <tr>
	        <th>>이용 종료일</th>
	        <td><input type="date" id="endDate"></td>
	    </tr>
	    <tr>
	        <th>>접수방법</th>
	        <td>대기제(관리자승인)</td>
	    </tr>
	    <tr>
	        <th>>1일 대관료</th>
	        <td>문의 요망</td>
	    </tr>
	  
	    <tr>  	
	    <button type="reset">취소</button>
	    <button type="submit">등록</button>
	    </tr>
	  
	  </form>

</section>

</body>

	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
</html>