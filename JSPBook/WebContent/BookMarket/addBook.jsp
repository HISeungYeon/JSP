<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<script type="text/javascript" src="../resources/js/book.js"></script>
<title>도서 등록</title>
</head>
<body>
	<fmt:setLocale value="${param.language}"/>
	<fmt:bundle basename="bundle.bookMessage">
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<!-- 내용넣기! -->
		<div class="container">
			<h1 class="display-3"><fmt:message key="title" /></h1>
		</div>
	</div>
	<!-- =========== 상품 등록 시작!============ -->
	<div class="container">
		<div class="text-right">
			<a href="?language=ko">Korea</a> | <a href="?language=en">English</a>
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
		</div>
		<form name="newBook" action="processAddBook.jsp" class="form-horizontal" 
		method="post" enctype="multipart/form-data">
			<div class="form-group row">
			 	<label class="col-sm-2"><fmt:message key="bookId" /></label>
			 	<div class="col-sm-3">
			 		<input type="text" id="bookId" name="bookId" class="form-control">
			 	</div>
			</div>
			<div class="form-group row">
			 	<label class="col-sm-2"><fmt:message key="name" /></label>
			 	<div class="col-sm-3">
			 		<input type="text" id="name" name="name" class="form-control">
			 	</div>
			</div>
			<div class="form-group row">
			 	<label class="col-sm-2"><fmt:message key="author" /></label>
			 	<div class="col-sm-3">
			 		<input type="text" id="author" name="author" class="form-control">
			 	</div>
			</div>
			<div class="form-group row">
			 	<label class="col-sm-2"><fmt:message key="unitPrice" /></label>
			 	<div class="col-sm-3">
			 		<input type="text" id="unitPrice" name="unitPrice" class="form-control">
			 	</div>
			</div>
			<div class="form-group row">
			 	<label class="col-sm-2"><fmt:message key="description" /></label>
			 	<div class="col-sm-3">
			 		<textarea id="description" name="description" rows="2" cols="50" class="form-control"></textarea>
			 	</div>
			</div>
			<div class="form-group row">
			 	<label class="col-sm-2"><fmt:message key="publisher" /></label>
			 	<div class="col-sm-3">
			 		<input type="text" id="publisher" name="publisher" class="form-control">
			 	</div>
			</div>
			<div class="form-group row">
			 	<label class="col-sm-2"><fmt:message key="releaseDate" /></label>
			 	<div class="col-sm-3">
			 		<input type="text" id="releaseDate" name="releaseDate" class="form-control">
			 	</div>
			</div>
			<div class="form-group row">
			 	<label class="col-sm-2"><fmt:message key="totalPages" /></label>
			 	<div class="col-sm-3">
			 		<input type="text" id="totalPages" name="totalPages" class="form-control">
			 	</div>
			</div>
			<div class="form-group row">
			 	<label class="col-sm-2"><fmt:message key="category" /></label>
			 	<div class="col-sm-3">
			 		<input type="text" id="category" name="category" class="form-control">
			 	</div>
			</div>
			<div class="form-group row">
			 	<label class="col-sm-2"><fmt:message key="unitsInStock" /></label>
			 	<div class="col-sm-3">
			 		<input type="text" id="unitsInStock" name="unitsInStock" class="form-control">
			 	</div>
			</div>
			<div class="form-group row">
			 	<label class="col-sm-2"><fmt:message key="condition" /></label>
			 	<div class="col-sm-5">
			 		<input type="radio" name="condition" value="New" /> <fmt:message key="condition_New" />
			 		<input type="radio" name="condition" value="Old" /> <fmt:message key="condition_Old" />
			 	</div>
			</div>
			<!-- ch07에서 추가됨(파일업로드) -->
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="bookImeage" /></label>
				<div class="col-sm-5">
<!-- 					파일을 입력받을 수 있음 -->
					<input type="file" name="productImage" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
			 	<div class="col-sm-offset-2 col-sm-10">
			 		<input type="button" class="btn btn-primary" value="<fmt:message key='button' />" onclick="CheckAddBook()" />
			 		<a href="products.jsp" class="btn btn-outline-primary" ><fmt:message key="bookList" /></a>
			 	</div>
			</div>
		</form>
	</div>
	<!-- =========== 상품 등록 끝 ! =========== -->
	<jsp:include page="footer.jsp" />
	</fmt:bundle>
</body>
</html>