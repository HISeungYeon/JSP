<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.lang.Math" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<% Date day=new java.util.Date();%>
   	현재 날짜 : <%=day %><br>
    5의 제곱 : <%=Math.pow(5,2) %>
</body>
</html>