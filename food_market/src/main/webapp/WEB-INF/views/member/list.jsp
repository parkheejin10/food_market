<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member list</title>
</head>
<body>
<table border="1">
	<tr><td>번호</td>
		<td>아이디</td>
		<td>비밀번호</td>
		<td>이름</td>
		<td>이메일</td>
		<td>전화번호</td>
		<td>주소</td>
		<td>생년월일</td>
		<td>판매자</td>
		<td>가입일</td>
		<td>수정일</td></tr>
	<c:forEach items="${memberList}" var="mem">
		<tr><td>${mem.mb_idx }</td>
			<td>${mem.mb_id }</td>
			<td>${mem.mb_pw }</td>
			<td>${mem.mb_name }</td>
			<td>${mem.mb_email }</td>
			<td>${mem.mb_mobile }</td>
			<td>${mem.mb_address }</td>
			<td>${mem.mb_birth }</td>
			<td><c:choose>
			<c:when test="${mem.mb_seller == 0 }">구매자</c:when>
			<c:otherwise>판매자</c:otherwise></c:choose></td>
			<td>${mem.mb_date }</td>
			<td>${mem.mb_rdate }</td></tr>
	</c:forEach>	
</table>

<input type="button" value="home" onclick="location.href='../'">
</body>
</html>