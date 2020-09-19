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
	<script>
		$(function(){$(document).attr("title","GOODEE COFFEE | "+$('#title').html());});
		
	</script>
	
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
			window.onload = function(){
				var dateBtns = document.getElementsByClassName("dateBtn");
				for(var dateBtn of dateBtns){
					dateBtn.addEventListener("click", changeDate);
				}
			}
			
			
			function changeDate(){
				var val= this.getAttribute("value");			//누른 기간 일 수.
				var dateObject = new Date();
				var startDate;									//시작 날짜
				var endDate;									//끝나는 날짜
				var year = dateObject.getFullYear();										//연도
				var month = dateObject.getMonth()+1;										//실제 달(+1 처리된 거)
				var date = dateObject.getDate();										//일
				var dateArr = new Array();
				
				dateArr = changeDateLength(month,date).split("/");
				month = dateArr[0];
				date = dateArr[1];
				endDate = year+"-"+month+"-"+date;
				console.log(endDate);
				
				if(val<30){
					dateObject.setDate(date-val);
					month = dateObject.getMonth()+1;										//실제 달(+1 처리된 거)
					date = dateObject.getDate();										//일
					dateArr = changeDateLength(month,date).split("/");
					month = dateArr[0];										//연도
					date = dateArr[1];										//실제 달(+1 처리된 거)
					startDate = year+"-"+month+"-"+date;
				}else{
					val = val/30;
					month = dateObject.getMonth()+1-val;
					date = dateObject.getDate();										//일
					dateArr = changeDateLength(month,date).split("/");
					month = dateArr[0];										//연도
					date = dateArr[1];										//실제 달(+1 처리된 거)
					startDate = year+"-"+month+"-"+date;
				}		
				
				document.getElementById("startDate").setAttribute("value",startDate);
				document.getElementById("endDate").setAttribute("value",endDate);
				//console.log("changeDate() called");
				//console.log("startdate : "+startDate);
				//console.log("endDate : "+endDate);
				//console.log("val의 타입 : "+typeof(val));
				
				
				
			}
			function changeDateLength(month,date){
				console.log("============changeDateLength("+month+","+date+")===========");
				if(month.toString().length<=1){
					console.log("if문 month 실행");
					month = "0"+(month);
					console.log("수정된 월 : "+month);
				}
				if(date.toString().length<=1){
					console.log("if문 date 실행");
					date = "0"+(date);
				}
				return month+"/"+date;
			}
			
			
			
	</script>
	<!--본문-->
    <main>
        <section id="search_condition">
        	<form method="POST" action="/gc/">
	            <div class="title">조회조건</div>
	            <div class="option_zone_left">
	                <button type="button" id="todayBtn" class="dateBtn" value="1">오늘</button>
	                <button type="button" id="sevenBtn"  class="dateBtn" value="7">7일</button>
	                <button type="button" id="fifteenBtn"  class="dateBtn" value="15">15일</button>
	                <button type="button" id="monthBtn" class="dateBtn" value="30">1개월</button>
	                <button type="button" id="threeMonthBtn" class="dateBtn" value="90">3개월</button>
	                <button type="button" id="sixMonthBtn" class="dateBtn" value="180">6개월</button>
	                <select name="months">
	                    <option value="">월별선택</option>
	                </select>
	                <div class="calander">
	                    <p><input type="date" id="startDate" class="currentDate" value="2020-04-01"/></p>
	                    <span>~</span>
	                    <p><input type="date" id="endDate" class="currentDate"value="2020-04-01"
	                    /></p>
	                </div>
	                <script>
	                    document.getElementsByClassName('currentDate').value = new Date().toISOString().substring(0, 10);
	                </script>
	            </div>
	            <div class="option_zone_right">
	                <p>결제상태:</p>
	                <select name="pay">
	                    <option value="">전체</option>
	                    <option value="정상결제">정상결제</option>
	                    <option value="결제취소">결제취소</option>
	                </select>
	                <p>결제방법:</p>
	                <select name="pa2">
	                    <option value="">전체</option>
	                    <option value="카드">카드</option>
	                    <option value="현금">현금</option>
	                </select>
	            </div>
	            <button type="button" class="click">조회</button>
            </form>
        </section>
        <section id="search_list">
            <table>
                <colgroup>
                    <col width="5%"><!--번호-->
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
