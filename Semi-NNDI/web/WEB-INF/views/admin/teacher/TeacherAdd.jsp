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
	    <form action="${ pageContext.servletContext.contextPath }/Teacher/input" method="post" >
	        <label>이름 </label>
	        
	        <input type="text" name="name" id="name" required>
	        <label >성별 </label>
	        <select id="gender" name="selectGender"required>
            	<option value="" ></option>
                <option value="male" id="male" >남</option>
                <option value="female" id="female">여</option>
            </select>
	        <br> 
	       <label for="birth" id="input">생년월일:</label>
            <input type="date" name="userBD" id="userBirthDate" size="30" required> <p>
	        <label>이메일</label><input type="text" name="email" id="email" required> 
                <input type="text" name="str_email02" id="str_email02" style="width:100px;" disabled value="naver.com" required>
                <select style="width:100px;margin-right:10px" name="selectEmail" id="selectEmail">
                                                                    <option value="1">직접입력</option>
                                                                    <option value="naver.com" selected>naver.com</option>
                                                                    <option value="hanmail.net">hanmail.net</option>
                                                                    <option value="hotmail.com">hotmail.com</option>
                                                                    <option value="nate.com">nate.com</option>
                                                                    <option value="yahoo.co.kr">yahoo.co.kr</option>
                                                                    <option value="empas.com">empas.com</option>
                                                                    <option value="dreamwiz.com">dreamwiz.com</option>
                                                                    <option value="freechal.com">freechal.com</option>
                                                                    <option value="lycos.co.kr">lycos.co.kr</option>
                                                                    <option value="korea.com">korea.com</option>
                                                                    <option value="gmail.com">gmail.com</option>
                                                                    <option value="hanmir.com">hanmir.com</option>
                                                                    <option value="paran.com">paran.com</option>
                                                                    </select>  
	        <br>
            <label for="phone" id="input">연락처: </label>
            <select name="selectUserPhone" style="width: auto;">
                <option value="010">010</option>
                <option value="016">016</option>
                <option value="011">011</option>
                <option value="019">019</option>
            </select>
            <input type="tel" name="phone2" size="4" id="phone2">
            <input type="tel" name="phone3" size="4" id="phone3"><p>
            
	        <label for="address"> 주소: </label>            
				<input type="text" name="address" id="address" readonly>

				
		  <input type="text" name="name" id="name" required>
	        <label >계약해지 여부 </label>
	        <select id="gender" name="selectGender"required>
            	<option value="" ></option>
                <option value="	Y" id="Y" >Y</option>
                <option value="N" id="N">N</option>
            </select>
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
</body>
</html>