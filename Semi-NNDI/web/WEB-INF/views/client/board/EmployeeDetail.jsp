<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>너나들이 중랑</title>
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/nndi-style.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/Policy.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/selectList.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/sidebars.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/UserFind.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/UserFindAside.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
	<jsp:include page="../../common/includepage/UserHeader.jsp"/>
</head>
<body>
	<jsp:include page="../../common/includepage/CustomerContactCentersAside.jsp"/>
	
		<section>
	  <div>
	    <h3 class="notice"><b><u>강사 모집</u></b></h3>
	  </div>
	
	  <div class="l1">
	    <div class="d1">
	      <h3>${ requestScope.emp.title }</h3>
	    </div>
	  </div>
	<c:if test="${rent.rentCost == '0'}">
					<td>미결제</td>
				</c:if>
	  <div class="l1">
	    <div class="d1">
		    <c:if test="${emp.empYn == 'Y'}">
		    	<p>모집 여부 : 모집중</p><br>
		    </c:if>
		    <c:if test="${emp.empYn == 'N'}">
		    	<p>모집 여부 : 모집 마감</p><br>
		    </c:if>
	      <p>모집 인원 : ${ requestScope.emp.empNumber }명</p><br>
	      <br>
	      <hr>
	      <br>
	      <b>자격 요건</b><br>
	      <p>${ requestScope.emp.empCondition }</p><br>
	      <b>근무 환경</b><br>
	      <p>${ requestScope.emp.environment }</p><br>
	      <b>모집 과정</b><br>
	      <p>${ requestScope.emp.empProcess }</p><br>
	      
	      
	    </div>
	  </div>
	
	  <div>
	    <button class="r1" onclick="location.href='${pageContext.servletContext.contextPath}/employee/board/list'">목록으로</button>
	  </div>
	
	  </section>
	
	
</body>

<br clear="both">

	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
	
</html>