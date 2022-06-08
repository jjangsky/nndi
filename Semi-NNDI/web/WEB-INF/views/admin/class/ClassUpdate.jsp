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
		        <h3 class="top">강좌 수정</h3>
		    </div>
		    <div>
		      <button id="back" class="back">목록으로</button>
		    </div>
    
		    <div class="post add">
		        <form action="">
		            <table class="tb_02">
				          <tbody>
				            <tr>
				              <th >강좌명</th>
				              <td><input type="text" value="${ cls.clsName }" readonly></td>
				            </tr>
				            <tr>
				              <th >강좌분류</th>
				              <td><input type="text" value="${ cls.clsCategoryName }" readonly></td>
				            </tr>
				            <tr>
				              <th>강사명</th>
				              <td><input type="text" value="${ cls.teacher.name }" readonly></td>
				            </tr>
				            <tr>
				              <th>강좌 신청 인원</th>
				              <td><input type="text" value="${ cls.clsApplyCnt }" readonly></td>
				            </tr>
				            <tr>
				              <th>강좌 최대 수강 인원</th>
				              <td><input type="number" value="${ cls.clsMaxCnt }" min="1" max="30" required></td>
				            </tr>
				            <tr>
				              <th>강좌 개강일</th>
				              <td><input type="date" value="${ cls.clsStartDay }" required></td>
				            </tr>
				            <tr>
				              <th>강좌 종강일</th>
				              <td><input type="date" value="${ cls.clsEndDay }" required></td>
				            </tr>
				            <tr>
				              <th>강좌 설명</th>
				              <td><input type="text" value="${ cls.clsExplain }" required></td>
				            </tr>
				            <tr>
				              <th>강좌 진행 총 시간</th>
				              <td><input type="text" value="${ cls.clsTime }" required></td>
				            </tr>
			              	<tr>
				              <th>강좌 진행 시간</th>
				              <td><input type="number" value="${ cls.clsRunTime }" min="1" max="6" required></td>
				            </tr>
				            <tr>
				              <th>강좌 수강료</th>
				              <td><input type="number" value="${ cls.clsCost }" min="1000" required></td>
				            </tr>
				            <tr>
				              <th>강좌 요일</th>
				              <td><input type="text" value="${ cls.clsDay }" required></td>
				            </tr>
				            <tr>
				              <th>강좌 활성화여부</th>
				              <td>
			                  <select name="startYn" id="startYn">
			                    <option value=""> </option>
			                    <option value="Y">Yes</option>
			                    <option value="N">No</option>
			                  </select>
			                </td>
				            </tr>
				          </tbody>
				          </table>
		              <button id="deletepost" class="btns">삭 제 하 기</button>
		              <button id="updatepost" class="btns add" type="submit">수 정 하 기</button>
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
	      let text = "강좌를 수정하시겠습니까?\n수정하시려면 '확인'을 누르세요.";
	      if (confirm(text) == true) {
	        
	      } else {
	        
	      }
	    });
	    $("#deletepost").click(function(){
	      let text = "강좌를 삭제하시겠습니까?\n삭제하시려면 '확인'을 누르세요.";
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
