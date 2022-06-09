<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/client/KS_CSS/UserFindAside.css" >
<title>너나들이 중랑</title>

<jsp:include page="../../common/includepage/UserHeader.jsp"/>
</head>
<body>
<aside>
<jsp:include page="../../common/includepage/UserFindAside.jsp"/>
</aside>

<section>
    <form action="${ pageContext.servletContext.contextPath }/Account/pwdinitialization" method="post" id="pwdFind">
        <p><br>
        <label for="name">아이디 : </label>
        <input type="text" id="userId" name="userId" size="30" required>   <p>
        
         <label for="phone" id="input">연락처: </label>
            <select name="selectUserPhone" style="width: auto;">
                <option value="010">010</option>
                <option value="016">016</option>
                <option value="011">011</option>
                <option value="019">019</option>
            </select>
            <input type="tel" name="phone2" size="4" id="phone2">
            <input type="tel" name="phone3" size="4" id="phone3"><p>

        <button type="button" id="pwdFind" class="pwdinitialization">비밀번호 초기화</button>

    </form>
	

</section>
</body>

	<script>
		
	const pwdinitialization = document.getElementByClass("pwdinitialization");
	
    	if(pwdinitialization){
	   		const text = "비밀번호 초기화 시 임의의 난수 번호로 변경됩니다. 정말 초기화 하시겠습니까? '확인' " ;
	   			pwdinitialization.clieck = function(){
					if(confirm(text) == true){
						document.getElementByClass("pwdinitialization").submit();
					} 
				}
		}
	</script>
	
<br clear="both">
<jsp:include page="../../common/includepage/UserFooter.jsp"/>

</html>
