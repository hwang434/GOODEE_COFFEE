<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title></title>
    <script src="https://kit.fontawesome.com/cccee664d4.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${path}/resources/css/common.css">
    <link rel="stylesheet" href="${path}/resources/css/salesList.css">
    <script type="text/javascript" src="${path}/resources/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="${path}/resources/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="${path}/resources/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="${path}/resources/js/prefixfree.min.js"></script>
	<script type="text/javascript" src="${path}/resources/js/common/common.js"></script>
	<script type="text/javascript" src="${path}/resources/js/salesList/salesList.js"></script>	
</head>
<body>
    <!-- 헤더 -->
	<header>
        <div id="header_wrapper">
            <div id="logo_image"><!-- <img src="#"> --></div>
            <h1 id="title">매출조회</h1>
            <p id="login_name"><span>이름</span> 님</p>
            <p id="login_date">영업일자 :<span>날짜</span></p>
        </div>
    </header>
	<%@ include file="../gnb_admin.jsp"%>
	<!--본문-->
    <main>
        <section id="search_condition">
        	<form method="GET" action="${path}/selectSaleList" name="selectFrm">
	            <div class="title">조회조건</div>
	            <div class="option_zone_left">
	                <button type="button" id="todayBtn" class="dateBtn" value="1">오늘</button>
	                <button type="button" id="sevenBtn"  class="dateBtn" value="7">7일</button>
	                <button type="button" id="fifteenBtn"  class="dateBtn" value="15">15일</button>
	                <button type="button" id="monthBtn" class="dateBtn" value="30">1개월</button>
	                <button type="button" id="threeMonthBtn" class="dateBtn" value="90">3개월</button>
	                <button type="button" id="sixMonthBtn" class="dateBtn" value="180">6개월</button>
	                <div class="calander">
	                    <span><input type="date" id="startDate" name="open_time" class="currentDate" min="2000-01-01" max="2100-01-01"/>
	                    ~
	                    <input type="date" id="endDate" name="close_time" class="currentDate"  min="2000-01-01" max="2100-01-01"/></span>
	                </div>
	                <script>
	                    document.getElementsByClassName('currentDate').value = new Date().toISOString().substring(0, 10);
	                </script>
	            </div>
	            <div class="option_zone_right">
	                <p>결제상태:</p>
	                <select name="payment_status">
	                    <option value="">전체</option>
	                    <option value="정상결제">정상결제</option>
	                    <option value="결제취소">결제취소</option>
	                </select>
	                <p>결제방법:</p>
	                <select name="payment_method">
	                    <option value="전체">전체</option>
	                    <option value="카드">카드</option>
	                    <option value="현금">현금</option>
	                </select>
	            </div>
	            <button type="button" name="selectBtn" class="click">조회</button>
            </form>
        </section>
        <section id="search_list">
            <table>
                <colgroup>
                    <col width="8%"><!--번호-->
                    <col width="10%"><!--일자-->
                    <col width="5%"><!--시간-->
                    <col width="20%"><!--구매상품-->
                    <col width="5%"><!--수량-->
                    <col width="10%"><!--정상가액-->
                    <col width="10%"><!--할인-->
                    <col width="10%"><!--결제액-->
                    <col width="5%"><!--카드-->
                    <col width="5%"><!--현금-->
                    <col >
                </colgroup>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>일자</th>
                        <th>시간</th>
                        <th>구매상품</th>
                        <th>수량</th>
                        <th>정상가액</th>
                        <th>할인</th>
                        <th>결제액</th>
                        <th>카드</th>
                        <th>현금</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody> 
                    <tr>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                        <td>5</td>
                        <td>6</td>
                        <td>7</td>
                        <td>8</td>
                        <td>9</td>
                        <td>0</td>
                        <td>1</td>
                    </tr>
                </tbody>
                <tfoot>
			        <tr class="sales">
			            <td>매출 합계</td>
			            <td>2</td>
                        <td>3</td>
                        <td>4</td>
                        <td>5</td>
                        <td>6</td>
                        <td>7</td>
                        <td>8</td>
                        <td>9</td>
                        <td>0</td>
                        <td>1</td>
			        </tr>
			    </tfoot>
            </table>
        </section>
    </main>
</body>
</html>
