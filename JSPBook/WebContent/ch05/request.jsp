<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<!-- process.jsp?name=개똥이 -->
	<!-- ?name=개똥이 => Query string /요청 파라미터 / HTTP파라미터 -->
	<!-- name=roEhddl => request 객체에 들어감  -->
	<form action="process.jsp" method="post">
		<p>
			이름 : <input type="text" name="name" />
			<input type="submit" value="전송" />
		</p>
	</form>
</body>
</html>