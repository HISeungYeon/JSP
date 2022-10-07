<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	현재 시간은 : <%=new Date() %> 입니다. ^▽^
	<%
		response.setIntHeader("Refresh", 1);
	%>
	<p><a href="exam05_data.jsp">Google페이지로 이동하기 !</a></p>
	
</body>
</html>