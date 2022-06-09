<%@ page language="java" contentType="text/html; charset=UTF-8
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/AsideButton.css" >
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<title>너나들이중랑</title>
</head>

<body>

<aside>
	<nav>
		<div>
	    	<a href="#" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
	      	<svg class="bi pe-none me-2" width="30" height="24"></svg>
	      	<span class="fs-5 fw-semibold" style="color:rgb(255, 255, 255)">마이페이지</span>
	    	</a>
	    </div>
	    
	    <button class="btn btn-c btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">개인 정보</button>
	    <div class="collapse " id="home-collapse">
	    	<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	    		<br>
		    	<li> <button onclick="location.href='${pageContext.servletContext.contextPath}/login/Member/Info'">개인정보조회</button></li>
		    	<br>
	        	<li> <button onclick="location.href='${pageContext.servletContext.contextPath}/login/MemberInfo/Update'">개인정보수정</button></li>
	        	<br>
	        	<li> <button onclick="location.href='${pageContext.servletContext.contextPath}/'">회원탈퇴신청</button></li>
	        	<br>
	      	</ul>
	    </div>
	    
	    <br>
	    
	    <button class="btn btn-c btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#orders1-collapse" aria-expanded="false">대관 관리</button>
	    <div class="collapse" id="orders1-collapse">
	      	<ul class="btn-toggle-nav list-unstyled fw-normal pb-2 small">
   			   	<br>
	        	<li> <button onclick="location.href='${pageContext.servletContext.contextPath}/'">대관 신청 현황</button></li>
	        	<br>
	        	<li> <button onclick="location.href='${pageContext.servletContext.contextPath}/'">대관 신청 취소</button></li>
	        	<br>
	        	<li> <button onclick="location.href='${pageContext.servletContext.contextPath}/'">대관 환불 신청</button></li>
	        	<br>
	      	</ul>
	    </div>
	    
	    <br>
	    
	    <button class="btn btn-c btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#orders2-collapse" aria-expanded="false">강좌 관리</button>
	    <div class="collapse" id="orders2-collapse">
	    	<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	        	<li> <button onclick="location.href='${pageContext.servletContext.contextPath}/'">수강 이력 현황</button></li>
	        	<li> <button onclick="location.href='${pageContext.servletContext.contextPath}/'">수강 환불 신청</button></li>
	      	</ul>
	    </div>
	    
	    <br>
	    
	    <button class="btn btn-c btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#orders3-collapse" aria-expanded="false">도서대출조회</button>
	    <div class="collapse" id="orders3-collapse">
	    	<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	    	<br>
	        	<li> <button onclick="location.href='${pageContext.servletContext.contextPath}/'">도서 대출 목록 조회</button></li>
	        </ul>
	    </div>
	    
	    <br>
	    
	    <button class="btn btn-c btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#orders4-collapse" aria-expanded="false">게시판</button>
	    <div class="collapse" id="orders4-collapse">
	        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	        <br>
	          	<li> <button onclick="location.href='${pageContext.servletContext.contextPath}/'">문의 조회</button></li>
	          	<br>
	          	<li> <button onclick="location.href='${pageContext.servletContext.contextPath}/'">칭찬 조회</button></li>
	          	<br>
	          	<li> <button onclick="location.href='${pageContext.servletContext.contextPath}/'">민원 조회</button></li>
	          	<br>
	        </ul>
	    </div>
	</nav>
</aside>

</body>
</html>