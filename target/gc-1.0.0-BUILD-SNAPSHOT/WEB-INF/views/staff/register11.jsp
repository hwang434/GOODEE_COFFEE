<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="auothor" content="박가연">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title></title>
    <script src="https://kit.fontawesome.com/cccee664d4.js" crossorigin="anonymous"></script>
   
    <link rel="stylesheet" href="${path}/resources/css/register.css">
     <link rel="stylesheet" href="${path}/resources/css/common.css">
    <script type="text/javascript" src="${path}/resources/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="${path}/resources/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="${path}/resources/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="${path}/resources/js/prefixfree.min.js"></script>
	<script>
		$(function(){$(document).attr("title",$('#title').html());});
	</script>
</head>
<body>

     <!-- 헤더 -->
	<header>
        <div id="header_wrapper">
            <div id="logo_image"><!-- <img src="#"> --></div>
            <h1 id="title">직원등록</h1>
            <p id="login_name"><span>이름</span> 님</p>
            <p id="login_date">영업일자 :<span>날짜</span></p>
        </div>
    </header>
	<form method="GET" action="#" id="regiFrm" name="regiFrm">
		<h2>직원등록</h2>
		<p>
			<label for="userId">아이디</label>
			<input type="text" id="userId" name="userId" placeholder="아이디를 입력하세요"><br>
		</p>
		<p>
			<label for="userPw">비밀번호</label>
			<input type="password" id="userPw" name="userPw" placeholder="비밀번호를 입력하세요"><br>
		</p>
		<p>		
			<label for="userName">이름</label>
			<input type="text" id="userName" name="userName" placeholder="이름을 입력하세요"><br>
		</p>
		<p>
			<label for="userPhone">휴대전화</label>
			<input type="tel" id="userPhone" name="userPhone" placeholder="전화번호를 입력하세요"><br>
		</p>
		
		<button id="resetBtn" name="resetBtn">다시입력</button>
		<button id="regiBtn" name="regiBtn">직원등록</button>
	</form>
</body>
</html>