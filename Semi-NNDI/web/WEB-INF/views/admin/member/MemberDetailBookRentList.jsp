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
<title>Admin MemberBookRentList</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
	   <div class="post title">
    <h3 class="top">도서 대여 조회</h3>
</div>
<br>
<form action="">
  <button class="search btn" type="submit">검색</button> 
  <input class="search in" type="text" placeholder="검색어 입력" required>
  <select class="search select" required>
    <option value="">None</option>
    <option value="title">제목</option>
    <option value="author">작가</option>
    <option value="late">연체유무</option>
  </select>
</form>

<div class="post list">
    <table class="tb01">
        <thead class="table-lgiht">
            <tr>
                <th>대출 번호</th>
                <th>제목</th>
                <th>작가</th>
                <th>대출 일자</th>
                <th>반납 일자</th>
                <th>연체 유무</th>
            </tr>
        </thead>
        <tbody>
           <c:forEach var="bookrent" items="${ requestScope.memberBookRentList }">
		    <tr>
		      <td>${ bookrent.rentNum }</td>
		      <td>${ bookrent.name }</td>
		      <td>${ bookrent.writer }</td>
		      <td>${ bookrent.rentDate }</td>
		      <td>${ bookrent.returnDate }</td>
		      <td>${ bookrent.rentYn }</td>
		    </tr>
		   </c:forEach> 
        </tbody>
    </table>
</div>
    <br><br><br>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
</body>
</html>