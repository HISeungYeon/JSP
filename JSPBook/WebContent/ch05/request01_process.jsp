<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>

	<%
	request.setCharacterEncoding("UTF-8"); //한글 깨지지 않게 설정 ! 
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
	%>
	
	<p>이름 : <%=name %></p>
	<p>비밀번호 : <%=pw %></p>
	
</body>
</html>