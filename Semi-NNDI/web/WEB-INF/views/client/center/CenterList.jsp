<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>너나들이 중랑</title>
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/centerRent.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/centerList.css">
	<jsp:include page="../../common/includepage/UserHeader.jsp"/>
</head>
<body>

	<aside>
	<jsp:include page="../../common/includepage/CenterAside.jsp"/>
	</aside>
	
	<section style="float: left">
    	<div class="cap"><h3>대관 접수 절차 안내</h3></div>
        	<div class="dv"><h5 class="p">상담 및 접수 > 신청서 작성 > 관리자 승인(최대 7일 소요) > 대관료 납부 > 시설 이용 <br> 시설 사용허가 신청서 1부: <a href="파일 경로/파일이름.확장자" download><button class="myButton">다운로드</button></a> </h5></div>
        		<p class="pp">상담 및 접수 후 신청서는 메일로 송부 받습니다. 홈페이지 대관 신청만 있을 경우 반려될 수 있습니다.</p>
        		<div class="post list">
            		<table class="blueone">
                		<thead align="center">
		                    <th>시설 번호</th>
		                    <th>시설 이름</th>
		                    <th>수용 인원</th>
		                    <th>조회</th>
                		</thead>
                 		
                 		<c:forEach var="center" items="${ requestScope.centerList }">
							<tr>
								<td><c:out value="${ center.cenName }"/></td>
								<td><c:out value="${ center.centerKindName }"/></td>
								<td><c:out value="${ center.cenCapacity}"/></td>
								<td align="center"><button type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/login/center/list/select/detail?num=${ center.cenName }'" >상세보기</button></td>
							</tr>
						</c:forEach>

            		</table>
	          </div>
	</section>

</body>
	<br clear="both">
	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
</html>