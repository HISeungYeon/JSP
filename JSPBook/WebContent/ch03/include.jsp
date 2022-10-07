<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<% Date day=new java.util.Date();%>
    현재시간	: <%=day %>
</body>
</html>