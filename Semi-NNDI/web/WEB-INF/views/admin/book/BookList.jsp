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
<title>Admin Teacher List</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	  <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
    
		<div>
		    <div class="post title">
    			<h3 class="top">도서 목록 조회</h3>
			</div>
			<div>
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
			</div>
		    <div class="post list">
			    <table class="t1">
			        <thead>
			            <tr>
			                <th>번호</th>
			                <th>제목</th>
			                <th>작가</th>
			                <th>청구기호</th>
			                <th>ISBN</th>
			                <th>출판사</th>
			                <th>조회 설정</th>
			            </tr>
			        </thead>
			        <tbody>
			            <tr>
			                <td>3</td>
			                <td>미드나잇 라이브러리</td>
			                <td>매트 헤이그</td>
			                <td>813.7</td>
			                <td>9791191056556</td>
			                <td>민음사</td>
			                <td><button onclick="deleteEdit()" class="btn btn-secondary">설정</button></td>
			
			            </tr>
			            <tr>
			                <td>2</td>
			                <td>아몬드</td>
			                <td>손원평</td>
			                <td>813.7</td>
			                <td>9791588453384</td>
			                <td>길벗</td>
			                <td><button onclick="deleteEdit()" class="btn btn-secondary">설정</button></td>
			            </tr>
			            <tr>
			                <td>1</td>
			                <td>코딩의 정석</td>
			                <td>김용승</td>
			                <td>020.135</td>
			                <td>9791818564848</td>
			                <td>하이미디어</td>
			                <td><button onclick="deleteEdit()" class="btn btn-secondary">설정</button></td>   
			            </tr>
			        </tbody>
			    </table>
			 </div>
		    <script>
		      function deleteEdit() {
		        var txt;
		        if (confirm("해당 도서를 폐기처리 하시겠습니까?")) {
		          alert("도서가 폐기처리 되었습니다.");
		        } else {
		          
		        }
		        
		      }
		    </script>
      		<br>
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
