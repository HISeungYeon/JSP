<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

	<% Date date = new java.util.Date();%>
	
	<h1>Today : <% out.println(date);%></h1>
</body>
</html>