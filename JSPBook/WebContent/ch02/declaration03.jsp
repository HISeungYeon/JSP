<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Scription Tag</title>
</head>
<body>
	<%! //선언문 태그 
		//a: 매개변수, String : 리턴 타입!
		String makeItLower(String a){
		//String 타입으로 리턴
		return a.toLowerCase();
	}
	%>
	
	<% 	//스크립틀릿 태그
		//선언문 태그에 선언된 전역 메소드인 makeItLower()를 호출하여
		//hello world로 리턴 받아보쟈
		out.println(makeItLower("Hello World"));
	%>
</body>
</html>