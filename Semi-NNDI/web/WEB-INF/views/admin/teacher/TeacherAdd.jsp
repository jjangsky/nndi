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
	        <h3 class="top">강사 등록</h3>
	    </div>
	    <div>
	      <button id="back" class="back">목록으로</button>
	    </div>
	    
	    <div class="post add">
	      <form action="">
	        <label>이름 </label>
	        <input class="en1" required> &nbsp; &nbsp;  &nbsp; &nbsp; 
	        <label >성별 </label>
	        <select class="emps" name="" id="" required>
	          <option value="">none</option>
	          <option value="male">남자</option>
	          <option value="female">여자</option>
	        </select>
	        <br> 
	        <label>강의명</label>
	        <input class="en1" required>
	        &nbsp; &nbsp; &nbsp;  
	        <label>강좌 분류 </label>
	        <select class="emps" name="" id="" required>
	          <option value="">none</option>
	          <option value="culture">문화</option>
	          <option value="pe">체육</option>
	        </select> <br>
	        <label>이메일</label>
	        <input type="email" name="email" class="emps" required> &nbsp; &nbsp; &nbsp;  
	        <label>생년월일</label>
	        <input class="en1" required><br>
	        <label>연락처</label>
	        <select class="en2" >
	          <option value="010">010</option>
	          <option value="016">016</option>
	          <option value="011">011</option>
	          <option value="019">019</option>
	        </select>
	        <input type="tel" name="phone2" class="en1" required>
	        <br> 
	        <label >우편번호</label>
	        <input type="search" name="address" class="emps" required>&nbsp;
	        <input type="button" value="우편번호 찾기" >
	        <br> 
	        <label>상세주소</label>
	        <input type="text" name="address" required>
	        <label>강의 내용 </label>
	        <textarea name="content" id="content" cols="20" rows="2" style="resize: none;" required></textarea>
	        <label>강의 이력</label>
	        <input type="text" required>
	      </div>  
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