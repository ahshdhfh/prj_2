<%@page import="prj_2.LoginSessionVO"%>
<%@page import="kr.co.sist.util.cipher.DataDecrypt"%>
<%@page import="prj_2.ModifyInfoVO"%>
<%@page import="prj_2.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보 수정</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/main.css">
<style type="text/css">
#container{  height: 1100px;position: relative; }
#footer{  height: 300px;}
#logo{width:202px; height: 54px;position: absolute; left: 128px; top: 13px;}
#div0{position: absolute;width:500px;height:100px;left:360px;top: 60px;}
#divName{position: absolute;width:500px;height:100px;left:360px;top: 130px;}
#divEmail{position: absolute;width:500px;height:100px;left:360px;top: 150px;}
#divLoc2{position: absolute;width:500px;height:100px;left:360px;top: 270px;}
#divTel{position: absolute;width:500px;height:100px;left:360px;top: 500px;}
#divLoc{position: absolute;width:500px;height:100px;left:360px;top: 610px;}
#divBtn{position: absolute;width:500px;height:100px;left:360px;top: 750px;}
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


</head>


<body>
<div class="wrap">

<div class="header">
<%@ include file="../lmh/header.jsp" %>
<% 
if (lsVO == null) {
	  response.sendRedirect("../lmh/login.jsp");
	  return;
	}

	String sessionId=lsVO.getUserId();
	
UserDAO uDAO=new UserDAO();
ModifyInfoVO miVO=uDAO.selectInfo("abcd18");

String email=miVO.getEmail();
String addr=miVO.getAddr();
String detailAddr=miVO.getDetailAddr();
String phone=miVO.getTel();
int actAreaNum=miVO.getActAreaNum();
int zipcode=miVO.getZipcode();

DataDecrypt dd=new DataDecrypt("Tkddydgangnamkong");
String tempEmail=dd.decryption(email);
String email1 = tempEmail.substring(0,tempEmail.lastIndexOf("@"));
String email2 = tempEmail.substring(tempEmail.lastIndexOf("@")+1);

String tel=phone.substring(3,11);
%>
<script type="text/javascript">
$(function() {
	$('#location').val('<%= actAreaNum %>').prop("selected",true);
});//ready

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
            document.getElementById("addr2").focus();
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
	    $("#last_email").attr("readonly",false); //활성화
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
	if(obj.addr2.value==""){
		alert("상세주소를 입력하세요.")
		obj.addr2.focus();
		return;
	}
	if(obj.tel2.value==""){
		alert("전화번호를 입력하세요.")
		obj.tel2.focus();
		return;
	}
	if(obj.actLocalNum.value=="동선택"){
		alert("활동지역을 선택하세요.")
		obj.actLocalNum.focus();
		return;
	}
	
	obj.submit();
	
}//checknull
</script>
</div><!-- header-->
   
<div id="container">
<div id="div0"><h2>개인정보 수정</h2></div>
<form name="frm" id="frm" action="edit_personal_only_process.jsp" method="post">

<div id="divEmail"> 
	<font id="font1">이메일</font><br>
	<input type="text" class="inputBox_email1" value="<%= email1 %>" name="email" id="email"><strong>@</strong>
	<input type="text" id="last_email" size="10" class="inputBox_email2" name="email2" id="email2" value="<%= email2 %>">
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
	<input type="text" id="zipcode" name="zipcode" id="zipcode" value="<%= zipcode %>" readonly="readonly"/>
	<input type="button" class="idBtn" name="addrBtn" value="주소찾기"  onclick="findZip()"/>
	<div>
	<input type="text" id="addr" name="addr" readonly="readonly" id="addr" value="<%= addr %>"/>
	</div>
	<input type="text" id="addr2" name="addr2" id="addr2" value="<%= detailAddr %>">
</div>

<div id="divLoc"> 
	<font id="font1">활동 지역</font><br>
	<select class="inputBox" name="actLocalNum" id="location">
		<option value="동선택">동선택</option>
		<option value="1">압구정동</option>
		<option value="2">신사동</option>
		<option value="3">청담동</option>
		<option value="4">논현동</option>
		<option value="5">삼성동</option>
		<option value="6">역삼동</option>
		<option value="7">대치동</option>
		<option value="8">도곡동</option>
		<option value="9">개포동</option>
		<option value="10">일원동</option>
		<option value="11">수서동</option>
		<option value="12">자곡동</option>
		<option value="13">율현동</option>
		<option value="14">세곡동</option>
	</select>
</div>

<div id="divTel"> 
	<font id="font1">전화번호</font><br>
	<select class="inputBox_tel1" id="tel">
		<option>010</option>
		<option>011</option>
		<option>017</option>
	</select>
	<input type="text" class="inputBox_tel2" value="<%= tel %>" maxlength="8" name="tel2" id="tel2">
</div>
<div id="divBtn"> 
	<input type="button" id="nextBtn" value="개인정보 수정" onclick="checkNull()">
</div>
</form>
</div>
<!-- container -->
     
<div class="footer">
	<c:import url="http://localhost/prj_2/lmh/footer.jsp"/>
</div><!-- footer-->

</div>
</body>
</html>