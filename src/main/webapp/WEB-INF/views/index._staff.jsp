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
	<script type="text/javascript">
			$(document).ready(function() {
				printTime();
				setInterval(printTime, 1000);	
			});
			// TODO 보여주는 시간을 서버 시간으로 고칠 것(처음에 한번만 서버 시간을 가져와서 셋팅)
			function printTime() {
				var d = new Date();
				var currentDate = d.getFullYear() + "년 " + ( d.getMonth() + 1 ) + "월 " + d.getDate() + "일"; 
				var currentTime = d.getHours() + "시 " + d.getMinutes() + "분 " + d.getSeconds() + "초"; 
				
				$("#login_date").find("span").html(currentDate+currentTime);
			}
			
	</script>
	<!-- 메인페이지 시작 -->
    <main id="main_index">
        <section class="main_left_section">
        	<a href="#"><div class="main_menu">영업개시</div></a>
        	<a href="#"><div class="main_menu">매출등록</div></a>
        	<a href="#"><div class="main_menu">영업마감</div></a>
        	<a href="#"><div class="main_menu">회원관리</div></a>
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
                <img src="${path}/resources/images/myInfo.PNG" alt="내정보이미지">
            </div>
            <div id="sales_list">
            	<div>매출 요약</div>
            	<div class="info"><span class="info_title">총수량</span><span class="info_num">0</span></div>
                <div class="info"><span class="info_title">총금액</span><span class="info_num">0</span></div>
            </div>
        </section>
    </main>

</body>
</html>