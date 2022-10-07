<%@page import="java.io.PrintWriter"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isErrorPage="true" %>
<!-- 이 JSP 페이지는 error페이지라고 명시!! -->
<!DOCTYPE html>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<h4>errorPage 디렉티브 태그</h4>
	에러 발생!!!!
	<%=exception%>
</body>
</html>