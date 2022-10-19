<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		//session기본 객체에 저장도니 userID라는 속성 이름에 대응한 값을 가져옴
		//Object 타입으로 리턴되기 때문에 String 타입으로 캐스팅 해야 함.
		String user_id = (String)session.getAttribute("userID");
		String user_pw = (String)session.getAttribute("userPW");
		
		out.println("userID : " + user_id + "<br />");
		out.println("userPW : " + user_pw);
	%>
	
	<p><%=application.getAttribute("user_id")%></p>
</body>
</html>