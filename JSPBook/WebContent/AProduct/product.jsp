<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="ch04.vo.ProductVO"%>
<%@ page import="java.util.List"%>
<%@ page import="ch04.dao.ProductRepository"%>
<!-- 상품 아이디가 없을 때 exceptionNoProductId.jsp 요청 -->
<%@ page errorPage="exceptionNoProductId.jsp" %>
<!DOCTYPE html>
<%//스크립틀릿 태그 

	String id = request.getParameter("id");

	ProductRepository productRepository = ProductRepository.getInstance();
	//상세보기 => 1행(ProductVO)을 리턴
	//SELECT * FROM PRODUCT WHERE PRODUCT_ID = 'P1235'
	ProductVO productVO = productRepository.getProductById(id);
%>
<c:set var="productVO" value="<%=productVO%>" scope="page" />
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 상세 정보</title>
<script type="text/javascript">

function addToCart(){
	let result = confirm("상품을 장바구니에 추가하시겠습니까?");
	
	if(result){
		console.log("true");
		document.addForm.submit();
	}else{
		console.log("false");
		//초기화!
		document.addForm.reset();
	}
	
}

</script>
</head>
<body>
	
	<fmt:setLocale value="${param.language}"/>
	<fmt:bundle basename="bundle.message">
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<!-- 내용넣기! -->
		<div class="container">
			<h1 class="display-3"><fmt:message key="title" /></h1>
		</div>
	</div>
	<!-- =========== 상품상세 시작!============ -->
	<div class="container">
		<div class="text-right">
			<a href="?id=${param.id}&language=ko">Korea</a> | <a href="?id=${param.id}&language=en">English</a>
		</div>
		<div class="row" align="center">
			<div class="col-md-6">
				<h3>${productVO.pname}</h3>
				<p>${productVO.description}</p>
				<p>
					<b><fmt:message key="productId" /> : </b>
					<span class="badge badge-danger">${productVO.productId}</span>
				</p>
				<p>
					<b><fmt:message key="manufacturer" /></b> : ${productVO.manufacturer}
				</p>
				<p><b><fmt:message key="category" /> </b> : ${productVO.category}</p>
				<p><b><fmt:message key="unitsInStock" /> </b> : ${productVO.unitsInStock}</p>
				<h4>${productVO.unitPrice}원</h4>
				<form name="addForm" action="addCart.jsp?id=${productVO.productId}" method="post">
					<a href="#" class="btn btn-info" onclick="addToCart()"><fmt:message key='productOrder' />&raquo;</a>
					<a href="cart.jsp" class="btn btn-warning">장바구니&raquo;</a>
					<a href="products.jsp" class="btn btn-secondary"><fmt:message key='productList' />&raquo;</a>
				</form>
			</div>
		</div>
	</div>
	<!-- =========== 상품상세 끝 ! =========== -->
	<jsp:include page="footer.jsp" />
	</fmt:bundle>
</body>
</html>