<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/MainPage.css">
<title>NNDI</title>
</head>
<body>
	<jsp:include page="../common/includepage/UserHeader.jsp"/>

<section>	

		<img src="${pageContext.servletContext.contextPath}/resources/image/client/NNDIMainImg2.jpg"
		style="width: 100%; height: 100%; float: right">        
        
        	<div id="img" style="position: absolute; top: 45%; left:90%">
        
		       <button onclick="location.href='${pageContext.servletContext.contextPath}/site/location'">
		        <img id="menubutton" src="${pageContext.servletContext.contextPath}/resources/image/client/008.png"> 
		        오시는 길
		       </button>
		       
		       <button onclick="location.href='${pageContext.servletContext.contextPath}/login/board/paging'">
		       	<img id="menubutton" src="${pageContext.servletContext.contextPath}/resources/image/client/Search.png">
		       	강좌 둘러보기
		       </button>
		       
		       <br>
		       <button onclick="location.href='${pageContext.servletContext.contextPath}/login/board/QNABoardList'">
		       <img id="menubutton" src="${pageContext.servletContext.contextPath}/resources/image/client/006.png">
		       QNA문의
		       </button>
		       
		       <button onclick="location.href='${pageContext.servletContext.contextPath}/center/list/select'">
		       <img id="menubutton" src="${pageContext.servletContext.contextPath}/resources/image/client/RequestCenter.png">
		       대관 신청
		       </button>
		       
		       <br>
		       <br>
		       
		       <button onclick="location.href='${pageContext.servletContext.contextPath}/Account/first'">
		       <img id="menubutton" src="${pageContext.servletContext.contextPath}/resources/image/client/Accounting.png">
		       회원 가입하기
		       </button>
		       
		       <button onclick="window.open('https://blog.naver.com/romantic_muk2')">
		       <img id="menubutton" src="${pageContext.servletContext.contextPath}/resources/image/client/005.png">
		        묵 2동 블로그
		        </button>
			
			</div>
</section>

	<jsp:include page="../common/includepage/UserFooter.jsp"/>
</body>
</html>