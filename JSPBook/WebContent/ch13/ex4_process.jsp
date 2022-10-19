<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("pw");
	
	if(user_id.equals("hi")&&user_pw.equals("1234")){
		session.setAttribute("id", user_id);
		session.setAttribute("pw", user_pw);
		response.sendRedirect("welcome.jsp");
	}else{
		out.print("로그인 실패!");
	}
%>
</body>
</html>