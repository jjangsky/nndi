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
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/youchanEdit.css" >
    <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style>
      .btn{
        font-size: 20px !important;
        color: aliceblue !important;
      }
    </style>
<title>Admin Rent List</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
	  <div>
	  <div class="post title">
    	<h3 class="top">대관 신청 관리</h3>
	  </div>
		<form action="">
		  <button class="search btn" type="submit">검색</button> 
		  <input class="search in" type="text" placeholder="검색어 입력" required>
		  <select class="search select" required>
		    <option value="">None</option>
		    <option value="name">이름</option>
		    <option value="place">대관시설</option>
		    <option value="phone">연락처</option>
		  </select>
		</form>
		  <div class="post list">
		    <table class="t1">
		        <thead>
		            <tr>
		                <th>접수번호</th>
		                <th>접수자</th>
		                <th>연락처</th>
		                <th>대여 시작일</th>
		                <th>대여 종료일</th>
		                <th>대관시설</th>
		                <th>승인여부</th>
		                <th>승인관리</th>
		            </tr>
		        </thead>
		        <tbody>
		            <c:forEach var="rent" items="${ requestScope.rentList }">
	              <tr>
	                <td>${ rent.num }</td>
	                <td>${ rent.memId }</td>
	                <td>${ rent.member.phone }</td>
	                <td>${ rent.rentStart }</td>
	                <td>${ rent.rentEnd }</td>
	                <td>${ rent.centerName }</td>
	                <td>${ rent.rentReqYn }</td>
	                <td>
	                <button type="button"
	                			class="btn btn-secondary" 
	                			onclick="location.href=
		                			'${ pageContext.servletContext.contextPath }/login/admin/detailRent.do?num=${ rent.num }'">조회</button></td>
	              </tr>
	              </c:forEach>
		        </tbody>
    		</table>
    	<hr/>
	    <div class="pagination">
	      <a href="#">&laquo;</a>
	      <a href="#">1</a>
	      <a class="active" href="#">2</a>
	      <a href="#">3</a>
	      <a href="#">4</a>
	      <a href="#">5</a>
	      <a href="#">6</a>
	      <a href="#">&raquo;</a>
	  	</div>
	</div>
	</section>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
</body>
</html>