<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Scription Tag</title>
</head>
<body>
	<%! //선언문 태그 
		int data = 50;
	%>
	
	<% //스크립틀릿 태그
		//out : jsp 내장 객체. 
		out.println("Value of the variable is : " + data);
	%>
</body>
</html>