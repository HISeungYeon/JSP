<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
%>

<p><%=id %>님 로그인을 성공했습니다</p>
</body>
</html>