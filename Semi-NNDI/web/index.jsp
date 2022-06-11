<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jQuery 스크립트 인용 문구
	<script src = "js/jquery-3.6.0.min.js"></script>
 -->
 
<title>Insert title here</title>
</head>
<body>
	<script>
		window.onload = function(){
			location.href="${ pageContext.servletContext.contextPath }/MemberMain"
		}
	</script>
</body>
</html>