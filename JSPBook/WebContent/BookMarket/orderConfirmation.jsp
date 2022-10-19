<%@page import="java.math.BigDecimal"%>
<%@page import="ch04.vo.BookVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String Shipping_cartId = "";
	String Shipping_name = "";
	String Shipping_shippingDate = "";
	String Shipping_country = "";
	String Shipping_zipCode = "";
	String Shipping_addressName = "";
	
	Cookie[] cookies = request.getCookies();
	for(int i=0;i<cookies.length;i++){
		Cookie thisCookie = cookies[i];
		if(thisCookie.getName().equals("Shipping_name")){
			Shipping_name = URLDecoder.decode(thisCookie.getValue());
		}
		if(thisCookie.getName().equals("Shipping_shippingDate")){
			Shipping_shippingDate = URLDecoder.decode(thisCookie.getValue());
		}
		if(thisCookie.getName().equals("Shipping_country")){
			Shipping_country = URLDecoder.decode(thisCookie.getValue());
		}
		if(thisCookie.getName().equals("Shipping_zipCode")){
			Shipping_zipCode = URLDecoder.decode(thisCookie.getValue());
		}
		if(thisCookie.getName().equals("Shipping_addressName")){
			Shipping_addressName = URLDecoder.decode(thisCookie.getValue());
		}
		if(thisCookie.getName().equals("Shipping_cartId")){
			Shipping_cartId = URLDecoder.decode(thisCookie.getValue());
		}
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu.jsp"/>

<div class="jumbotron">
<!-- container : 이 안에 내용이 있다. -->
	<div class="container">
		<h1 class="display-3">주문정보</h1>
	</div>
</div>

<div class="container col-8 alert alert-info">
	<div class="text-center">
		<h1>영수증</h1>
	</div>
	<!-- 고객 정보 시작 : cookie 사용 -->
	<div class="row justify-content-between">
		<strong>배송 주소</strong>
		성명 : <%=Shipping_name %><br />
		우편번호 : <%=Shipping_zipCode %><br />
		주소 : <%=Shipping_addressName %>&nbsp; <%=Shipping_country %> <br />
	</div>
	<div class="col-4" align="right">
		<p>
			<em>배송일 : <%=Shipping_shippingDate %></em> <!-- em : 글씨체 스타일 비스듬이? -->
		</p>
	</div>
	<!-- 고객 정보 끝 -->
	<!-- 상품 정보 시작 : session 사용 -->
	<div>
		<table class="table table-hover">
			<tr>
				<th class="text-center">상품명</th>
				<th class="text-center">#</th>
				<th class="text-center">가격</th>
				<th class="text-center">금액</th>
			</tr>
			<%
				double sum = 0;
			
				//cartlist라는 이름의 장바구니(=세션)
				ArrayList<BookVO> cartList = (ArrayList<BookVO>)session.getAttribute("cartlist");
				//상품 목록을 하나씩 출력해보쟈
				for(int i=0;i<cartList.size();i++){
					//목록에서 상품을 하나 끄집어내쟈
					BookVO book = cartList.get(i);
					//얼마짜리 몇 개를 샀나
					double total = book.getUnitPrice() * book.getQuantity();
					BigDecimal totalBig = new BigDecimal(total);
					//금액 누적
					sum += total;
			%>
			<tr>
				<td class="text-center"><em><%=book.getName() %></em></td>
				<td class="text-center"><%=book.getQuantity() %></td>
				<td class="text-center">
					<fmt:formatNumber value="<%=book.getUnitPrice() %>" pattern="#,###" />원
				</td>
				<td class="text-center">
					<fmt:formatNumber value="<%=totalBig %>" pattern="#,###" />원
				</td>
				
			</tr>
			<%
				}
				BigDecimal bdm = new BigDecimal(sum);
			%>
			<tr>
				<td></td>
				<td></td>
				<td class="text-right"><strong>총액 : </strong></td>
				<td class="text-center text-danger"><strong>
					<fmt:formatNumber value="<%=bdm %>" pattern="#,###" />원
				</strong></td>
			</tr>
		</table>
		<a href="shippingInfo.jsp?cartId=<%=Shipping_cartId%>" class="btn btn-secondary" role="button">이전</a>
		<a href="thankCustomer.jsp" class="btn btn-success" role="button">주문완료</a>
		<a href="checkOutCancelled.jsp" class="btn btn-secondary" role="button">취소</a>
		
	</div>
	<!-- 상품 정보 끝 : session 사용 -->
</div>

<!-- -----------------주문정보 끝 --------------------- -->

<jsp:include page="footer.jsp" />

</body>
</html>