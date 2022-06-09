<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/nndi-style.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/sidebars.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/post.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/teacherEmp.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/selectTeacher.css" >
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
		      <button id="selectTeacher" class="button">강사 보기</button>
		      <table>
		        <tr>
		          <thead>
		            <tr>
		              <th>번호</th>
		              <th>이름</th>
		              <th>연락처</th>
		              <th>이메일</th>
		              <th>생년월일</th>
		              <th>주소</th>
		              <th>활동여부</th>
		            </tr>
		          </thead>
		          <tbody>
		            <tr>
		              <td>1</td>
		              <td>김효지</td>
		              <td>010-1111-2345</td>
		              <td>khj@nndi.com</td>
		              <td>90.01.01</td>
		              <td>서울시 광진구 xxx</td>
		              <td>Y</td>
		            </tr>
		          </tbody>
		        </table>
		    </div>

		    <div class="post add">
		        <form action="${ pageContext.servletContext.contextPath }/login/admin/classAdd" method="post">
		          <label>강좌명 </label>
		          <input name="clsName" type="text" class="input1" required>
		          <label>강좌 분류 </label>
		            <select class="input1" name="clsCategoryName" id="clsCategoryName" required>
		              <option value="">none</option>
		              <option value="문화">문화</option>
		              <option value="체육">체육</option>
		            </select> <br>
		          <label>강사 코드 </label>
		          <input type="text" name="tcrNo" class="input1" required>
		          <label>최대수강인원 </label>
		          <input type="text" class="input1" name="clsMaxCnt" required><br>
		          <label>강의실 </label> 
		            <select name="cenName" class="input1" required>
		              <option value=" ">--체육 시설--</option>
		              <option value="201">수영장</option>
		              <option value="301">탁구장</option>
		              <option value="302">배드민턴장</option>
		              <option value="303">클라이밍</option>
		              <option value="401">농구장</option>
		              <option value=" ">--문화 시설--</option>
		              <option value="304">304호 강의실</option>
		              <option value="305">305호 강의실</option>
		              <option value="306">306호 강의실</option>
		              <option value="307">307호 강의실</option>
		              <option value="308">308호 강의실</option>
		              <option value="309">309호 강의실</option>
		              <option value="310">310호 강의실</option>
		              <option value=" " selected>--</option>
		            </select>
		          <label>강의 추천연령</label>
		              <select class="input1" name="clsRecoAge" required>
		                <option value="" selected>None</option>
		                <option value="아동">아동</option>
		                <option value="청소년">청소년</option>
		                <option value="성인">성인</option>
		                <option value="시니어">시니어</option>
		                <option value="전체">전체</option>
		              </select> 
		          <label>강좌수강료 </label>
		          <input type="text" class="input1" name="clsCost" required>
		          <label>강좌요일 </label>
		          <input type="text" class="input1" name="clsDay" required><br>
		          <label >강좌 설명</label>
		          <textarea name="clsExplain" id="content" cols="30" rows="3" style="resize: none;" required></textarea><br>
		          <label >강의 기간 </label>
		          <input type="date" name="clsStartDay" class="input1" required> ~ <input type="date" name="clsEndDay" class="input1" required><p>
		          <label>강의 시간</label>
		          <input type="text" name="clsRunTime" class="input1" required>  
		          <label style="margin-left: 1%;">강의 총 진행시간</label>
		          <input type="number" name="clsTime" class="input1" required><p>
		
		          <button id="addpost" class="btns add">등 록 하 기</button>
		          <button class="btns">다 시   작 성 하 기</button>
		        </form>
		    </div>
		  </div>
  		<script>
  			const back = document.getElementById("back");
	      	const addpost = document.getElementById("addpost");
	        const selectTeacher = document.getElementById("selectTeacher");
	      	
	      	back.onclick = function(){
	           let text = " 이 창을 나가시겠습니까?\n 현재 입력하신 정보는 저장되지 않습니다.\n 나가시려면 '확인'을 누르세요.";
	           /* console.log('누름확인'); */
	           if (confirm(text) == true) {
	               location.href = "${pageContext.servletContext.contextPath}/login/admin/classList"; 
	           }
	        };
	          
	        addpost.onclick = function(){
	           let text = "강좌를 등록하시겠습니까?\등록하시려면 '확인'을 누르세요.";
	           if (confirm(text) == true) {
	               document.getElementById("addpost").submit();
	           }
	        };
	        
	        selectTeacher.addpost.onclick = function(){
		           let text = "강좌를 등록하시겠습니까?\등록하시려면 '확인'을 누르세요.";
		           if (confirm(text) == true) {
		        	   location.href = "${pageContext.servletContext.contextPath}/login/admin/classList"; 
		           }
		        };
		</script>
			  
	</section>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
