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
		        <img src="${pageContext.servletContext.contextPath}/resources/image/client/008.png" style="width: 20px;
	height: 20px;"> 오시는 길
		       </button>
		       
		       <button>
		       	<img src="${pageContext.servletContext.contextPath}/resources/image/client/Search.png" style="width: 20px;
	height: 20px;">강좌 둘러보기
		       </button>
		       
		       <br>
		       <button>
		       <img src="${pageContext.servletContext.contextPath}/resources/image/client/006.png" 
		       style="	width: 20px; height: 20px;">QNA문의
		       </button>
		       
		       <button>
		       <img src="${pageContext.servletContext.contextPath}/resources/image/client/RequestCenter.png" 
		       style="width: 20px; height: 20px;">대관 신청
		       </button>
		       
		       <br>
		       <br>
		       
		       <button onclick="location.href='${pageContext.servletContext.contextPath}/Account/first'">
		       <img src="${pageContext.servletContext.contextPath}/resources/image/client/Accounting.png" style="width: 20px;
	height: 20px;">
		       회원 가입하기
		       </button>
		       
		       <button onclick="window.open('https://blog.naver.com/romantic_muk2')">
		       <img src="${pageContext.servletContext.contextPath}/resources/image/client/005.png" style="	width: 20px;
	height: 20px;"> 묵 2동 블로그</button>
			
			</div>
</section>

	<jsp:include page="../common/includepage/UserFooter.jsp"/>
</body>
</html>