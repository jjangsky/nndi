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
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/postAdd.css" >
    <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style>
      .btn{
        font-size: 20px !important;
        color: aliceblue !important;
      }
    </style>
<title>Admin Notice Detail View</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
    
		<div>
		    <div class="post title">
		        <h3 class="top">공지사항</h3>
		    </div>
		    <div>
		      <button id="back" class="back">목록으로</button>
		    </div>
		    <div class="post add">
		        <form action="post">
		            <label>제목</label><br>
		            <input id="title" maxlength=100 type="text" readonly value='${ detailNotice.title }'><br>     <!-- readonly에 value값 넣기 -->
		            <label>카테고리</label><br>
		            <input id="title" type="text" readonly value=${ detailNotice.category.cateKind }><br>
		            <label>파일첨부</label><br>
		            <input type="file" required><br>
		            <label>내용</label><br>
		            <textarea name="content" id="content" cols="30" rows="15" style="resize: none;" required 
		            		  >${ requestScope.detailNotice.content }</textarea><br>
		            <button id="updatepost" class="btns add" type="submit">수 정 하 기</button>
		            <button id="deletepost" class="btns">삭 제 하 기</button>
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
	      let text = "답변을 수정하시겠습니까?\n수정하시려면 '확인'을 누르세요.";
	      if (confirm(text) == true) {
	        
	      } else {
	        
	      }
	    });
	    $("#deletepost").click(function(){
	      let text = "답변을 삭제하시겠습니까?\n삭제하시려면 '확인'을 누르세요.";
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