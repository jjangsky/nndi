<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css" >

	<style>
      .btn{
        font-size: 20px !important;
        color: aliceblue !important;
      }
    </style>
    
<title>너나들이 중랑</title>
</head>
<body>
<jsp:include page="../../common/includepage/UserHeader.jsp"/>
	
	<section>
	 
	<jsp:include page="../../common/includepage/CenterAside.jsp"/>
    
		<div class="post title" style="background-color: rgba(254, 190, 190, 0.5);">
    		<h3 class="top" style="text-align: center">도서 목록 조회</h3>
		</div>

			<div class="post list">
				<table class="t1">
			    	<thead>
			            <tr>
			                <th>번호</th>
			                <th>제목</th>
			                <th>작가</th>
			                <th>도서위치</th>
			                <th>ISBN</th>
			                <th>출판사</th>
			            </tr>
			        </thead>
			        
			        <tbody>
			        	<c:forEach var="book" items="${ requestScope.bookList }">
		                	<tr>
		               			<td>${ book.code }</td>
		               		 	<td>${ book.name }</td>
		               		 	<td>${ book.writer }</td>
		               		 	<td>${ book.locationCode }</td>
		               		 	<td>${ book.isbn }</td>
		                	 	<td>${ book.publisher }</td>
		              		</tr>
		              	</c:forEach>
			        </tbody>
			    </table>
			 </div>
			  
	</section>
		
	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
</body>
</html>