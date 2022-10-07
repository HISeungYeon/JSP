<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript">
	function CheckForm(){
		let form = document.login
		
		if(form.name.value == ""){
			alert("아이디를 입력해주세요 ✧ `↼´˵")
			return false;
		}else if(form.pw.value == ""){
			alert("비밀번호를 입력해주세요 (╬ Ò ‸ Ó)")
			return false;
		}
		
		if(pw.search(id) > -1){
			alert("비밀번호는 아이디를 포함할 수 없어욤 ✧ `↼´˵")
			return false;
		}
		
		form.submit();
	}
</script>
</head>
<body>
	<form action="exam_process.jsp" name="login" method="post">
		<p> 아이디 : <input type="text" name="id" /> </p>
		<p> 비밀번호 : <input type="password" name="pw" /> </p>
		<p><input type="button" value="전송" onclick="CheckForm()" /> </p>
	</form>
</body>
</html>