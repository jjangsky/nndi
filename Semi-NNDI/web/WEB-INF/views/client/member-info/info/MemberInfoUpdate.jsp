<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/Account.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/sidebars.css" >
	<jsp:include page="../../../common/includepage/UserHeader.jsp"/>
	<title>너나들이 중랑</title>
</head>
<body>
<aside>
	<jsp:include page="../../../common/includepage/UserFindAside.jsp"/>
</aside>
<section>

    <div class="hc" style="float: right;">
        <button id="back" class="back">목록으로</button>
  </div>
    <div class="post add">
        <form action="${ pageContext.servletContext.contextPath }/Account/input" method="post" >
            <label>이름</label>
            
            <input type="text" name="uName" id="uName" value='${ loginMember.name }'  readonly>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<br>
            <label for="uid" id="inputid" >아이디:</label>   
            <input type="text" id="uid" name="userId" size="30" value='${ loginMember.id }' placeholder="소문자와 숫자 6~12자리" readonly>
    		<br>
    		
    		<label for="idQueNum" id="idQueNum">아이디 질문</label>
    		<select name="selectIdQueNum" id="selectIdQueNum" readonly>
    			<option value="1">출신 고등학교를 적어주세요.</option>
    			<option value="2">가장 친한 친구의 이름을 적어주세요.</option>
    			<option value="3">가장 존경하는 인물의 이름을 적어주세요.</option>
    			<option value="4">어릴적 별명을 적어주세요.</option>
    			<option value="5">고향을 적어주세요.</option>
    			<option value="6">좋아하는 책의 제목을 적어주세요.</option>
   			</select>
   			
    		<input type="text" id=idQueAnser" name="idQueAnswer" placeholder="답변을 작성하세요." value='${ loginMember.idQueAnswer }' required>
    		<br>
            <label for="upwd" id="inputpwd">비밀번호: </label>  
            <input type="password" name="password" id="password" size="30" placeholder="소문자,숫자,특수문자 8~12글자" value='*****' readonly> <p id="pwdresult"></p>
    
    		<p id="pwdresult2"></p> 
            <label for="upwd2" id="inputpwd2">비밀번호 확인: </label>
            <input type="password" name="password2" id="password2" size="30" placeholder="비밀번호 재입력" value='*****' readonly>
            
    		<br>
    		
                <label>이메일</label>
                <input type="text" name="str_email02" id="str_email02"  value="naver.com" value='${ loginMember.email }' readonly>
               	<br>
            
            <label for="phone" id="input">연락처: </label>
            <select name="selectUserPhone" style="width: auto;">
                <option value="010">010</option>
                <option value="016">016</option>
                <option value="011">011</option>
                <option value="019">019</option>
            </select>
            <input type="tel" name="phone2" size="4" id="phone2">
            <input type="tel" name="phone3" size="4" id="phone3"><p>
            
                <div style="margin-left: 40%;">
                    <button id="submitbutton">등록</button>
                    <button id="submitbutton">취소</button>
                </div>
        </form>
    </div>
	
</section>

</body>
	<jsp:include page="../../../common/includepage/UserFooter.jsp"/>
	
<script>
$(function(){

    $("#uName").focus(function(){
    }).blur(function(){
    }).change(function(){
    }).select(function(){
    })

    $("#uName").change(function(){
        
        var regExp = /^[가-힣]{2,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("한글로 두 자 이상 입력하세요")
            $(this).val('');
        }
    })

      $("#uid").change(function(){
    	
    	var idCheck = /^(?=.*[a-z])(?=.*[0-9]).{6,12}$/;
    	
    	if(idCheck.test($(this).val())){
    	} else {
    		alert("아이디는 소문자, 숫자로 이루어진 6~12자로 작성해주세요.")
    		$(this).val('');
    	}
    }) 

      $("#phone2").change(function(){
    	
    	var phoneCheck = /^(?=.*[0-9]).{3,4}$/;
    	
    	if(phoneCheck.test($(this).val())){
    	} else {
    		alert("전화번호 앞자리는 3~4자리 숫자만 입력가능합니다..")
    		$(this).val('');
    	}
    })
      
      $("#phone3").change(function(){
    	
    	var phoneCheck2 = /^(?=.*[0-9]).{4}$/;
    	
    	if(phoneCheck2.test($(this).val())){
    	} else {
    		alert("전화번호 뒷자리는 4자리 숫자만 입력가능합니다..")
    		$(this).val('');
    	}
    })
    
     $("#password").change(function(){
    	
    	var pwdCheck = /^(?=.*[a-z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
    	
    	if(pwdCheck.test($(this).val())){
    	} else {
    		alert("비밀번호는 소문자, 특수기호, 숫자로 이루어진 8~12글자로 작성해주세요.")
    		$(this).val('');
    	}
    })
    
    $("#password2").change(function(){                  
        if($("#password").val() != $(this).val()){     
        	alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.")
        	$(this).val('');
        } else {
        }
    })

    $("#password").change(function(){                   
        if($("#password2").val() != $(this).val()){      
            if(!$("#password2").val().length == 0) {     
            	alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.")
            	$(this).val('');
            }
        } else {
        }
    })
})
</script>
	  

</html>