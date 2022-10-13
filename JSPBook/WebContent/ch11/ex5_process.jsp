<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>500</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		if (id.equals("") || password.equals("")){
			throw new ServletException();
		}
		else {
			out.println("id : " + id + " password : " + password);
		}
	%>
</body>
</html>