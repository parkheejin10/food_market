<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품상세정보</title>
</head>
<body>
<h2>상품 상세정보</h2>
<table border="1">
<tr>
	<td>
	    <!-- 임의로 사진을 불러오기 위해 경로를 지정함 -->
		<img src="/food_market/images/${vo.product_url }" width="340" height="300">
	</td>
	<td>
		<table border="1" style="height: 300px; width: 400px;">
			<tr align="center">
				<td>상품명</td>
				<td>${vo.product_name }</td>
			</tr>
			<tr align="center">
				<td>가격</td>
				<td>${vo.product_price }</td>
			</tr>
			<tr align="center">
				<td>상품소개</td>
				<td>${vo.product_desc }</td>
			</tr>
			<tr align="center">
				<td colspan ="2">
					<form name="form1" method="post" action="${path }/food_market/product/cart">
						<input type="hidden" name="productid" value="${vo.product_id }">
						<select name="amount">
							<c:forEach begin="1" end="10" var="i">
								<option value="${i }">${i }</option>
							</c:forEach>
						</select>
						<input type="submit" value="장바구니에 담기">
					</form>
					<a href="${path }/food_market/product/list">상품목록</a>
				</td>
				
			</tr>
		</table>
	</td>
</table>
</body>
</html>