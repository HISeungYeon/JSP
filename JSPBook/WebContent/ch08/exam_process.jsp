<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%

	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>

<h3> 로그인 성공 !! ҉ ٩(๑>ω<๑)۶҉ </h3>
<p>아이디는 <%=id%> 이고요</p>
<p>비밀번호는 <%=pw%> 입니당 </p>
</body>
</html>