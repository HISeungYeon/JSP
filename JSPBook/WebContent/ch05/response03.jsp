<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
		//문자 인코딩 설정
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8"); //근데 안쓰는 방식임 ㅇㅁㅇ
		
		//404코드 응답
		response.sendError(404, "개동이 오류 ㅇㅁㅇ!"); //임의로 오류를 발생시킬 수 있음 군데 안씀 ㅋㅅㅋ
	%>
	
	<p>문자 인코딩 : <%=response.getCharacterEncoding() %></p>
	<p>콘텐츠 유형 : <%=response.getContentType()%></p>
</body>
</html>