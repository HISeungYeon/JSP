<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>배송 정보</title>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css" />
</head>
<body>
<jsp:include page="menu.jsp"/>

<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">배송 정보</h1>
	</div>
</div>

<div class="container">
	<form action="processShippingInfo.jsp" class="form-horizontal" method="post">
		<input type="hidden" name="cartId" value='<%=request.getParameter("cartId") %>' />
	<div class="form-group row">
		<label class="col-sm-2">성명</label>
		<div class="col-sm-3">
			<input type="text" name="name" class="form-control" required="required"/>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2">배송일</label>
		<div class="col-sm-3">
			<input type="date" name="shippingDate" class="form-control" required="required" />(yyyy-mm-dd)
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2">국가명</label>
		<div class="col-sm-3">
			<input type="text" name="country" class="form-control" required="required" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2">우편번호</label>
		<div class="col-sm-3">
			<input type="text" name="zipCode" class="form-control" required="required" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2">주소</label>
		<div class="col-sm-3">
			<input type="text" name="addressName" class="form-control" required="required" />
		</div>
	</div>
	<div class="form-group row">
		<div class="col-sm-offset-2 col-sm-10">
			<a href="cart.jsp?cartId=<%=request.getParameter("cartId") %>"
				class="btn btn-secondary" role="button">이전</a>
			<input type="submit" class="btn btn-primary" value="등록"/>
			<a href="checkOutCancelled.jsp" class="btn btn-secondary" role="button" >취소</a>
		</div>
	</div>
	</form>
</div>

<!-- -----------------배송정보 끝 ---------------------- -->

<jsp:include page="footer.jsp" />

</body>
</html>