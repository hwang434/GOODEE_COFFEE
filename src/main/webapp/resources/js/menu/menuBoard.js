//메뉴 추가 내용 비었을 시 submit 방지

$(document).ready(function(){
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

    
