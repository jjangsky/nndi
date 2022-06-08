<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		                <th>이름</th>
		                <th>연락처</th>
		                <th>대여기간</th>
		                <th>대관시설</th>
		                <th>승인여부</th>
		                <th>승인관리</th>
		            </tr>
		        </thead>
		        <tbody>
		            <tr>
		                <td>3</td>
		                <td>김용승</td>
		                <td>010-4545-7558</td>
		                <td>22년5월7일 16:00 - 18:00</td>
		                <td>탁구장</td>
		                <td>예</td>
		                <td><button type="button" class="btn btn-secondary" onclick="location.href='selectRent.html'" >관리</button></td>
		            </tr>
		            <tr>
		                <td>2</td>
		                <td>김승용</td>
		                <td>010-7777-5578</td>
		                <td>22년5월19일 12:00 - 17:00</td>
		                <td>수영장</td>
		                <td>예</td>
		                <td><button type="button" class="btn btn-secondary">관리</button></td>
		            </tr>
		            <tr>
		                <td>1</td>
		                <td>용승용</td>
		                <td>010-4545-8828</td>
		                <td>22년5월14일 20:00 - 22:00</td>
		                <td>소강의실 201호</td>
		                <td>아니오</td>
		                <td><button type="button" class="btn btn-secondary">관리</button></td>   
		            </tr>
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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>