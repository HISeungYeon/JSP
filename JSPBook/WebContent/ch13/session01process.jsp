<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");
		
		if(user_id.equals("admin")&&user_pw.equals("1234")){
			//session 기본 객체(session scope(영역))의 userID라는 name속성의 값으로 
			//user_id 변수에 들어있는 값 admin이 setting이 됨.
			session.setAttribute("userID", user_id);
			session.setAttribute("userPW", user_pw);
		}else{
			out.println("세션 설정 실패");
		}
	%>
<%-- <c:set var="id" value="<%=user_id %>" scope="application"></c:set> --%>
<%-- 	<p>id : ${id}</p> --%>
</body>
</html>