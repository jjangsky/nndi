<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/nndi-style.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/sidebars.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/post.css" >
    <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style>
      .btn{
        font-size: 20px !important;
        color: aliceblue !important;
      }
    </style>
<title>Admin Classes List</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	  
    	<div>
		    <div class="post title">
		        <h3 class="top">강좌 상세 조회</h3>
		    </div>
  		</div>
	    <div class="post list">
	  		
	        <table class="tb_02">
	          <tbody>
	            <tr>
	              <th >강좌고유번호</th>
	              <td>${ cls.clsNum }</td>
	            </tr>
	            <tr>
	              <th >강좌명</th>
	              <td>${ cls.clsName }</td>
	            </tr>
	            <tr>
	              <th >강좌분류</th>
	              <td>${ cls.clsCategoryName }</td>
	            </tr>
	            <tr>
	              <th >강의실(시설이름)</th>
	              <td>${ cls.cenName }호</td>
	            </tr>
	            <tr>
	              <th >시설 분류</th>
	              <td>${ cls.center.centerKindName }호</td>
	            </tr>
	            <tr>
	              <th>강사명</th>
	              <td>${ cls.teacher.name }</td>
	            </tr>
	            <tr>
	              <th>강사 성별</th>
	              <td>${ cls.teacher.gender }</td>
	            </tr>
	            <tr>
	              <th>강좌 신청 인원</th>
	              <td>${ cls.clsApplyCnt }</td>
	            </tr>
	            <tr>
	              <th>강좌 최대 수강 인원</th>
	              <td>${ cls.clsMaxCnt }</td>
	            </tr>
	            <tr>
	              <th>강좌 개강일</th>
	              <td>${ cls.clsStartDay }</td>
	            </tr>
	            <tr>
	              <th>강좌 종강일</th>
	              <td>${ cls.clsEndDay }</td>
	            </tr>
	            <tr>
	              <th>강좌 설명</th>
	              <td>${ cls.clsExplain }</td>
	            </tr>
	            <tr>
	              <th>강좌 진행 총 시간</th>
	              <td>${ cls.clsTime }</td>
	            </tr>
	            <tr>
	              <th>강좌 진행 시간</th>
	              <td>${ cls.clsRunTime }</td>
	            </tr>
	            <tr>
	              <th>강좌 수강료</th>
	              <td>${ cls.clsCost }원</td>
	            </tr>
	            <tr>
	              <th>강좌 요일</th>
	              <td>${ cls.clsDay }</td>
	            </tr>
	            <tr>
	              <th>강좌 활성화여부</th>
	              <td>${ cls.clsStartYn }</td>
	            </tr>
	            <tr>
	              <th>추천연령</th>
	              <td>${ cls.clsRecoAge }</td>
	            </tr>
	          </tbody>
	          </table>
	          <form action="classUpdate" method="get">
		    <input type="hidden" id="num" name="num" value="${ cls.clsNum }" /> 
	    	<button type="button" class="btn btn-secondary btns addbtn" 
	    	onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/classList'">목록으로</button>
	    	<button id="updatepost" class="btn btn-secondary btns addbtn" type="submit"
	    			onclick="location.href='${ pageContext.servletContext.contextPath }/login/admin/classUpdate'">수정하기</button>
	          </form>
	    </div>
	  	
	</section>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>