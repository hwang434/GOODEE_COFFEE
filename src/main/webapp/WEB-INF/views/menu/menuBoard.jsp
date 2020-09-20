<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="auothor" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title></title>
    <script src="https://kit.fontawesome.com/cccee664d4.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${path}/resources/css/common.css">
    <link rel="stylesheet" href="${path}/resources/css/menuBoard.css">
    <script type="text/javascript" src="${path}/resources/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="${path}/resources/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="${path}/resources/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="${path}/resources/js/prefixfree.min.js"></script>
    <script type="text/javascript" src="${path}/resources/js/common/common.js"></script>
    <script type="text/javascript" src="${path}/resources/js/menu/menuBoard.js"></script>
</head>
<body>
   <!-- 헤더 -->
   <header>
      <div id="header_wrapper">
         <div id="logo_image">
            <!-- <img src="#"> -->
         </div>
         <h1 id="title">메뉴관리</h1>
         <p id="login_name">
            <span>이름</span> 님
         </p>
         <p id="login_date">
            영업일자 :<span>날짜</span>
         </p>
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
                         <c:forEach items="${category}" var="category">
                            <li>${category.category_name}<span class="category_sub" onclick="location.href='/gc/menu/categoryDelete?category_name=${category.category_name}'">삭제</span></li>
                         </c:forEach>
                   </ul>
                </div>
                <form action="/gc/menu/categoryInsert" method="POST" id="categoryInsertFrm" name="categoryInsertFrm" onsubmit="return categoryInsert();">
                   <div id="tab2">
                           <!-- 메뉴추가 내용물 넣어야함-->
                        <input name="category_name" type="text" id="categoryInsertText"/>
                        <button type="button" name="categoryInsertBtn" onclick="categoryInsert();">카테고리 추가</button>
                   </div>
                </form>
            </div>
      </section>
      <!-- 메뉴설정 -->
      <section class="menu_setting">
         <form action="/gc/menu/deleteMenu" method="GET"> 
            <c:forEach items="${category}" var="category">
               <div class="menuWrapper">
                  <div class="menu_title">
                     <div class="catagory_title">${category.category_name}</div>
                     <div class="menu_sub"><input id=deleteButton type="submit" value="메뉴 삭제"></div>
                     <div class="menu_add">메뉴 추가</div>
                  </div>
                  <div class="menu_contents">
                     <ul>
                        <c:forEach items="${menuList}" var="menuList">
                           <c:if test="${category.category_no eq menuList.categoryNO}">
                              <li class="menu_label">${menuList.menuName}</li>
                              <input type="checkbox" class="chkMenu" name="menuID" value="${menuList.menuID}"}>         
                           </c:if>
                        </c:forEach>
                     </ul>
                  </div>
               </div>
            </c:forEach>
         </form>
      </section>
   </main>
   <!-- 메뉴 추가 레이어 팝업 제이쿼리 -->
   <div id="pop">
      <h1>메뉴 추가</h1>
      <button class="closePop">닫기</button>
      <form action="/gc/menu/menuInsert" method="GET" id="menuInsertFrm">
         <p class="inputBox">
            <label for="category">카테고리</label>
            <select name="category_no"
               id="category">
               <c:forEach items="${category }" var="category">
                  <option value="${category.category_no }">${category.category_name }</option>
               </c:forEach>
            </select>
         </p>
         <p class="inputBox">
            <label for="menu_name">메뉴이름</label> <input type="text" id="menuName"
               name="menu_name">
         </p>
         <p class="inputBox">
            <label for="price">가격</label> <input type="text" id="menuPrice"
               name="price">
         </p>
         <button type="button" class="menuRegiBtn" onclick="menuCheck();">등&nbsp;&nbsp;록</button>
      </form>
   </div>
   <!-- //메뉴추가 레이어팝업 -->
</body>
</html>