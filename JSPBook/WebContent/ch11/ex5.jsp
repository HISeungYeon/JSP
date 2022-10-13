<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form name="loginForm" action="ex5_process.jsp" method="post" >
		<p> ID : <input type="text" name="id" /></p>
		<p> 비밀번호 : <input type="password" name="password" /></p>
		<p><input type="submit" value="로그인" /></p>
	</form>
</body>
</html>