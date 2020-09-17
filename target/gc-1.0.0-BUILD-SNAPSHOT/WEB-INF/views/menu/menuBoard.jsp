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
    <link rel="stylesheet" href="${path}/resources/css/common.css">
    <link rel="stylesheet" href="${path}/resources/css/menuBoard.css">
    <script type="text/javascript" src="${path}/resources/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="${path}/resources/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="${path}/resources/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="${path}/resources/js/prefixfree.min.js"></script>
	<script>
		$(function(){$(document).attr("title","GOODEE COFFEE | "+$('#title').html());});
	</script>
</head>
<body>

     <!-- 헤더 -->
	<header>
        <div id="header_wrapper">
            <div id="logo_image"><!-- <img src="#"> --></div>
            <h1 id="title">메뉴관리</h1>
            <p id="login_name"><span>이름</span> 님</p>
            <p id="login_date">영업일자 :<span>날짜</span></p>
        </div>
    </header>
	<%@ include file="../gnb_admin.jsp"%>
	<!-- 메인 -->
	<main>
		<!-- 카테고리 관리 -->
        <section id="category">
            <ul id="tabs">
                <li><a href="#" title="tab1">카테고리 변경</a></li>
                <li><a href="#" title="tab2">카테고리 추가</a></li>   
            </ul>
            <div id="content"> 
                <div id="tab1">
                   <ul>
                   		<li>카테고리 제목</li>
                   		<li>카테고리 제목</li>
                   		<li>카테고리 제목</li>
                   		<li>카테고리 제목</li>
                   		<li>카테고리 제목</li>
                   		<li>카테고리 제목</li>
                   		<li>카테고리 제목</li>
                   		<li>카테고리 제목</li>
                   		<li>카테고리 제목</li>
                   		<li>카테고리 제목</li>
                   </ul>
                </div>
                <div id="tab2">
                  		<!-- 메뉴추가 내용물 넣어야함-->
                  	<input type="text"/>
                  	<button type="submit">카테고리 추가</button>
                </div>
            </div>
		</section>
		<script><!--탭메뉴 제이쿼리-->
	           $(document).ready(function() {
	               $("#content div").hide(); 
	               $("#tabs li:first").attr("id","current"); 
	               $("#content div:first").fadeIn(); 
	               
	               $('#tabs a').click(function(e) {
	                   e.preventDefault();        
	                   $("#content div").hide();
	                   $("#tabs li").attr("id",""); 
	                   $(this).parent().attr("id","current"); 
	                   $('#' + $(this).attr('title')).fadeIn(); 
	               });
	           })();
	    </script>
		<!-- 메뉴설정 -->
		<section class="menu_setting">
			 <div class="menu_title">
			 	<div class="catagory_title">카테고리 제목</div>
			 	<div class="menu_sub">메뉴 삭제</div>
			 	<div class="menu_add">메뉴 추가</div>
			 </div>
			 <div  class="menu_contents">
			 	<ul>
			 		<li>메뉴 목록</li>
			 		<li>메뉴 목록</li>
			 		<li>메뉴 목록</li>
			 	</ul>
			 </div>
		
		</section>
		<section class="menu_setting">
			 <div class="menu_title">
			 	<div class="catagory_title">카테고리 제목</div>
			 	<div class="menu_sub">메뉴 삭제</div>
			 	<div class="menu_add">메뉴 추가</div>
			 </div>
			 <div class="menu_contents">
			 	<ul>
			 		<li>메뉴 목록</li>
			 		<li>메뉴 목록</li>
			 		<li>메뉴 목록</li>
			 	</ul>
			 </div>
		
		</section>
		<section class="menu_setting">
			 <div class="menu_title">
			 	<div class="catagory_title">카테고리 제목</div>
			 	<div class="menu_sub">메뉴 삭제</div>
			 	<div class="menu_add">메뉴 추가</div>
			 </div>
			 <div  class="menu_contents">
			 	<ul>
			 		<li>메뉴 목록</li>
			 		<li>메뉴 목록</li>
			 		<li>메뉴 목록</li>
			 	</ul>
			 </div>
		
		</section>
		<section class="menu_setting">
			 <div class="menu_title">
			 	<div class="catagory_title">카테고리 제목</div>
			 	<div class="menu_sub">메뉴 삭제</div>
			 	<div class="menu_add">메뉴 추가</div>
			 </div>
			 <div  class="menu_contents">
			 	<ul>
			 		<li>메뉴 목록</li>
			 		<li>메뉴 목록</li>
			 		<li>메뉴 목록</li>
			 	</ul>
			 </div>
		</section>
		
	</main>

</body>
</html>