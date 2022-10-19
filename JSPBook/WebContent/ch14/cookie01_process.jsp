<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Cookie</title>
</head>
<body>
<%
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("passwd");

	if(user_id.equals("admin")&&user_pw.equals("1234")){
		//Cookie 객체 생성
		//name은 userID, value는 admin
		Cookie cookie_id = new Cookie("userID", user_id);
		//name은 userPW, value는 1234
		Cookie cookie_pw = new Cookie("userPW", user_pw);
		response.addCookie(cookie_id);
		response.addCookie(cookie_pw);
		out.println("쿠기설정 성공!<br />");
		out.println(user_id + "님 하이욤");
		out.println("<a href='cookie02.jsp'>쿠키 정보 확인</a>");
		
	}else{
		out.println("쿠키 설정 실패!");
	}
%>
</body>
</html>