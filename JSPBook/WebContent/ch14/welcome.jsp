<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>웰컴쿠끼</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();

	if(cookies[0].getValue() == null){
		response.sendRedirect("cookie_out.jsp");
	}else{
		out.print(cookies[0].getValue() + "님 반갑습니다. <br />");
		out.print("<a href='cookie_out.jsp'>로그아웃</a>");
	}
	
	

%>

</body>
</html>