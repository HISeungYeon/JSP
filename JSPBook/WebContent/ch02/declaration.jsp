<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%!String getString() {
		return "Hello, Java Server Pages";
	}%>
	
	<h1><% out.println(getString()); %></h1>
	
	
</body>
</html>