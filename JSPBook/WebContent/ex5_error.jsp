<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<div>
		<p>오류 발생 : 요청 파라미터 값이 없습니다.</p>
		<%@ include file="/ch11/ex5.jsp" %>
		<!-- include => tiles로 대체 (header, aside, bottom,  -->
	</div>
</body>
</html>