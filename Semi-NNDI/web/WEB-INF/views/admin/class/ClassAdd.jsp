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
		        <h3 class="top">강좌 개설</h3>
		    </div>
		    <div>
		      <button id="back" class="back">목록으로</button>
		    </div>
    
		    <div class="post add">
		        <form action="">
		          <label>강좌명 </label>
		          <input type="text" required>
		          <label>강좌 분류 </label>
		            <select class="emps" name="" id="" required>
		              <option value="">none</option>
		              <option value="culture">문화</option>
		              <option value="pe">체육</option>
		            </select> &nbsp;&nbsp;&nbsp;&nbsp;
		          <label>강사명 </label>
		          <input class="en1" required>
		          <label>최대수강인원 </label>
		          <input class="en1" required>
		          <label>강의실 </label> 
		            <select name="select1" required class="en1">
		              <option value="201">201</option>
		              <option value="202">202</option>
		              <option value="203">203</option>
		              <option value="301">301</option>
		              <option value="302">302</option>
		              <option value="" selected>--</option>
		            </select><p>
		          <label>강의 추천연령</label>
		              <select class="emps" required>
		                <option value="" selected>None</option>
		                <option value="child">유아</option>
		                <option value="teenage">청소년</option>
		                <option value="adult">성인</option>
		                <option value="senior">시니어</option>
		              </select> 
		          <label>카테고리명 </label>
		          <input class="en1" required><br>
		          <label>강좌수강료 </label>
		          <input class="en1" required>
		          <label>강좌요일 </label>
		              <select name="selectDay" required  class="en1">
		                <option value="day1">평일반</option>
		                <option value="day2">주말반</option>
		                <option value="day3">평일/주말</option>
		                <option value="" selected>--</option>
		               </select><br>
		          
		          <label >강좌 설명</label>
		          <textarea name="content" id="content" cols="30" rows="3" style="resize: none;" required></textarea><br>
		          <label >강의 기간 </label>
		          <input type="date" name="date" class="emps" required> ~ <input type="date" name="date" class="emps" required><p>
		          <label>강의 시간</label>
		          <input type="time" name="time" class="emps" required> ~ </label><input type="time" name="time" class="emps" required><p>
		
		          <button id="addpost" class="btns add">등 록 하 기</button>
		          <button class="btns">다 시   작 성 하 기</button>
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
		</script>
			  
	</section>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
