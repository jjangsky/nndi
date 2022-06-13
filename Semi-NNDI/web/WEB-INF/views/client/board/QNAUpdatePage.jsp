<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<jsp:include page="../../common/includepage/UserHeader.jsp"/>
<title>Insert title here</title>
</head>
<body>

<aside>
	<jsp:include page="../../common/includepage/CustomerContactCentersAside.jsp"/>
</aside>

<section style="float: left">

	<form id="update" action="${pageContext.servletContext.contextPath}/login/board/QNAUpdate?num=${requestScope.qnadto.num}" method="post" >
  		<div class="write2">
    		<p>문의 글 수정</p>
  		</div>
	
  		<div class="min3">
    		<div class="min2">
    			<tr>
      				<td>분류</td>
      					<select size = "1" name="category">
					        <option value="1">강좌</option>
					        <option value="2">도서관</option>
					        <option value="3">체육</option>
					        <option value="4">문화</option>
					        <option value="5">기타</option>
      					</select>
    			</tr>
     		</div>
  		</div>

  		<div class="min3">
    		<p class="jemok">제목</p>
    		<div class="min4">
    			<tr>
    			<textarea name="title" style="resize: none;">${requestScope.qnadto.title}</textarea>
    			</tr>
     		</div>
  		</div>
  		
  		<div class="min3">
    		<p class="jemok">내용</p>
    		<div class="min2">
     			<textarea name="content" style="resize: none;">${requestScope.qnadto.content}</textarea>
		 	</div>
		</div>

		<div class="min3">
    		<div class="min2">
  			</div>
  			
  			<div>
    			<button id="updatecancel" class="btns" type="button">취소</button>
    			<button id="updateqna" class="btns" type="button">수정</button>
  			</div>
 		</div>
	</form>

</section>

<br clear="both">
<jsp:include page="../../common/includepage/UserFooter.jsp"/>
 <script>
			const updateqna = document.getElementById("updateqna");
 			const updatecancel = document.getElementById("updatecancel");
			
			updateqna.onclick = function(){
		      let text = "글을 수정 하시겠습니까?\n수정하시려면 '확인'을 누르세요. 수정을 취소 하시겠습니까?\n취소하시려면 '취소'를 누르세요.";
		      if (confirm(text) == true) {
		    	  document.getElementById("update").submit();
		      }
		    };
 
		    updatecancel.onclick = function(){
			      let text = "수정을 취소 하시겠습니까?\n취소하시려면 '취소'를 누르세요. 목록으로 되돌아갑니다.";
			      if (confirm(text) == true) {
			    	  location.href = "${pageContext.servletContext.contextPath}/board/QNABoardList";
			      }
		    }; 
 </script>
 
<!--  <script>
 </script> -->
 


</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</html>