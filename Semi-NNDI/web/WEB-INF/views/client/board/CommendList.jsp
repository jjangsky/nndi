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
    <b>칭찬하기 게시판은 행정서비스 및 프로그램 진행에 있어 이웃주민과 민원인들에게 감동을 준 너나들이, 중랑의 직원 및 부서를 칭찬하는 게시판 입니다.</b><br>
    <b style="color: red;">※ 게시판 작성내용으로 인한 법적 문제 발생 시 민·형사상 책임은 전적으로 게시자에게 있음을 알립니다.</b><br>
    <b>- 개인정보 보호를 위해 게시내용에 개인정보를 입력하는 행위를 삼가하여 주시기 바랍니다.</br></b>
     
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
      <form action="${ pageContext.servletContext.contextPath }/board/complain/list" method="get">
        <table class="blueone">
      <thead>
        <tr>
          <th>번호</th>
          <th>카테고리</th>
          <th>제목</th>
          <th>작성일</th>
          <th>조회수</th>
        </tr>
    </thead>
      <c:forEach var="commend" items="${ requestScope.commendList }">
			<tr>
				<td class="test"><c:out value="${ commend.num }"/></td>
				<td class="test"><c:out value="${ commend.category.cateKind }"/></td>
				<td class="test"><c:out value="${ commend.title}"/></td>
				<td class="test"><c:out value="${ commend.postDate}"/></td>
				<td class="test"><c:out value="${ commend.hits }"/></td>
			</tr>
			 
		</c:forEach>
      
      
    </table>
    </form>
  </div>
</div>
<div>
    <button class="r1" onclick="location.href='${pageContext.servletContext.contextPath}/board/complain/towrite'">글작성</button>
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
		
		if(document.getElementsByClassName("test")) {
			
			const $tds = document.getElementsByClassName("test");
			for(let i = 0; i < $tds.length; i++) {
				
				$tds[i].onmouseenter = function() {

					this.parentNode.style.cursor = "pointer";
				}
				
				$tds[i].onclick = function() {

					
					const num = this.parentNode.children[0].innerText;
					location.href="${pageContext.servletContext.contextPath}/board/list/commend/detail?num=" + num;
					
				}
				
			}
			
		}
		
		
	</script>
	
</body>

<br clear="both">

	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
	
</html>
