<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
		String user_id = (String) session.getAttribute("id");

	if (user_id == null) {
		response.sendRedirect("session_out.jsp");
	} else {

		out.print(user_id + "님 반갑습니다. <br />");
		out.print("<a href='session_out.jsp'>로그아웃</a>");

	}
	%>
</body>
</html>