<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>결제화면 POS</title>
    <script src="https://kit.fontawesome.com/cccee664d4.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${path}/resources/css/common.css">
    <link rel="stylesheet" href="${path}/resources/css/payment.css">
    <script type="text/javascript" src="${path}/resources/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="${path}/resources/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="${path}/resources/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="${path}/resources/js/prefixfree.min.js"></script>
    <script>
        $(document).ready(function(){
            $('ul.tab_wrap li').click(function(){
                var tab_id = $(this).attr('data-tab');

                $(this).removeClass('current');
                $('.tab-content').removeClass('current');
                $(this).addClass('current');
              $("#"+tab_id).addClass('current');
            });
        });
    </script>
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
	<%@ include file="../gnb_staff.jsp"%>
	<!-- 본문 -->
	<main>
		<div id="display_wrap">
	        <div id="left">
	            <div id="tab_kind">
	                <nav>
	                    <ul class="tab_wrap">
	                        <li class="tab-link current" data-tab="coffee_menu"><input type="button" value="커피"></li>
	                        <li class="tab-link" data-tab="juice_menu"><input type="button" value="주스"></li>
	                        <li class="tab-link" data-tab="tea_menu"><input type="button" value="차"></li>
	                        <li class="tab-link" data-tab="ade_menu"><input type="button" value="에이드"></li>
	                        <li class="tab-link" data-tab="smoothie_menu"><input type="button" value="스무디"></li>
	                        <li class="tab-link" data-tab="yogurt_menu"><input type="button" value="요거트"></li>
	                    </ul>
	                </nav>
	            </div>
	            <section id="coffee_menu" class="tab-content current">
	                <nav>
	                    <ul>
	                        <li>
	                            <button>
	                                <span>에스프레소(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>에스프레소(L)</span>
	                                <p>4000원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>H.카라멜마끼야또(R)</span>
	                                <p>5100원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>H.카라멜마끼야또(L)</span>
	                                <p>5600원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>에스프레소콘파냐(R)</span>
	                                <p>5100원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>에스프레소콘파냐(L)</span>
	                                <p>5600원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>H.바닐라라떼(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>H.바닐라라떼(L)</span>
	                                <p>4000원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>에스프레소마끼야또(R)</span>
	                                <p>5100원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>에스프레소마끼야또(L)</span>
	                                <p>5600원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>H.카페모카(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>H.카페모카(L)</span>
	                                <p>4000원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>H.미디엄로스팅아메리카노(R)</span>
	                                <p>5100원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>H.미디엄로스팅아메리카노(L)</span>
	                                <p>5600원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>H.화이트모카(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>H.화이트모카(L)</span>
	                                <p>4000원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>H.카페라떼(R)</span>
	                                <p>5100원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>H.카페라떼(L)</span>
	                                <p>5600원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>카푸치노(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>카푸치노(L)</span>
	                                <p>4000원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>아이스아메리카노(R)</span>
	                                <p>4100원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>아이스아메리카노(L)</span>
	                                <p>4600원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>H.카라멜마끼야또(R)</span>
	                                <p>5100원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>H.카라멜마끼야또(L)</span>
	                                <p>5600원</p>
	                            </button>
	                        </li>
	                    </ul>
	                </nav>
	            </section>
	            <section id="juice_menu" class="tab-content">
	                <nav>
	                    <ul>
	                        <li>
	                            <button>
	                                <span>오렌지주스(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>오렌지주스(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>오렌지주스(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>오렌지주스(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>오렌지주스(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>오렌지주스(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>오렌지주스(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>오렌지주스(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                    </ul>
	                </nav>
	            </section>
	            <section id="tea_menu" class="tab-content">
	                <nav>
	                    <ul>
	                        <li>
	                            <button>
	                                <span>허브차(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>허브차(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>허브차(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>허브차(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>허브차(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>허브차(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>허브차(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>허브차(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                    </ul>
	                </nav>
	            </section>
	            <section id="ade_menu" class="tab-content">
	                <nav>
	                    <ul>
	                        <li>
	                            <button>
	                                <span>레몬에이드(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>레몬에이드(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>레몬에이드(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>레몬에이드(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>레몬에이드(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>레몬에이드(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>레몬에이드(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>레몬에이드(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                    </ul>
	                </nav>
	            </section>
	            <section id="smoothie_menu" class="tab-content">
	                <nav>
	                    <ul>
	                        <li>
	                            <button>
	                                <span>딸기스무디(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>딸기스무디(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>딸기스무디(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>딸기스무디(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>딸기스무디(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>딸기스무디(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                    </ul>
	                </nav>
	            </section>
	            <section id="yogurt_menu" class="tab-content">
	                <nav>
	                    <ul>
	                        <li>
	                            <button>
	                                <span>블루베리요거트(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>블루베리요거트(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>블루베리요거트(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>블루베리요거트(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>블루베리요거트(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                        <li>
	                            <button>
	                                <span>블루베리요거트(R)</span>
	                                <p>3500원</p>
	                            </button>
	                        </li>
	                    </ul>
	                </nav>
	            </section>
	            <div id="manage_btn">
	                <div class="main_btn">
	                    <div class="top">
	                        <nav>
	                            <ul>
	                                <li class="reset"><input type="button" value="초기화"></li>
	                                <li><input type="button" value="영수증조회"></li>
	                                <li><input type="button" value="판매내역"></li>
	                            </ul>
	                        </nav>
	                    </div>
	                    <div class="bottom">
	                        <nav>
	                            <ul>
	                                <li><input type="button" value="결제취소"></li>
	                                <li><input type="button" value="개시/마감"></li>
	                                <li><input type="button" value="결제"></li>
	                            </ul>
	                        </nav>
	                    </div>
	                </div>
	                <div class="aside_btn">
	                    <input type="button" value="보류">
	                </div>
	            </div>
	        </div>
	        <div id="right">
	            <div class="selected_menu">
	                <table>
	                    <tr>
	                        <th>상품명</th>
	                        <th>수량</th>
	                        <th>정가</th>
	                        <th>할인</th>
	                        <th>금액</th>
	                    </tr>
	                    <tr>
	                        <td>에스프레소(R)</td>
	                        <td>1</td>
	                        <td>3500</td>
	                        <td>350</td>
	                        <td>3150</td>
	                    </tr>
	                    <tr>
	                        <td>에스프레소콘파냐(L)</td>
	                        <td>2</td>
	                        <td>8000</td>
	                        <td>500</td>
	                        <td>7500</td>
	                    </tr>
	                    <tr>
	                        <td>H.미디엄로스팅아메리카노</td>
	                        <td>1</td>
	                        <td>4300</td>
	                        <td>400</td>
	                        <td>3900</td>
	                    </tr>
	                    <tr>
	                        <td>H.카라멜마끼야또(L)</td>
	                        <td>1</td>
	                        <td>4300</td>
	                        <td>430</td>
	                        <td>3870</td>
	                    </tr>
	                    <tr>
	                        <td>아이스아메리카노(R)</td>
	                        <td>1</td>
	                        <td>4100</td>
	                        <td>410</td>
	                        <td>3690</td>
	                    </tr>
	                    <tr>
	                        <td>에스프레소(R)</td>
	                        <td>1</td>
	                        <td>3500</td>
	                        <td>350</td>
	                        <td>3150</td>
	                    </tr>
	                    <tr>
	                        <td>에스프레소콘파냐(L)</td>
	                        <td>2</td>
	                        <td>8000</td>
	                        <td>500</td>
	                        <td>7500</td>
	                    </tr>
	                    <tr>
	                        <td>H.미디엄로스팅아메리카노</td>
	                        <td>1</td>
	                        <td>4300</td>
	                        <td>400</td>
	                        <td>3900</td>
	                    </tr>
	                    <tr>
	                        <td>H.카라멜마끼야또(L)</td>
	                        <td>1</td>
	                        <td>4300</td>
	                        <td>430</td>
	                        <td>3870</td>
	                    </tr>
	                    <tr>
	                        <td>아이스아메리카노(R)</td>
	                        <td>1</td>
	                        <td>4100</td>
	                        <td>410</td>
	                        <td>3690</td>
	                    </tr>
	                    <tr>
	                        <td>아이스아메리카노(R)</td>
	                        <td>1</td>
	                        <td>4100</td>
	                        <td>410</td>
	                        <td>3690</td>
	                    </tr>
	                    <tr>
	                        <td>아이스아메리카노(R)</td>
	                        <td>1</td>
	                        <td>4100</td>
	                        <td>410</td>
	                        <td>3690</td>
	                    </tr>
	                    <tr>
	                        <td>아이스아메리카노(R)</td>
	                        <td>1</td>
	                        <td>4100</td>
	                        <td>410</td>
	                        <td>3690</td>
	                    </tr>
	                </table>
	            </div>
	            <div class="payment">
	                <div class="total_money">
	                    <p>총금액 : 118000원</p>
	                    <p>할인금액 : 10000원</p>
	                </div>
	                <hr>
	                <div class="calc_money">
	                    <p>받을금액 : 108000원</p>
	                    <p>받은금액 : 110000원</p>
	                    <p>거스름돈 : 2000원</p>
	                </div>
	            </div>
	        </div>
	    </div>
	</main>
    
</body>
</html>