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
	    
	    if(pw!=pwcheck)
	        {
	        alert("비밀번호를 다시 확인해 주세요");
	        return false;
	        }
	    // \d : 숫자를 찾음
	    // \D : 숫자가 아닌 값을 찾음
	    // \w : 알파벳 +숫자+_를 찾음
	    // \W : 알파벳 +숫자+_를 제외한 모든 문자를 찾음.
	    if(/(\w)\1\1/.test(pw))
	        {
	        alert("영문,숫자는 3자 이상 연속 입력 불가능합니다");
	        form.pw.focus();
	        return false;
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