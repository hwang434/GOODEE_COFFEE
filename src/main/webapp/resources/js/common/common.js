$(document).ready(function() {
   printTime();
   setInterval(printTime, 1000);
   $(function(){$(document).attr("title","GOODEE COFFEE | "+$('#title').html());});
});
 // TODO 보여주는 시간을 서버 시간으로 고칠 것(처음에 한번만 서버 시간을 가져와서 셋팅)
function printTime() {
   var d = new Date();
   var currentDate = d.getFullYear() + "년 " + ( d.getMonth() + 1 ) + "월 " + d.getDate() + "일"; 
   var currentTime = d.getHours() + "시 " + d.getMinutes() + "분 " + d.getSeconds() + "초"; 
   $("#login_date").find("span").html(currentDate+currentTime);
}