<%@ page contentType="text/html; charset=UTF-8"%>
<%
	session.invalidate(); //모든 세션 정보를 비운다 !!
	response.sendRedirect("addBook.jsp");
%>