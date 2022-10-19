<%@page import="java.util.ArrayList"%>
<%@page import="ch04.vo.BookVO"%>
<%@page import="ch04.dao.BookRepository"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

String id = request.getParameter("id");

//id에 값이 없다면..=> 장바구니에 담을 상품이 없다면..
if(id==null || id.trim().equals("")){
	//상품 목록으로 이동
	response.sendRedirect("books.jsp");
	return;
}
	BookRepository dao = BookRepository.getInstance();
	
	BookVO book = dao.getBookById(id);
	if(book == null){
		response.sendRedirect("exceptionNoBookId.jsp");
	}
	
	ArrayList<BookVO> list = (ArrayList<BookVO>)session.getAttribute("cartlist");
	
	if(list == null){
		list = new ArrayList<BookVO>();
		session.setAttribute("cartlist", list);
	}
	
	int cnt = 0;
	
	for(int i=0;i<list.size();i++){
		if(list.get(i).getBookId().equals(id)){
			cnt++;
			list.get(i).setQuantity(list.get(i).getQuantity()+1);			
		}
	}
	if(cnt==0){
		book.setQuantity(1);
		list.add(book);
	}
	
	response.sendRedirect("book.jsp?id="+id);
	
%>