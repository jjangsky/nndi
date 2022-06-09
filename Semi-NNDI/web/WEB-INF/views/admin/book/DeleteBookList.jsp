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
<title>Admin Delete Book List</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
    
		<div class="post title">
   	 		<h3 class="top">폐기 도서 목록 조회</h3>
		</div>
		<form action="">
		  <button class="search btn" type="submit">검색</button> 
		  <input class="search in" type="text" placeholder="검색어 입력" required>
		  <select class="search select" required>
		    <option value="">None</option>
		    <option value="title">제목</option>
		    <option value="author">작가</option>
		    <option value="address">청구기호</option>
		    <option value="isbn">ISBN</option>
		    <option value="publish">출판사</option>
		  </select>
		</form>
		  <div class="post list">
		    <table class="t1">
		        <thead>
		            <tr>
		                <th>번호</th>
		                <th>제목</th>
		                <th>작가</th>
		                <th>ISBN</th>
		                <th>출판사</th>
		                <th>일반도서 복귀</th>
		            </tr>
		        </thead>
		        <tbody>
		            <c:forEach var="restbook" items="${ requestScope.deleteBookList }">
		              		<tr>
		               		 <td>${ restbook.code }</td>
		               		 <td>${ restbook.name }</td>
		               		 <td>${ restbook.writer }</td>
		               		 <td>${ restbook.isbn }</td>
		                	 <td>${ restbook.publisher }</td>
		                	 <td>
		                	 	<button class="btn btn-secondary"
		                				onclick="location.href=
		                				'${ pageContext.servletContext.contextPath }/login/admin/deleteBookReturn.do?code=${ restbook.code }'" >복귀</button>
		                	 </td>
		              </tr>
		              </c:forEach>
		        </tbody>
		    </table>
		    <script>
		      function returnList() {
		        var txt;
		        if (confirm("해당 도서는 폐기처리 된 도서입니다.\n폐기 처리를 취소하시겠습니까?")) {
		          alert("폐기처리가 취소되었습니다.");
		        } else {
		          
		        }
		        
		      }
		      </script>
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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
