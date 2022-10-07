<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	MultipartRequest multipartRequest = new MultipartRequest(request, "C:\\upload",
			10*1024*1024, "utf-8"); //policy 한글 깨지지 마러라!!
	Enumeration params = multipartRequest.getFileNames();
	
	//폼 필드 내에 객체가 있을때까지 반복 
	//<input type="file" name="filename">
	while(params.hasMoreElements()){
		// 요청 파라미터 이름 : filename
		String file = (String)params.nextElement();	
		// 실제 파일 이름 :
		String original = multipartRequest.getOriginalFileName(file);
		// 저장 파일 이름
		String filename = multipartRequest.getFilesystemName(file);
		// 파일 콘텐츠 유형
		String type = multipartRequest.getContentType(file);
		// 파일 크기
		File files = multipartRequest.getFile(file);
%>	

		<p>요청 파라미터 이름 : <%=file%></p>
		<p>실제 파일 이름 : <%=original%></p>
		<p>저장 파일 이름 : <%=filename%></p>
		<p>파일 콘텐츠 유형 : <%=type%></p>
		<p>파일 크기 : <%=files%></p>

<%		if(files != null){
			out.print("<p>파일 크기 : " + files.length() + "</p>");
		}
		
		
	}

%>



</body>
</html>