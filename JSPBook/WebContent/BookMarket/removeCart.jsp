<%@page import="ch04.vo.BookVO"%>
<%@page import="ch04.dao.BookRepository"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String id = request.getParameter("id");
	
	if(id==null || id.trim().equals("")){
		response.sendRedirect("books.jsp");
		return;
	}
	
	BookRepository dao = BookRepository.getInstance();
	BookVO book = dao.getBookById(id);
	if(book == null){ //해당 상품이 없음.
		response.sendRedirect("exceptionNobookId.jsp");
		return;
	}
	
	ArrayList<BookVO> cartlist = (ArrayList<BookVO>)session.getAttribute("cartlist");
	
	for(int i=0;i<cartlist.size();i++){
		if(cartlist.get(i).getBookId().equals(id)){
			cartlist.remove(cartlist.get(i));
		}
	}
	
	//장바구니를 확인해보쟈
	for(BookVO vo : cartlist){
		out.println("<p>vo : " + vo.toString() + "</p>"); 
	}
	
	response.sendRedirect("cart.jsp");
	
%>