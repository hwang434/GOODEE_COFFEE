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
    <title>Goodee Coffee</title>
    <script src="https://kit.fontawesome.com/cccee664d4.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${path}/resources/css/common.css">
    <link rel="stylesheet" href="${path}/resources/css/index.css">
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
            <h1 id="title">GOODEE COFFEE</h1>
            <p id="login_name"><span>이름</span> 님</p>
            <p id="login_date">영업일자 :<span>날짜</span></p>
        </div>
    </header>
	
	<!-- 메인페이지 시작 -->
    <main id="main_index">
        <section class="main_left_section">
        	<a href="#"><div class="main_menu">매출조회</div></a>
        	<a href="#"><div class="main_menu">메뉴관리</div></a>
        	<a href="#"><div class="main_menu">직원추가</div></a>
        	<a href="#"><div class="main_menu">직원삭제</div></a>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </section>
        <section class="main_right_section">
            <div id="my_info">
                <div>내 정보</div>
            </div>
            <div id="sales_list">
            	<div>매출 요약</div>
            </div>
        </section>
    </main>

</body>
</html>