<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/nndi-style.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/sidebars.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/post.css" >
    <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style>
      .btn{
        font-size: 20px !important;
        color: aliceblue !important;
      }
    </style>
<title>Admin Classes List</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
    <div>
	    <div class="post title">
	        <h3 class="top">강좌 조회</h3>
	    </div>
	    <div class="search">
	      <form action="">
	        <button class="search btn" type="submit">검색</button> 
	        <input class="search in" type="text" placeholder="검색어 입력" required>
	        <select class="search select" required>
	          <option value="">None</option>
	          <option value="classname">강좌명</option>
	          <option value="classteachername">강사명</option>
	          <option value="all">전체</option>
	        </select>
	      </form>
	    </div>
	    <div class="post list"> 
	        <table class="t1">
	            <thead>
	              <tr>
	                <th>번호</th>
	                <th>강좌명</th>
	                <th>강사명</th>
	                <th>신청인원</th>
	                <th>최대수강인원</th>
	                <th>개강일</th>
	                <th>종강일</th>
	                <th>개강여부</th>
	                <th>상세보기</th>
	              </tr>
	            </thead>
	            <tbody>
	            <c:forEach var="cls" items="${ requestScope.classList }">
	              <tr>
	                <td>${ cls.clsNum }</td>
	                <td>${ cls.clsName }</td>
	                <td>${ cls.teacher.name }</td>
	                <td>${ cls.clsApplyCnt }</td>
	                <td>${ cls.clsMaxCnt }</td>
	                <td>${ cls.clsStartDay }</td>
	                <td>${ cls.clsEndDay }</td>
	                <td>${ cls.clsStartYn }</td>
	                <td>
	                <input type="hidden" id="num" name="num" value="${ cls.clsNum }" />
	                <button type="submit"
	                			class="btn btn-secondary" 
	                			onclick="location.href=
		                			'${ pageContext.servletContext.contextPath }/login/admin/detailClass'">조회</button></td>
	              </tr>
	              </c:forEach>
	            </tbody>
	        </table>
	    </div>
	    <div class="pagination">
	        <a href="#">&laquo;</a>
	        <a href="#">1</a>
	        <a class="active" href="#">2</a>
	        <a href="#">3</a>
	        <a href="#">4</a>
	        <a href="#">5</a>
	        <a href="#">&raquo;</a>
	    </div>
	  </div>
	  
	</section>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>