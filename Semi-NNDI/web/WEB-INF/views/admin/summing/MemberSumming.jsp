<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/nndi-style.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/sidebars.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/post.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/admin/summing.css" >
    <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
    <!-- ajax -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- jQuery -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style>
      .btn{
        font-size: 20px !important;
        color: aliceblue !important;
      }
    </style>
<title>Admin Teacher List</title>
</head>
<body>
	<jsp:include page="../../common/includepage/AdminHeader.jsp"/>
	
	<section>
	 
	   <jsp:include page="../../common/includepage/AdminAside.jsp"/>
	
		<div>
		    <div class="post title">
		        <h3 class="top">회원 통계</h3>
		    </div>
		    </div>
		    <div class="total">
		      <h3 class="to">전체 회원 수</h3>
		      <label>금일 날짜까지의 회원의 수를 조회합니다.</label>
		      <button id="totalMember" class="btns">조회하기</button>
		      <h4 id="result1" class="result"></h4>
		    </div>
		    <div class="dead">
		      <h3 class="to">탈퇴 회원 전체 수</h3>
		      <label>금일 날짜까지의 탈퇴한 회원의 수를 조회합니다.</label>
		      <button id="deadMember" class="btns">조회하기</button>
		      <h4 id="result2" class="result"></h4>    <!--innerHTML 로 결과값 도출-->
		    </div>
      
	</section>
	
	<script>
		$("#totalMember").onclick(function(){
	           $.ajax({
	                url: "${pageContext.servletContext.contextPath}/login/admin/memberTotalSumming",
	                type: "get",
	                success: function(data){
	                        $("#result1").html('　사용 가능한 아이디입니다.');
	                        console.log(data);
	                },
	                error: function(request, status){
	                    alert("네트워크를 확인해주세요.")
	                }
	            });
	    });
		$("#deadMember").onclick(function(){
	           $.ajax({
	                url: "${pageContext.servletContext.contextPath}/login/admin/memberDeadSumming",
	                type: "get",
	                success: function(data){
	                        $("#result2").html('　사용 가능한 아이디입니다.');
	                        console.log(data);
	                },
	                error: function(request, status){
	                    alert("네트워크를 확인해주세요.")
	                }
	            });
	    });
	</script>
	
	<jsp:include page="../../common/includepage/AdminFooter.jsp"/>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
