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
	        			<td><input type="date" name="start" required></td>
	    		</tr>
	    		
	    		<tr>
	        		<th><label>이용 종료일</label></th>
	        			<td><input type="date" name="end" required></td>
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
	    			<td><button type="button" data-bs-toggle="modal" data-bs-target="#rentInsert">등록</button></td>
	    			<td><button type="reset">취소</button></td>
	   		 	</tr>
	   		 	
	   		 	<!-- The Modal -->
		<div class="modal" id="rentInsert">
  		 <div class="modal-dialog">
   		  <div class="modal-content">

    	  <!-- Modal Header -->
    	  <div class="modal-header">
    	    <h4 class="modal-title">시설 대관신청</h4>
      	  <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
     	 </div>

    	  <!-- Modal body -->
    	  <div class="modal-body">
    	    정말 해당 정보로 대관을 신청하시겠습니까?
    	  </div>

    	  <!-- Modal footer -->
     	 <div class="modal-footer">
     	   <button type="submit" class="btn btn-primary" data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#rent">신청</button>
     	   <button type="button" class="btn btn-danger" data-bs-dismiss="modal">취소</button>
     	 </div>
     	
     	 </div>
     	 	</div>
     	 		</div>
     	 
     	 
		     	 <!-- The Modal -->
				<div class="modal" id="rent">
		  		<div class="modal-dialog">
		   		 <div class="modal-content">
		
		    	  <!-- Modal Header -->
		    	  <div class="modal-header">
		    	    <h4 class="modal-title">시설 대관신청</h4>
		      	  <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
		     	 </div>
		
		    	  <!-- Modal body -->
		    	  <div class="modal-body">
		    	    대관 신청이 완료되었습니다.
		    	  </div>
		    	  
		    	  <!-- Modal footer -->
		     	 <div class="modal-footer">
		     	   <button type="button" class="btn btn-primary" data-bs-dismiss="modal">확인</button>
		     	 </div>
     	 
   	 </div>
  	</div>
	</div>
   		 	</table>
	  	</form>
	  	</div>
	</section>

</body>
	<br clear="both">
	<jsp:include page="../../common/includepage/UserFooter.jsp"/>
</html>