<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보수정</title>
<link rel="stylesheet" href="${path}/resources/css/common.css">
<link rel="stylesheet" href="${path}/resources/css/alterInfo.css">
</head>
<body>
	<form method="GET" action="#" id="regiFrm" name="regiFrm">
		<h2>정보수정</h2>
		<p>
			<label for="userId">아이디</label>
			<input type="text" id="userId" name="userId" placeholder="아이디를 디비로 받아오세요" readonly><br>
		</p>
		<p>
			<label for="userPw">비밀번호</label>
			<input type="password" id="userPw" name="userPw" placeholder="변경할 비밀번호를 입력하세요"><br>
		</p>
		<p>		
			<label for="userName">이름</label>
			<input type="text" id="userName" name="userName" placeholder="변경할 이름을 입력하세요"><br>
		</p>
		<p>
			<label for="userPhone">휴대전화</label>
			<input type="tel" id="userPhone" name="userPhone" placeholder="변경할 전화번호를 입력하세요"><br>
		</p>
		<button id="resetBtn" name="resetBtn">다시입력</button>
		<button id="alterInfoBtn" name="regiBtn">정보수정</button>
	</form>
</body>
</html>