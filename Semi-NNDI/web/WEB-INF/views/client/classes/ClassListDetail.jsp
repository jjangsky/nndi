<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/program.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<jsp:include page="../../common/includepage/UserHeader.jsp"/>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../../common/includepage/ClassAside.jsp"/>
 <section>
 <form action="${pageContext.servletContext.contextPath}/login/board/ClassApply" method="post">
      <h3 class="cap">${requestScope.classdto.clsName}</h3>
      <table>
        <tr align="center">
          <th>교육대상</th>
          <td>${requestScope.classdto.clsRecoAge}</td>
      </tr>
      <tr align="center">
        <th>교육기간</th>
        <td> ${requestScope.classdto.clsStartDay} ~/~ ${requestScope.classdto.clsEndDay}</td>
    </tr>
    <tr align="center">
        <th>교육요일</th>
        <td>${requestScope.classdto.clsDay}</td>
    </tr>
    <tr align="center">
        <th>교육시간</th>
        <td>${requestScope.classdto.clsRunTime}</td>
    </tr>
    <tr align="center">
      <th>교육장소</th>
      <td>${requestScope.classdto.cenName} 호 / ${ requestScope.classdto.center.centerKindName }</td>
    </tr>
    <tr align="center">
    <th>수강료</th>
    <td>${requestScope.classdto.clsCost} (원)</td>
    </tr>
    <tr align="center">
    <th>수강 강사</th>
    <td>${requestScope.classdto.teacher.name}</td>
    </tr>
    
    </table>
 
	<input name="cencost" type="hidden" value="${requestScope.classdto.clsCost}"/>
	<input name="clsNum" type="hidden" value="${requestScope.classdto.clsNum}"/>
    <div class="buton">
      <button id="deletepost" class="btns" onclick="location.href='${pageContext.servletContext.contextPath}/login/board/QNAClassList'">취소</button>
      <button id="app" class="btns" type="submit"  onclick="location.href='${pageContext.servletContext.contextPath}/login/board/ClassApply'">신청</button>
    </div>
    </form> 
</section>
 
<br clear="both"> 
<jsp:include page="../../common/includepage/UserFooter.jsp"/>
</body>
</html>
