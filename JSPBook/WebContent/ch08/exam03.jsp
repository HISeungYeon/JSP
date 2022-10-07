<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript">
	function checkForm(){
		let form = document.login
		
	    let pw = form.pw.value;
	    let pwcheck = form.pwcheck.value;
	    if(pw!=pwcheck){
	        alert("비밀번호 다시 확인");
	        return false;
	        }
	    
	    let regExpPw = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
	    
		if(!regExpPw.test(pw)){
			alert("영문, 숫자, 특수기호로 8자리 이상으로 구성하여야 합니다.");
			form.pw.select(); //focus()
			return; //return : J/S 종료
		}
	   
	    form.submit();
		
	}
</script>
</head>
<body>
<form action="exam_process.jsp" name="login" method="post">
	<p>아이디 : <input type="text" name="id"/></p>
	<p>비밀번호 : <input type="password" name="pw"/></p>
	<p>비밀번호 확인 : <input type="password" name="pwcheck"/></p>
	<p><input type="button" value="슝~" onclick="checkForm()"/></p>
</form>
</body>
</html>