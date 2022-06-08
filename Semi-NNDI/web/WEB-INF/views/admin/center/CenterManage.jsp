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
<title>Admin Main</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	   
	  	  <div class="post title">
    	  	<h3 class="top">시설 관리</h3>
  		  </div>
		  <form action="">
		    <button class="search btn" type="submit">검색</button> 
		    <input class="search in" type="text" placeholder="검색어 입력" required>
		    <select class="search select" required>
		      <option value="">None</option>
		      <option value="name">카테고리</option>
		      <option value="birth">이름</option>
		      <option value="phone">위치</option>
		    </select>
		  </form>
		  <div class="post list">
		    <table>
		        <thead class="table-lgiht">
		            <tr">
		                <th>번호</th>
		                <th>이름</th>
		                <th>위치번호</th>
		                <th>수용가능 인원</th>
		                <th>사용가능 여부</th>
		                <th></th>
		            </tr>
		        </thead>
		        <tbody>
		            <tr>
		                <td>1</td>
		                <td>수영장</td>
		                <td>201</td>
		                <td>40</td>
		                <td>Y</td>
		                <td><button type="button" class="btn btn-secondary" onclick="updateEdit()">설정</button></td> <!-- js alert창 사용-->
		    
		            </tr>
		            <tr>
		              <td>2</td>
		              <td>탁구장</td>
		              <td>301</td>
		              <td>20</td>
		              <td>Y</td>
		              <td><button type="button" class="btn btn-secondary" onclick="updateEdit()" >설정</button></td>
		          </tr>
		            <tr>
		                <td>3</td>
		                <td>강의실</td>
		                <td>304</td>
		                <td>30</td>
		                <td>Y</td>
		                <td><button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#checkplace">설정</button></td> 
		                <!-- bs5 모달창 사용 해당 소스코드는 밑에 적어놨습니다.-->
		
		            </tr>
		        </tbody>
		    </table>
		    <script>
		      function updateEdit() {
		        var txt;
		        if (confirm("해당 시설 사용 여부를 선택해 주세요")) {
		          alert("해당 시설 사용 여부를 Y 로 변경 하였습니다.");
		        } else {
		          alert("해당 시설 사용 여부를 N 로 변경 하였습니다.");
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