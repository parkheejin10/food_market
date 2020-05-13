<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<table border ="1">
<tr>
	<td>번호</td>
	<td>상품이름</td>
	<td>상품가격</td>
	<td>배송비</td>
</tr>
<c:forEach items="${prolist }" var="prolist">
	<tr>
		<td>${prolist.product_id }</td>
		<td>
		<a href="${path}/food_market/product/detail/${prolist.product_id }">
		<img src="/pd/images/${prolist.product_name }" width="100" height="100">
		</a>
		</td>
		<td>
		<a href="${path}/food_market/product/detail/${prolist.product_id }">
		${prolist.product_name }
		</a>
		</td>
		<td>${prolist.product_price }</td>

	</tr>
</c:forEach>
</table>

</body>
</html>
