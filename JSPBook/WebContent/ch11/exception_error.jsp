<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<title>Exception</title>
</head>
<body>
<div>
	<img src="/resources/images/문상훈넘모기여워.jpg" >
	<p>예외 : <%=exception %></p>
	<p>예외 객체 타입 : <%=exception.toString() %></p>
	<p>예외 객체 타입 : <%=exception.getClass().getName() %></p>
	<p>오류 메세지: <%=exception.getMessage() %></p>
</div>	
</body>
</html>