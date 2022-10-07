<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form name="fileForm" method="post" enctype="multipart/form-data" action="exam03_process.jsp">
        <p> 파일: <input type="file" name="filename">
        <p> <input type="submit" value="파일 올리기">
    
    </form>
</body>
</html>