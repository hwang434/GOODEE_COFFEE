<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>아이디</th>
			<th>패스워드</th>
			<th>이름</th>
			<th>이메일</th>
			<th>전화번호</th>
		</tr>
		<c:forEach items="${test}" var="test">
			<tr>
				<td>${test.id}</td>
				<td>${test.pwd}</td>
				<td>${test.name}</td>
				<td>${test.email}</td>
				<td>${test.phone}</td>
				
			</tr>
		</c:forEach>
	</table>
</body>
</html>