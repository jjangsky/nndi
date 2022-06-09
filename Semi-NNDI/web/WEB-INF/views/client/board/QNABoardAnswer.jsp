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
<jsp:include page="../../common/includepage/CustomerContactCentersAside.jsp"/>
<section>
    <div class="l1">
    <div class="d1">
      <h3>${requestScope.qnadto.title}</h3>
      <p><b>작성자 ID: ${requestScope.qnadto.memId }</b></p>
      <p><b>작성일</b>: ${requestScope.qnadto.postDate}<br><b>답변자 ID: </b>${requestScope.qnadto.managerId}</p>
    </div>
  </div>  

  <div class="l1">
    <div class="d1">
      <p>${requestScope.qnadto.answerContent}</p>
    </div>
  </div>

  <div>
    <button class="r1" onclick="location.href='${pageContext.servletContext.contextPath}/login/board/QNABoardList'">목록으로</button>
  </div>
  </section>
  <jsp:include page="../../common/includepage/UserFooter.jsp"/>
</body>
</html>