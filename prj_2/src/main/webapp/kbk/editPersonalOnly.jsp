<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보 수정</title>

<link rel="stylesheet" type="text/css" href="http://211.63.89.134/html_prj/project/main.css">
<style type="text/css">
#container{  height: 1300px;position: relative; }
#footer{  height: 300px;}
#logo{width:202px; height: 54px;position: absolute; left: 128px; top: 13px;}
#div0{position: absolute;width:500px;height:100px;left:360px;top: 60px;}
#divName{position: absolute;width:500px;height:100px;left:360px;top: 130px;}
#divEmail{position: absolute;width:500px;height:100px;left:360px;top: 250px;}
#divLoc2{position: absolute;width:500px;height:100px;left:360px;top: 370px;}
#divTel{position: absolute;width:500px;height:100px;left:360px;top: 600px;}
#divLoc{position: absolute;width:500px;height:100px;left:360px;top: 710px;}
#divBtn{position: absolute;width:500px;height:100px;left:360px;top: 850px;}
#font1{font-size:20px;font-family: "고딕"; font-weight:bold; color: #333333; }
#inputBox, #addr, #addr2{width:500px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;font-size: 15px;cursor: pointer;}
#zipcode{width:230px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;font-size: 15px;cursor: pointer;}
#addrBtn{width:230px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;font-size: 15px;cursor: pointer;}
.inputBox{width:500px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;font-size: 15px;cursor: pointer;}
.inputBox_id{ background-color: #ccc; width:500px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;cursor: default;}
.inputBox_tel1{width:130px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;font-size: 15px;cursor: pointer;}
.inputBox_tel2{width:350px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;font-size: 15px;cursor: pointer;}
.inputBox_email1{width:150px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;cursor: pointer;}
.inputBox_email2{width:150px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;cursor: pointer;}
#nextBtn{width:500px;height: 50px;border: 2px solid #333;font-weight:bold;
			 border-radius: 10px;color:#9A58B5;font-size: 20px;cursor: pointer;background-color: #9A58B5;color:#FFF}
.idBtn{width:110px;height: 50px;border-radius: 10px;font-size: 15px;
		border: 1px solid #333;cursor: pointer;background-color: #9A58B5;color:#FFF;font-weight: bold;;cursor: pointer;}			 
</style>
<!-- jQuery CDN 시작 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
<script type="text/javascript">
function findZip() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("zipcode").value = data.zonecode;
            document.getElementById("addr").value = roadAddr;
            //커서 상세주소입력으로 이동
            document.getElementById("detailed_Addr").focus();
        }
    }).open();
}


/* function emailValid() {
	var obj= document.frm;
	var email=obj.email.value;
	if(validateEMail(email)){
		document.getElementById("output8").innerHTML="조건에 맞습니다!"
		document.getElementById("output7").innerHTML=""
	}else{
		document.getElementById("output7").innerHTML="이메일형식이 아닙니다."
		document.getElementById("output8").innerHTML=""
	}//end else
}//passValid */

function validateEMail(email){
	var regex = /^[0-9a-zA-Z]{3,20}$/;
	return regex.test(email);
}//validatePass

$(function(){
	  $('#email_select').change(function(){
	   if($('#email_select').val() == "1"){
	    $("#last_email").val(""); //값 초기화
	    $("#last_email").attr("readonly",true);
	   } else if($('#email_select').val() == ""){
	    $("#last_email").val(""); //값 초기화
	    $("#last_email").attr("readonly",true); //textBox 비활성화
	   } else {
	    $("#last_email").val($('#email_select').val()); //선택값 입력
	    $("#last_email").attr("readonly",true); //비활성화
	   }
	  });
	 });

function checkNull() {
	var obj=document.frm;
/* 	
	if(document.getElementById("output7").innerHTML!=""){//이메일 유효성검증 
		alert("이메일을 확인하세요")
		obj.name.email();
		return;
	}
 */	
	if(obj.email.value==""){
		alert("이메일을 입력하세요.")
		obj.email.focus();
		return;
	}
	if(obj.email2.value==""){
		alert("포털사이트를 선택하세요.")
		obj.email_select.focus();
		return;
	}
	if(obj.zipcode.value==""){
		alert("주소를 입력하세요.")
		obj.addrBtn.focus();
		return;
	}
	if(obj.detailed_Addr.value==""){
		alert("상세주소를 입력하세요.")
		obj.detailed_Addr.focus();
		return;
	}
	if(obj.acti_Area_Num.value=="동선택"){
		alert("활동지역을 선택하세요.")
		obj.acti_Area_Num.focus();
		return;
	}
	if(obj.tel2.value==""){
		alert("전화번호를 입력하세요.")
		obj.tel2.focus();
		return;
	}
	if(document.getElementById("output9").innerHTML!=""){//이름 유효성검증 
		alert("전화번호를 확인하세요")
		obj.name.email();
		return;
	}
	
	obj.submit();
}//checknull

</script>

</head>


<body>
<div class="wrap">

<div class="header">
       <!-- <div class="logo"> -->
       <a href="http://localhost/prj_2/lmh/main_login.jsp"><img class="logo" src="http://localhost/prj_2/images/logo.png"></a>
       <!-- </div> -->
       
       <div class="search_area">
       <input type="search" class="search" placeholder="물품을 검색해 보세요">
       </div><!-- search-->
       
      

 <% request.setCharacterEncoding("UTF-8"); //post 방식의 한글 처리 : request.setCharacterEncoding("변경할 charset");
String id=request.getParameter("id"); %>


       <div class="div_select_login"> 
         <select class="select_login" onchange="window.location.href=this.value">
             <option value="이름"  hidden><%=id %> 님</option>
             <option value="http://localhost/prj_2/kbk/mypage.jsp" >나의 마켓</option>
             <option value="http://localhost/prj_2/cis/sell_page.jsp">상품 등록</option>
             <option value="http://localhost/prj_2/kbk/editInfoPassword.jsp">개인정보수정</option>
         </select> 
       </div>
       

       <div class="logout">
         <a href="http://localhost/prj_2/lmh/main_logout.jsp" class="a_login" >로그아웃</a>
       </div>
  </div><!-- header-->
   
<div id="container">
<div id="div0"><h2>개인정보 수정</h2></div>
<form name="frm" id="frm" action="http://localhost/prj_2/kbk/mypage.jsp" method="post">
<div id="divName"> 
	<font id="font1">이름</font><br>
	<input type="text" class="inputBox_id" placeholder="이름" readonly id="name" name="user_Name">
</div>

<div id="divEmail"> 
	<font id="font1">이메일</font><br>
	<input type="text" class="inputBox_email1" placeholder="이메일" name="email" id="email"><strong>@</strong>
	<input type="text" id="last_email" size="10" class="inputBox_email2" name="email2" id="email2">
	<select class="inputBox_email2" id="email_select" name="email_select">
		<option value="" selected>선택없음</option>
		<option value="gmail.com">gmail.com</option>
		<option value="naver.com">naver.com</option>
		<option value="nate.com">nate.com</option>
		<option value="daum.net">daum.net</option>
		<option value="hotmail.com">hotmail.com</option>
		<option value="1">직접 입력</option>
	</select>
	
</div>

<div id="divLoc2"> 
	<font id="font1">주소</font><br>
	<input type="text" id="zipcode" name="zipcode" id="zipcode" placeholder="우편번호" readonly="readonly"/>
	<input type="button" class="idBtn" name="addrBtn" value="주소찾기"  onclick="findZip()"/>
	<div>
	<input type="text" id="addr" name="addr" placeholder="주소" readonly="readonly" id="addr"/>
	</div>
	<input type="text" id="addr2" name="detailed_Addr" placeholder="상세주소" id="addr2">
</div>

<div id="divLoc"> 
	<font id="font1">활동 지역</font><br>
	<select class="inputBox" name="acti_Area_Num" id="location">
		<option value="동선택">동선택</option>
		<option>압구정동</option>
		<option>신사동</option>
		<option>청담동</option>
		<option>논현동</option>
		<option>삼성동</option>
		<option>역삼동</option>
		<option>대치동</option>
		<option>도곡동</option>
		<option>개포동</option>
		<option>일원동</option>
		<option>수서동</option>
		<option>자곡동</option>
		<option>율현동</option>
		<option>세곡동</option>
	</select>
</div>

<div id="divTel"> 
	<font id="font1">전화번호</font><br>
	<select class="inputBox_tel1" id="tel">
		<option>010</option>
		<option>011</option>
		<option>017</option>
	</select>
	<input type="text" class="inputBox_tel2" placeholder="-없이 입력" maxlength="8" name="tel2" id="tel2">
</div>
<div id="divBtn"> 
	<input type="button" id="nextBtn" value="개인정보 수정" onclick="checkNull()">
</div>
</form>
</div>
<!-- container -->
     
<div class="footer">
      <hr class="hr_footer">
      
      <div class="footer_text">
        대표 4조 | 사업자번호 123-45-67890<br>
        직업정보제공사업 신고번호 2023-서울강남-0000<br>
        주소 서울 강남구 테헤란로 132 (강남콩서비스)<br>
        전화 1234-1234 | 고객문의 cs@gangnamkongservice.com<br>
       </div>
       
   </div><!-- footer-->

</div>
</body>
</html>