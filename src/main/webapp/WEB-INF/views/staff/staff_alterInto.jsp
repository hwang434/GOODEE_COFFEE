<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="김세인">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>직원정보 -수정</title>
    <script src="https://kit.fontawesome.com/cccee664d4.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${path}/resources/css/common.css">
    <link rel="stylesheet" href="${path}/resources/css/staff.css">
    <script type="text/javascript" src="${path}/resources/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="${path}/resources/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="${path}/resources/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="${path}/resources/js/prefixfree.min.js"></script>
    <script type="text/javascript" src="${path}/resources/js/common/common.js"></script>
    <script type="text/javascript" src="${path}/resources/js/staff/staff_alterInto.js"></script>
</head>
<body>
    <!-- 헤더 -->
   <header>
        <div id="header_wrapper">
            <div id="logo_image"><!-- <img src="#"> --></div>
            <h1 id="title">직원정보수정</h1>
            <p id="login_name"><span>이름</span> 님</p>
            <p id="login_date">영업일자 :<span>날짜</span></p>
        </div>
    </header>
   	<%@ include file="../gnb_admin.jsp"%>
	<form method="POST" action="staff_alterIntoUpdate" id="alterFrm" name="alterFrm">
		<h2 class="title">직원정보 수정</h2>
		<p class="inputBox">		
			<label for="w_id" class="labelTitle">아이디</label>
			<input type="text" id="w_id" name="w_id" class="infoInput" value="${staffSelect.w_id}" readonly><br>
		</p>
		<p class="inputBox">		
			<label for="w_name" class="labelTitle">이름</label>
			<input type="text" id="w_name" name="w_name" class="infoInput" value="${staffSelect.w_name}"><br>
		</p>
		<p class="inputBox">
			<label for="w_phone" class="labelTitle">휴대전화</label>
			<input type="tel" id="w_phone" name="w_phone" class="infoInput" value="${staffSelect.w_phone}"><br>
		</p>
		<button type="reset" class="resetBtn btn"  name="resetBtn">다시입력</button>
		<button type="button" id="staffInfoAlterBtn" class="btn" name="staffAlterInfoBtn" onclick="alterInto();">정보수정</button>
	</form>
</body>
</html>