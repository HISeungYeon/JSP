<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript">
	function logincheck(){
		let id = document.getElementById("id").value;
		let passwd = document.getElementById("passwd").value;
		let passwdConfirm = document.getElementById("passwd2").value;
		
		//영문
		let pattern1 = /[a-zA-Z]/;
		//숫자
		let pattern2 = /[0-9]/;
		//특수기호
		let pattern3 = /[~!@\#$%^&*<>]/;
		//아이디 체킹
		if(id.length == 0){
			alert("아이디를 입력해주세요");
			return false;
		}
		//비밀번호 체킹
		if(passwd.length == 0){// 빈칸
			alert("비밀번호를 입력해주세요");
			return false;
		}else{ //값이 있다면 
			if(passwd != passwdConfirm){
				alert("비밀번호가 일치하지 않습니다.")
				return false;
			}
		}
		//영문+숫자+특수기호 8자리 이상 체킹 
		if(!pattern1.test(passwd)||!pattern2.test(passwd)||!pattern3.test(passwd)||
				passwd.length<8||passwd.length>50){
			alert("영문+숫자+특수기호 8자리 이상으로 구성해야 합니다.");
			return false;
		}
		document.loginForm.submit();
	}
</script>
</head>
<body>
	<form name="loginForm" action="validation03_process.jsp"  method="post">
      <p>아이디: <input type="text" name="id" id="id" /></p>
      <p>비밀번호: <input type="text" name="passwd" id="passwd" /></p>
      <p>비밀번호 확인: <input type="text" name="passwd2" id="passwd2" /></p>   
      <p><input type="button" value="전송" onclick="logincheck()"/> </p>
   </form>  
</body>
</html>