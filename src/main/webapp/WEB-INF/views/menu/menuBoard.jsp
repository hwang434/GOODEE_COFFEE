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
   <script>
      $(function(){$(document).attr("title","GOODEE COFFEE | "+$('#title').html());});
      
      //메뉴 추가 내용 비었을 시 submit 방지
      function menuCheck(){
         var menuName = $("#menuName").val();
         var menuNameLength = $("#menuName").val().length;
         var menuPrice = $("#menuPrice").val().length;
         var menuInsertFrm = $("#menuInsertFrm");
         if(menuNameLength>25 || menuNameLength==0 || menuPrice > 5 || menuPrice==0){      //1<=메뉴길이<=24, 0<메뉴가격<=5
            window.alert("메뉴 이름 또는 가격 양식이 틀립니다.");
         }else{
            $.ajax({
                  type: "POST",
                  async: "false",
                  url: "/gc/menu/menuCheck",
                  data: {menuName:menuName},
                  success:function(isMenuExist,textStatus){
                     console.log(isMenuExist);
                     if(isMenuExist=="isDuplicated"){
                        alert("이미 존재하는 메뉴 이름입니다.");
                     }else{
                        menuInsertFrm.submit();
                     }
                  }
              });   
         }
      }
      
      function categoryCheck(){
         var categoryName = $("#categoryInsertText").val();
         var isDuplicated;
         $.ajax({
               type: "POST",
               async: false,
               url: "/gc/menu/categoryCheck",
               data: {categoryName:categoryName},
               success:function(data,textStatus){
                  isDuplicated = data;
                  console.log("ajax data : "+data);
                  console.log("isDuplicated : "+isDuplicated);
               }
           });
         return isDuplicated;
      }
      
      function categoryInsert(){
         var categoryName = $("#categoryInsertText").val();
         if(categoryName==null || categoryName=="" || categoryName.length>25){
            window.alert("카테고리 제목은 1~25자 이내로 작성해주세요.");
            return false;
         }
         var isDuplicated = categoryCheck();
         if(isDuplicated=="false"){
            document.categoryInsertFrm.submit();   
            window.alert("카테고리가 추가되었습니다.");
         }else if(isDuplicated=="isDuplicated"){
            window.alert("이미 존재하는 카테고리 명입니다.");
            return false;
         }
      }
   </script>
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
   <script>
   <!--탭메뉴 제이쿼리-->
      $(document).ready(function() {
         $("#content div").hide();
         $("#tabs li:first").attr("id", "current");
         $("#content div:first").fadeIn();

         $('#tabs a').click(function(e) {
            e.preventDefault();
            $("#content div").hide();
            $("#tabs li").attr("id", "");
            $(this).parent().attr("id", "current");
            $('#' + $(this).attr('title')).fadeIn();
         });
      });
   </script> <!-- 메뉴설정 -->
   <script>
   <!--체크박스 생성 제이쿼리 -->
      $(document).ready(function() {
         $(".menu_sub").click(function() {
            $(this).parent().siblings(".menu_contents").find(".menuList")
            .append('<input type="checkbox" class="menuSubChk">');
         });
         
         //메뉴 삭제 체크 시 메뉴 색깔 바뀌는 제이쿼리문
         
         $(".menu_label").click(function(){
            if($(this).next().is(":checked")==false){
               $(this).next().prop("checked",true);
               console.log("if문");
            }else if($(this).next().is(":checked")==true){
               $(this).next().prop("checked",false);
               console.log("else문");
            }
            
            //메뉴 체크 시 배경색 바꿔줌
            if($(this).next().is(":checked")==true){
               $(this).css({"backgroundColor":"red", "color":"white"});
            }else{
               $(this).css({"backgroundColor":"#F1C40F", "color":"black"});
            }
         });
         
         //선택된 메뉴가 없을 경우
            $(".menu_sub").click(function(){
               //alert($("input:checkbox[name=menuID]:checked").length);
               if($("input:checkbox[name=menuID]:checked").length == 0){
                  alert("선택된 메뉴가 없습니다.");
                  return false;
               }
            });
      });
   </script>
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
   <script>
      $(function() {
         $(".menu_add").click(function() {
            var i = $(this).siblings().eq(0).text();
            console.log();
            $("option:contains("+i+")").prop("selected",true);
            $("#pop").show();
         });
      });
      $(function(){
         $(".closePop").click(function(){
            $("#pop").css("display","none");
         });
      })
      
      
      
   </script>
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