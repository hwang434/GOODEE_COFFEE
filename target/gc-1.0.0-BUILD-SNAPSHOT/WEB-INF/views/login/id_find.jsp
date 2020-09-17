<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="author" content="김세인">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GOODEE CAFE-아이디찾기</title>
    <link rel="stylesheet" href="${path}/resources/css/common.css">
    <link rel="stylesheet" href="${path}/resources/css/id_find.css">
</head>

<body>
    <img src="${path}/resources/images/prevBtn.PNG" alt="이전 화면으로" id="prevBtn">
    <!--outForm-->
    <div id="outForm">
        <div id="logo"><a href="./index.html"><img src="${path}/resources/images/gc_logo1.PNG" alt="구디카페로고"></a></div>
        <h2 id="idFind">아이디찾기</h2>
    </div>
    <!--//outForm-->
    <!--article-->
    <article>
        <!--form-->
        <form action="#" method="get" id="loginFrm" name="loginFrm">
            <div class="userBox">
                <div class="userImg"><img src="${path}/resources/images/userName.PNG" alt="유저이름"></div>
                <input type="text" id="userName" name="userName" class="userInput" placeholder="이름을 입력해주세요">
            </div>
            <div class="userBox">
                <div class="userImg"><img src="${path}/resources/images/userPhone.PNG" alt="유저번호"></div>
                <input type="tel" id="userPhone" name="userPhone" class="userInput"placeholder="전화번호를 입력해주세요">
                <button id="cetriBtn">인증번호 전송</button>
            </div>
            <div class="userBox">
                <div class="userImg"><img src="${path}/resources/images/certi.PNG" alt="인증번호"></div>
                <input type="tel" id="certiNum" name="certiNum" class="userInput" placeholder="인증번호를 입력해주세요">
            </div>
            
            <input type="submit" value="아이디찾기" id="idFindBtn" name="idFindBtn">
        </form>
        <!--//form-->
    </article>
    <!--//article-->
    <!--footer-->
    <footer>

    </footer>
    <!--//footer-->
</body>

</html>