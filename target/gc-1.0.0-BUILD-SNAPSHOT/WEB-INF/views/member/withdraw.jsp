<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원삭제</title>
<link rel="stylesheet" href="${path}/resources/css/common.css">
<link rel="stylesheet" href="${path}/resources/css/withdraw.css">

</head>
<body>
	<form method="GET" action="#" id="regiFrm" name="regiFrm">
		<h2>회원탈퇴</h2>
		<p>
			<label for="userId">아이디</label>
			<input type="text" id="userId" name="userId" placeholder="아이디를 입력하세요"><br>
		</p>
		<p>
			<label for="userPw">비밀번호</label>
			<input type="password" id="userPw" name="userPw" placeholder="비밀번호를 입력하세요"><br>
		</p>
		<button id="resetBtn" name="resetBtn">취소</button>
		<button id="withdrawBtn" name="regiBtn">회원탈퇴</button>
	</form>
</body>
</html>