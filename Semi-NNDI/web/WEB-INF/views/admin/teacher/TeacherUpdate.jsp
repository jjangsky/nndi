<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/nndi-style.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/sidebars.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/post.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/teacherEmp.css" >
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
	        <h3 class="top">강사 수정</h3>
	    </div>
	    <div>
	      <button id="back" class="back">목록으로</button>
	    </div>
    
	    <div class="post add">
	        <form action="">
	          <label>강사명 </label>
	          <input type="text" class="emps" required><br>
	          <label>이메일</label>
	          <input type="email" name="email" class="emps" required><br>
	          <label>연락처</label>
	          <select class="en2">
	          <option value="010">010</option>
	          <option value="016">016</option>
	          <option value="011">011</option>
	          <option value="019">019</option>
	          </select>
	          <input type="tel" name="phone2" class="en1"><br> 
	          <label >우편번호</label>
	          <input type="search" name="address" class="emps" required>&nbsp;
	          <input type="button" value="우편번호 찾기" ><br> 
	          <label>상세주소</label>
	          <input type="text" name="address" required>
	          <button id="deletepost" class="btns">삭 제 하 기</button>
	          <button id="updatepost" class="btns add">수 정 하 기</button>
	        </form>
	    </div>
  	</div>
	  <script>
	    $("#back").click(function(){
	      let text = "이 창을 나가시겠습니까?\n 현재 입력하신 정보는 저장되지 않습니다.\n 나가시려면 '확인'을 누르세요.";
	      if (confirm(text) == true) {
	        
	      } else {
	        
	      }
	    });
	    $("#updatepost").click(function(){
	      let text = "강사를 수정하시겠습니까?\n수정하시려면 '확인'을 누르세요.";
	      if (confirm(text) == true) {
	        
	      } else {
	        
	      }
	    });
	    $("#deletepost").click(function(){
	      let text = "강사를 삭제하시겠습니까?\n삭제하시려면 '확인'을 누르세요.";
	      if (confirm(text) == true) {
	        
	      } else {
	        
	      }
	    });
	  </script>
	  
	</section>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>