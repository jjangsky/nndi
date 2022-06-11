<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>민원작성 페이지</title>
	<jsp:include page="../../common/includepage/UserHeader.jsp"/>
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/nndi-style.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/Policy.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/selectList.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/sidebars.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/UserFind.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/UserFindAside.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
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

<form action="${ pageContext.servletContext.contextPath }/login/board/complain/modify?num=${requestScope.num}" method="post">
  <div class="write2">
    <p>민원 글 수정</p>
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

  <div class="min3">
    <p class="jemok">제목</p>
    <div class="min4">
    <tr>
    <textarea placeholder="제목을 입력하세요" name="title">${ requestScope.complainUpdate.title }</textarea>
    <input type="hidden" value="${ request.num }" name="num">
    </tr>
  </div>

  <div class="min3">
    <p class="jemok">내용</p>
    <div class="min2">
    
     <textarea placeholder="글 내용을 입력하세요" name="content">${ requestScoep.complainUpdate.content }</textarea>
    
  </div>

  <!-- 4단계로 설정
   <div class="min3">
    <div class="min2">
      <input type="radio" name="ox"> 공개
      <input type="radio" name="ox"> 비공개
  </div>
  -->

  <div>
    <button type="reset">취소</button>
    <button type="submit">등록</button>
  </div>
</form>

</section>
	
	
</body>

<br clear="both">

	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
	
</html>
