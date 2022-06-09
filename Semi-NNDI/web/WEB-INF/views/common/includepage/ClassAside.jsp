<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/AsideButton.css" >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
   	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <title>너나들이중랑</title>
</head>
<body>

<aside>
	<nav>
	
		<div style="width: auto;">
			<a href="#" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
 			<svg class="bi pe-none me-2" width="30" height="24"></svg>
  			<span class="fs-5 fw-semibold" style="color:rgb(255, 255, 255)">강좌 안내</span></a>
		</div>
		
		<button class="btn btn-c btn-toggle d-inline-flex align-items-center rounded border-1 collapsed" data-bs-toggle="collapse" data-bs-target="#orders1-collapse" aria-expanded="false" 
		onclick="location.href='${pageContext.servletContext.contextPath}/login/board/QNAClassList'">전체 강좌 조회</button>
		
		<br>

		<button class="btn btn-c btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false"
		 onclick="location.href='${pageContext.servletContext.contextPath}/login/board/CultureLand'">문화</button>

		<br>
		
		<button class="btn btn-c btn-toggle d-inline-flex align-items-center rounded border-1 collapsed" data-bs-toggle="collapse" data-bs-target="#orders1-collapse" aria-expanded="false" 
		onclick="location.href='${pageContext.servletContext.contextPath}/login/board/ClassphList'">체육</button>
		
	</nav>
</aside>

</body>
</html>