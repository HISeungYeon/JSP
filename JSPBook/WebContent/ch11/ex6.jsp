<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%	//스크립틀릿
	try{
		int num = 10/0;
	}catch(Exception e){
		out.println("오류 발생 : " + e.getMessage());
	}
	%>
</body>
</html>