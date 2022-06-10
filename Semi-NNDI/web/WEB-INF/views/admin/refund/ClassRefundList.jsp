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
<title>Admin Teacher List</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
	 	 <div>
			<div class="post title">
    			<h3 class="top">수강 환불내역 조회</h3>
			</div>
			<div class="search">
		      <form action="">
		        <button class="search btn" type="submit">검색</button> 
		        <input class="search in" type="text" placeholder="검색어 입력" required>
		        <select class="search select" required>
			   		<option value="">None</option>
			    	<option value="name">이름</option>
			    	<option value="id">아이디</option>
			    	<option value="class">강좌</option>
			    	<option value="teacher">강사</option>
		        </select>
		      </form>
		    </div>
		
			<div class="post list"> 
		        <table class="t1">
		            <thead>
		              <tr>
		                <th>강좌 번호</th>
		                <th>이름</th>
		                <th>회원 ID</th>
		                <th>강좌명</th>
		                <th>강사명</th>
		                <th>결제금액</th>
		                <th>환불여부</th>
		                <th>결제일</th>
		              </tr>
		            </thead>
		            <tbody>
		              <c:forEach var="refund" items="${ requestScope.classrefundList }">
		              	<tr>
			                <td>${ refund.clsNum }</td>
			                <td>${ refund.name }</td>
			                <td>${ refund.id }</td>
			                <td>${ refund.clsName }</td>
			                <td>${ refund.tcrName }</td>
			                <td>${ refund.clsPrice }</td>
			                <td>${ refund.refundYn }</td>
			                <td>${ refund.clsPayDay }</td>
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
		      <a href="#">6</a>
		      <a href="#">&raquo;</a>
		  	</div>
		</div>
		
			  
	</section>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
