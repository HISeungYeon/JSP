<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@page import="ch04.vo.BookVO"%>
<%@page import="ch04.dao.BookRepository"%>
<%@ page import="java.util.List"%>
<%@ page errorPage="exceptionNoBookId.jsp" %>
<!DOCTYPE html>
<%
	String id = request.getParameter("id").toString(); //수정

	BookRepository bookRepository = BookRepository.getInstance();
	BookVO bookVO = bookRepository.getBookById(id);
%>
<c:set var="bookVO" value="<%=bookVO%>" scope="page" />
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 상세 정보</title>
</head>
<body>
	<!-- 머리글에 해당하는 munu.jsp 파일의 내용을 포함하도록 include액션 태그 작성 -->
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<!-- 내용넣기! -->
		<div class="container">
			<h1 class="display-3">도서 정보</h1>
		</div>
	</div>
	<!-- =========== 상품목록 시작!============ -->
	<div class="container">
		<div class="row" align="center">
			<div class="col-md-6">
				<div>
					<img alt="${bookVO.name}" src="/resources/images/${bookVO.filename}"
					style="width:200px;">
				</div>
				<h3>${bookVO.name}</h3>
				<p>${bookVO.description}</p>
				<p>
					<b>상품 코드 : </b>
					<span class="badge badge-danger">${bookVO.bookId}</span>
				</p>
				<p>
					<b>출판사</b> : ${bookVO.publisher}
				</p>
				<p><b>분류</b> : ${bookVO.category}</p>
				<p><b>재고 수</b> : ${bookVO.unitsInStock}</p>
				<h4>${bookVO.unitPrice}원</h4>
				<p>
					<a href="#" class="btn btn-info">상품주문&raquo;</a>
					<a href="books.jsp" class="btn btn-secondary">상품목록&raquo;</a>
				</p>
			</div>
		</div>
	</div>
	<!-- =========== 상품목록 끝 ! =========== -->
	<jsp:include page="footer.jsp" />
</body>
</html>