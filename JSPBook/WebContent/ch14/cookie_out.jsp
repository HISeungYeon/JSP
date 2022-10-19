<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>쿠끼 해제!</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();

	for(int i=0; i<cookies.length; i++){
		cookies[i].setMaxAge(0);
		response.addCookie(cookies[i]);
	}
	response.sendRedirect("ex3.jsp");
%>
</body>
</html>