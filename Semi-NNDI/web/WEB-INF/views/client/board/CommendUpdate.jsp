<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>민원작성 페이지</title>
	<jsp:include page="../../common/includepage/UserHeader.jsp"/>
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/nndi-style.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/selectList.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
</head>
<body>

	<aside>
		<jsp:include page="../../common/includepage/CustomerContactCentersAside.jsp"/>
	</aside>
	
	<section style="float: left;">

		<div style="border: 2px solid black; padding: 5px; margin-left: 18%; margin-right: 2%; ">
    		<b>칭찬하기 게시판은 행정서비스 및 프로그램 진행에 있어 이웃주민과 민원인들에게 감동을 준 너나들이, 중랑의 직원 및 부서를 칭찬하는 게시판 입니다.</b><br>
   			<b style="color: red;">※ 게시판 작성내용으로 인한 법적 문제 발생 시 민·형사상 책임은 전적으로 게시자에게 있음을 알립니다.</b><br>
    		<b>- 개인정보 보호를 위해 게시내용에 개인정보를 입력하는 행위를 삼가하여 주시기 바랍니다.</br></b>
    	</div>
    	
    	

	<form action="${ pageContext.servletContext.contextPath }/login/board/commend/update/modify?num=${requestScope.num}" method="post">
  		<div class="write2">
    	<p>민원 글 작성</p>
  		</div>
  		
  		<div class="min3">
    		<div class="min2">
    			<tr>
      				<td>분류</td>
      				<select size = "1" name="category">
				        <option value="1">문화 강좌</option>
				        <option value="2">체육 강좌</option>
				        <option value="3">시설</option>
				        <option value="4">직원</option>
				        <option value="5">기타</option>
      				</select>
    			</tr>
  			</div>
		</div>
		
  		<div class="min3">
    		<p class="jemok">제목</p>
    		
    		<div class="min4">
    		<tr>
    		<textarea placeholder="제목을 입력하세요" name="title" required></textarea>
    		</tr>
  			</div>
		</div>

	  	<div class="min3">
    		<p class="jemok">내용</p>
    		<div class="min2">
     			<textarea placeholder="글 내용을 입력하세요" name="content" required></textarea>
		  	</div>
		</div>
		
		<div style="float: right;">
    		<button type="reset">취소</button>
    		<button type="submit">등록</button>
  		</div>
		

</form>

</section>
	
	
</body>

<br clear="both">

	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
	
</html>
