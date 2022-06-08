<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/nndi-style.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/sidebars.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/post.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/summing.css" >
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
		        <h3 class="top">강좌, 대관 통계</h3>
		    </div>
		    <div class="new">
		      <h3 class="to">수강한 회원의 수 통계</h3>
		        <form action="">
		          <label>조회할 기간 입력</label>
		          <input type="date" required>&nbsp;&nbsp;&nbsp;부터&nbsp;&nbsp;&nbsp;
		          <input type="date" required><br>
		          <button class="btns" type="submit">조회하기</button>
		        </form>
		        <h4 class="result"></h4>
		    </div>
		    <div class="total">
		        <h3 class="to">문화, 체육 강좌 개강 통계</h3>
		        <form action="">
		          <label>조회할 기간 입력</label>
		          <input type="date" required>&nbsp;&nbsp;&nbsp;부터&nbsp;&nbsp;&nbsp;
		          <input type="date" required><br>
		          <button class="btns" type="submit">조회하기</button>
		        </form>
		        <h4 class="result"></h4>
		    </div>
		    <div class="total">
		        <h3 class="to">대관 신청 게시글 통계</h3>
		        <form action="">
		            <div class="supost">
		                <table>
		                    <thead>
		                        <tr>
		                            <th>전체 게시글 수</th>
		                            <th>결제 완료한 신청 수</th>
		                            <th>승인한 신청 수</th>
		                            <th>반려한 신청 수</th>
		                        </tr>
		                    </thead>
		                    <tbody>
		                        <tr>
		                            <td>100</td>
		                            <td>30</td>
		                            <td>35</td>
		                            <td>65</td>
		                        </tr>
		                    </tbody>
		                </table>
		            </div>
		        </form>
		        <h4 class="result"></h4>
		    </div>
  		</div>
      
	</section>

		
			  
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
