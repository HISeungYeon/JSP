<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>쿠끼</title>
</head>
<body>
<%
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("pw");
	
	if(user_id.equals("hi")&&user_pw.equals("1234")){
		Cookie cookie_id = new Cookie("user_id", user_id);
		
		response.addCookie(cookie_id);
		
		response.sendRedirect("welcome.jsp");
	}else{
		out.print("로그인할 수 없습니다! <br />");
		out.print("<a href='ex3.jsp'>다시 로그인하기</a>");
	}
%>
</body>
</html>