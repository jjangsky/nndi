<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>너나들이 중랑</title>

<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/post.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/nndi-style.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/centerRent.css">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/centerList.css">


	<jsp:include page="../../common/includepage/UserHeader.jsp"/>
</head>

<body>

	
	<jsp:include page="../../common/includepage/CenterAside.jsp"/>
	
	
  	<section style="float: left">
  	  <div class="post list">
		<form action="${ pageContext.servletContext.contextPath }/login/center/insert" method="post">
	  		<table class="blueone" style="margin-left: 40%; margin-top:10%; margin-bottom:20%; width:800px; height:400px;">
	      		<tr>
	          		<th><label>시설명</label></th>
	         			<td> ${requestScope.centerDetail.centerKindName }</td>
	         				<input type="hidden" name="code" value="${requestScope.centerDetail.cenName }">
	      		</tr>
	      		
	      		<tr>
	        		<th><label>접수 대상 및 기간</label></th>
	        			<td>제한없음:정기접수</td>
	    		</tr>
	    
	    		<tr>
	        		<th><label>이용 시작일</label></th>
	        			<td><input type="date" name="start" id="start" required></td>
	    		</tr>
	    		
	    		<tr>
	        		<th><label>이용 종료일</label></th>
	        			<td><input type="date" name="end" id="end" required></td>
	    		</tr>
	    
	    		<tr>
	        		<th><label>접수 방법</label></th>
	        			<td>대기제(관리자승인)</td>
	    		</tr>
	    	
	    		<tr>
	        		<th><label>대관료</label></th>
	        			<td>문의 요망</td>
	    		</tr>
	  
	    		<tr>  	
	    			<td><button type="submit">등록</button></td>
	    			<td><button type="reset">취소</button></td>
	   		 	</tr>
   		 	</table>
	  	</form>
	  	</div>
	</section>

</body>
	<br clear="both">
	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
</html>