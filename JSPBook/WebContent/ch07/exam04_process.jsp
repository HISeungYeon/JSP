<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%

	String fileUploadPath = "C:\\upload";
	DiskFileUpload upload = new DiskFileUpload();
	
	//업로드 객체 환경설정
	upload.setSizeMax(1000000); 
	upload.setSizeThreshold(4096); 
	upload.setRepositoryPath(fileUploadPath);
	
	List items = upload.parseRequest(request);
	
	Iterator params = items.iterator();
	
	while(params.hasNext()){
		FileItem fileItem = (FileItem)params.next();
		String fileFieldName = fileItem.getFieldName(); //요청 파라미터의 이름(filename)
		String contentType = fileItem.getContentType(); //파일 콘텐츠 유형(MIME 타입)
		long fileSize = fileItem.getSize(); //파일 크기
		//7) 클라이언트에서 업로드할 대상 찾기
		//fileName : C:\\
		String fileName = fileItem.getName();
		fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
		//8) 서버로 업로드
		//c:\\upload + "/" + 박명수.jpg
		// 준비작업 완료
		File file = new File(fileUploadPath + "/" + fileName);
		// 서버로 복사 실행
		fileItem.write(file);
		
		out.print("요청 파라미터 이름 : " + fileFieldName + "<br />"); 
		out.println("저장 파일 이름 : " + fileName + "<br />");
		out.println("파일 콘텐츠 타입 : " + contentType + "<br />");
		out.println("파일 크기 : " + fileSize + "<br />");
	}
	
	
%>

</body>
</html>