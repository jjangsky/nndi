<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<jsp:include page="../../common/includepage/UserHeader.jsp"/>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../../common/includepage/ClassAside.jsp"/>
<section>	
  <div>
    <h3 class="notice"><b><u>체육 강좌</u> 조회</b></h3>
  </div>
	<div class="post list"> 
    <table class="blueone">
      <thead>
        <tr>
            <!-- <th>번호</th> -->
            <th>강좌명</th>           
            <th>강사명</th>
            <th>장소</th>
            <th>신청인원</th>
            <th>개강일</th>
            <th>종강일</th>
            <th>진행시간</th>
            <th>요일</th>
		    </tr>        
    </thead>
    <tbody>
    <c:forEach var="cls" items="${ requestScope.classList }">
      <tr>
          <td class="mudo" style="display: none;">${cls.clsNum}</td>
          <td class="mudo">${cls.clsName}</td>
          <td class="mudo">${cls.teacher.name}</td>
          <td class="mudo">${cls.cenName} 호</td>
          <td class="mudo">${cls.clsApplyCnt}명//${cls.clsMaxCnt}명</td>
          <td class="mudo">${cls.clsStartDay}</td>
          <td class="mudo">${cls.clsEndDay}</td>
          <td class="mudo">${cls.clsRunTime}</td>
          <td class="mudo">${cls.clsDay}</td>
      </tr>
      </c:forEach>
    </tbody>
    </table>

  </div>
  </section>
  <jsp:include page="../../common/includepage/UserFooter.jsp"/>
    <script>
		
		if(document.getElementsByClassName("mudo")) {
			
			const $tds = document.getElementsByClassName("mudo");
			for(let i = 0; i < $tds.length; i++) {
				
				$tds[i].onmouseenter = function() {

					this.parentNode.style.cursor = "pointer";
				}
				
				$tds[i].onclick = function() {
					const num = this.parentNode.children[0].innerText;
					location.href="${pageContext.servletContext.contextPath}/login/board/ClassListPHDetail?num=" + num;
					
				}
				
			}
			
		} 
   </script>
</body>
</html>