<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<!-- ajax -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- jQuery -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
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
	    <form action="${ pageContext.servletContext.contextPath }/login/admin/teacherAdd" method="post" >
	        <label>이름 </label>
	        <input name="name" type="text" class="input1" required>
	        <label >성별 </label>
		        <select class="input1" name="gender"
					id="gender" required>
		              <option value="">none</option>
		              <option value="M" id="M" >남</option>
                	  <option value="W" id="W">여</option>
		        </select>
	        <label>생년월일 </label>
		    <input type="date" name="birth" class="input1" required>
		    <label>이메일 </label>
		    <input type="text" class="input1" name="email" required><br>
            <label>연락처 </label>
		    <input type="text" class="input1" name="phone" required>
  			<label>주소 </label>
		    <input type="text" class="input1" name="address" required><br> 
	        <label >계약해지 여부 </label>
		    <select class="input1" name="contractYn" id="contractYn" required>
		             <option value="">none</option>
		             <option value="Y">Y</option>
		             <option value="N">N</option>
		    </select> <br>
	          <button id="addpost" class="btns add">등 록 하 기</button>
	          <button class="btns">다 시   작 성 하 기</button>
	      </form>
	  	</div>
	  </div>

	<script>
	const back = document.getElementById("back");
	const addpost = document.getElementById("addpost");
	back.onclick = function() {
		let text = " 이 창을 나가시겠습니까?\n 현재 입력하신 정보는 저장되지 않습니다.\n 나가시려면 '확인'을 누르세요.";
		/* console.log('누름확인'); */
		if (confirm(text) == true) {
			location.href = "${pageContext.servletContext.contextPath}/login/admin/teacherList";
		}
	};

	addpost.onclick = function() {
		let text = "강사를 등록하시겠습니까?\등록하시려면 '확인'을 누르세요.";
		if (confirm(text) == true) {
			document.getElementById("addpost").submit();
		}
	};
	</script>
	  
	</section>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
</body>
</html>