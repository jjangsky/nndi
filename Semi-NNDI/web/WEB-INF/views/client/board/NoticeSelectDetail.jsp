<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	    <h3 class="notice"><b><u>공지</u>사항</b></h3>
	  </div>
	
	  <div class="l1">
	    <div class="d1">
	      <h3>${ requestScope.noticeDetail.title }</h3>
	      <p><b>작성일</b>: ${ requestScope.noticeDetail.postDate }<br><b>조회수</b>: ${ requestScope.noticeDetail.hits }</p>
	    </div>
	  </div>
	
	  <div class="l1">
	    <div class="d1">
	      <p>${ requestScope.noticeDetail.content }</p>
	    </div>
	  </div>
	
	  <div>
	    <button class="r1" onclick="location.href='${pageContext.servletContext.contextPath}/board/list/notice'">목록으로</button>
	  </div>
	
	  </section>
	
	
</body>

<br clear="both">

	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
	
</html>
