<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/sidebars.css" >
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/Policy.css" >
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"  integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"  integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

<title>너나들이 중랑</title>
	<jsp:include page="../../../common/includepage/UserHeader.jsp"/>
</head>
<body>

<aside>
	<jsp:include page="../../../common/includepage/UserFindAside.jsp"/>	
</aside>

<section>
  <h3 class="hok">회원가입</h3>
  
  <div class="hc">
    <div class="it">본인 확인</div>
    <div class="it first">약관 동의</div>
    <div class="it">회원정보 입력</div>
    <div class="it">가입 완료</div>
  </div>
  
  <div class="jebal">
    <p>
      <b>이용약관 및 개인정보 수집이용안내 동의에 체크하시기 바랍니다.</b> <br>
    </p>
  </div>
  
	<form id="PolicyData" method="post" action="${ pageContext.servletContext.contextPath }/Account/policy">
		<div class="ccc">
			<p><b>신규 회원 가입 이용 약관</b></p>
		  	<textarea cols="90" rows="7" readonly style="resize:none;">
		  	 회원 가입 이용 약관
		  	</textarea>
		
			<div class="okokok">
		      	<input type="checkbox" name="agree" value="true" class="agreement" required > 동의
			</div>
			
			<div class="ttt">
				<p><b>개인정보 수집이용안내</b></p>
				<textarea name="" id="" cols="90" rows="7" readonly style="resize:none;">
			   	개인정보 수집이용안내에 관한 약관
				</textarea>
			</div>
			<div class="okokok">
		    	<input type="checkbox" name="agree2" value="true" class="agreement" required> 동의
			</div>
				<br><br>
			        <input type="checkbox" id="checkAll" name="checkAll">
        			<label for="checkAll">전체 선택/해제</label>
			
			<div>
			  	<button type="submit" id="Okay" class="btns3">다음</button>
 
			 	<button type="reset" id="noman" class="btns3 add3">가입 취소</button>
			</div>
			
		</div>	
	</form>
</section>

</body>

    <script>
        $(document).ready(function(){
        	
            $("input[type=checkbox]").click(function(){
                var bool = $(this).prop("checked");
                if(bool == false){
                    $("#checkAll").prop("checked",bool);
                }
            });
    
            $("#checkAll").click(function(){
                var bool = $(this).prop("checked");     
                $(".agreement").prop("checked", bool);     
                
            });
        });

    </script>
    
	<jsp:include page="../../../common/includepage/UserFooter.jsp"/>
</html>