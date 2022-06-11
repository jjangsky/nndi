<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<jsp:include page="../../common/includepage/UserHeader.jsp"/>
<title>NNDI</title>
</head>
<body>
<jsp:include page="../../common/includepage/CustomerContactCentersAside.jsp"/>
<section>


<div style="border: 2px solid black; padding: 5px; margin-left: 18%; margin-right: 2%; ">
    <b>주민들의 소중한 의견을 적극 반영하는 너나들이, 중랑이 되도록 노력하겠습니다.</b><br>
    <b> 너나들이, 중랑 문화센터와 관련된 민원사항만을 접수하는 곳입니다.</b><br>
    <b>게시판 작성내용으로 인한 법적문제 발생시 민,형사상 책임은 전적으로 게시자에게 있습니다.</br></b>
    <b>민원인의 신상정보는 공개하지 않겠습니다.</b><br>
    <b>궁금하신 사항은 담당자에게 문의 바랍니다.</b><br>
    <b style="color: red;">욕설, 비방, 선정성, 상업성, 정치적 표현 등 부적절한 표현의 게재글은 비공개 전활 또는 삭제될 수 있습니다.</b>
</div>

<form id="write" action="${pageContext.servletContext.contextPath}/login/board/QNAWritepage" method="post" >
  <div class="write2">
    <p>문의 글 작성</p>
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
    <textarea placeholder="제목을 입력하세요" name="title" style="resize:none;" required></textarea>
    </div>
  </div>

  <div class="min3">
    <p class="jemok">내용</p>
    <div class="min2">
    
     <textarea placeholder="글 내용을 입력하세요" name="content" style="resize:none;" required></textarea>
    </div>
  </div>

<!--   <div class="min3">
    <div class="min2">
       <input type="radio" name="ox"> 공개
      <input type="radio" name="ox"> 비공개
  </div> -->

  <div>
    <button id="cancelqna" class="btns" type="button" onclick="location.href=${pageContext.servletContext.contextPath}/login/board/QNABoardList">취소</button>
    <button id="insertqna" type="button" class="btns">등록</button>
  </div>
</form>

 <script>
			const cancelqna = document.getElementById("cancelqna");
			const insertqna = document.getElementById("insertqna");
		    insertqna.onclick = function(){
		      let text = "글을 등록 하시겠습니까?\n등록하시려면 '확인'을 누르세요.";
		      if (confirm(text) == true) {
		    	  document.getElementById("write").submit();
		      }
		    };
		   
 </script>
 
 <script>
			const updatecancel = document.getElementById("cancelqna");
			cancelqna.onclick = function(){
		    	  location.href = "${pageContext.servletContext.contextPath}/login/board/QNABoardList";
		    };
</script>

</section>
<jsp:include page="../../common/includepage/UserFooter.jsp"/>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>

</html>