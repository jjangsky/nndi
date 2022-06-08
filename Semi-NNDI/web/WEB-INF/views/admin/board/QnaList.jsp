<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Admin QnA List</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
    
		<div>
			<div class="post title">
        		<h3 class="top">QNA</h3>
   	 		</div>
		    <div class="search">
		      <form action="">
		        <button class="search btn" type="submit">검색</button> 
		        <input class="search in" type="text" placeholder="검색어 입력" required>
		        <select class="search select" required>
		          <option value="">None</option>
		          <option value="title">제목</option>
		          <option value="category">문의유형</option>
		          <option value="writer">작성자</option>
		          <option value="all">전체</option>
		        </select>
		      </form>
		    </div>
		    <div class="post list"> 
		        <table class="t1">
		            <thead>
		              <tr>
		                <th>번호</th>
		                <th>문의유형</th>
		                <th>제목</th>
		                <th>작성자</th>
		                <th>답변여부</th>
		              </tr>
		            </thead>
		            <tbody>
		              <tr>
		                <td>1</td>
		                <td>시설</td>
		                <td>시설 뭐가 있나요?</td>
		                <td>user01</td>
		                <td>N</td>
		              </tr>
		              <tr>
		                <td>2</td>
		                <td>강좌</td>
		                <td>필라테스 강좌 언제 개강하나요?</td>
		                <td>user05</td>
		                <td>N</td>
		              </tr>
		              <tr>
		                <td>3</td>
		                <td>시설</td>
		                <td>배드민턴장은 어디에 있나요?</td>
		                <td>user03</td>
		                <td>N</td>
		              </tr>
		              <tr>
		                <td>4</td>
		                <td>기타</td>
		                <td>취업특강은 언제 하나요?</td>
		                <td>user04</td>
		                <td>N</td>
		              </tr>
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
