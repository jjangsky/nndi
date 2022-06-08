<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>너나들이 중랑</title>
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/nndi-style.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/Policy.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/selectList.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/sidebars.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/UserFind.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/UserFindAside.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">

	<jsp:include page="../../common/includepage/UserHeader.jsp"/>
</head>
<body>

	<jsp:include page="../../common/includepage/CustomerContactCentersAside.jsp"/>
	<section>
	<div style="border: 2px solid black; padding: 5px; margin-left: 18%; margin-right: 2%; ">
    <b>센터 운영 및 시설에 대한 건의 및 불편사항을 남겨주시면 최대한 빠른 시간 안에 답변드리겠습니다.</b><br>
    <b style="color: red;">※ 일반 문의는 접수 후 7일, 관련 법령 해석이 요구되는 문의는 접수 후 14일 이내에 처리됩니다.</b><br>
    <b>- 비방, 상업성 게시물 등은 삭제될 수 있으며, 타인의 명예훼손, 법령 위반은 처벌받을 수 있습니다.</br></b>
     <b> - 비공개 게시물의 답변은 비공개 답변으로 게시가 됩니다.</b>
     
     </div>
  <div style="float: right; margin-left: 600px; margin-top: 50px; margin-bottom: 20px;" >
   
        <select size = "1" >
                <option value="title" selected>제목</option>
                <option value="user" selected>내용</option>
        </select>
   
    <input type="text" placeholder="검색어 입력">
    <button>검색</button> 
  </div>

  <div class="post list"> 
      <div>
        <button class="vision">공개글 보기</button>
        <button class="vision">전체 보기</button>
      </div>
      <form action="${ pageContext.servletContext.contextPath }/board/complain/list" method="get">
        <table class="blueone">
      <thead>
        <tr>
          <th>번호</th>
          <th>카테고리</th>
          <th>제목</th>
          <th>작성일</th>
          <th>처리상태</th>
          <th>조회수</th>
        </tr>
    </thead>
      <c:forEach var="board" items="${ requestScope.boardList }">
			<tr>
				<td><c:out value="${ board.num }"/></td>
				<td><c:out value="${ board.category.cateKind }"/></td>
				<td><c:out value="${ board.title}"/></td>
				<td><c:out value="${ board.date}"/></td>
				<td><c:out value="${ board.answer }"/></td>
				<td><c:out value="${ board.hits }"/></td>
			</tr>
			</c:forEach>
      
      
    </table>
    </form>
  </div>
</div>
<div>
    <button class="r1" onclick="location.href='${pageContext.servletContext.contextPath}/login/board/complain/towrite'">글작성</button>
    </div>
    
    <div class="pagination">
      <a href="#">&laquo;</a>
      <a href="#">1</a>
      <a class="active" href="#">2</a>
      <a href="#">3</a>
      <a href="#">4</a>
      <a href="#">5</a>
      <a href="#">6</a>
      <a href="#">&raquo;</a>
  </div>
	</section>
	
	<script>
		
		if(document.getElementsByTagName("td")) {
			
			const $tds = document.getElementsByTagName("td");
			for(let i = 0; i < $tds.length; i++) {
				
				$tds[i].onmouseenter = function() {

					this.parentNode.style.cursor = "pointer";
				}
				
				$tds[i].onclick = function() {
					/* 게시물 번호까지 알아왔으니 이제 상세보기는 할 수 있습니다. */
					
					const num = this.parentNode.children[0].innerText;
					location.href="${pageContext.servletContext.contextPath}/login/board/complain/detail?num=" + num;
					
				}
				
			}
			
		}
		
	</script>
	
</body>

<br clear="both">

	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
	
</html>
