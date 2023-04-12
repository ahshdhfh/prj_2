<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/ldk/main.css">

<style type="text/css">
#wrap{ width: 1200px; height: 1200px;margin: 0px auto; border:1px solid #333}
#header{  height: 80px; position: relative; border-bottom: 2px solid #5E5E5E}
#container{  height: 1800px;position: relative; }
#footer{  height: 300px;}
#logo{width:202px; height: 54px;position: absolute; left: 128px; top: 13px;}
#joinMembership{width:300px; height: 56px; text-align: center; font-size: 37px; font-weight: bold; 
				position: absolute; left: 450px; top: 9px; border: 2px solid #333; border-radius: 10px;color:#5E5E5E}
#div1{position: absolute;width:500px;height:100px;left:360px;top: 130px;}
#div2{position: absolute;width:500px;height:100px;left:360px;top: 250px;}
#div3{position: absolute;width:500px;height:100px;left:360px;top: 370px;}
#div4{position: absolute;width:500px;height:100px;left:360px;top: 490px;}
#div5{position: absolute;width:500px;height:100px;left:360px;top: 610px;}
#div6{position: absolute;width:500px;height:100px;left:360px;top: 730px;}
#div7{position: absolute;width:500px;height:100px;left:360px;top: 850px;}
#div8{position: absolute;width:500px;height:100px;left:360px;top: 970px;}
#div9{position: absolute;width:500px;height:100px;left:360px;top: 1090px;}
#div10{position: absolute;width:500px;height:100px;left:360px;top: 1190px;}
#div11{position: absolute;width:500px;height:100px;left:360px;top: 1260px;}
#div12{position: absolute;width:500px;height:100px;left:360px;top: 1360px;}
#div13{position: absolute;width:500px;height:100px;left:360px;top: 1480px;}
#div14{position: absolute;width:500px;height:100px;left:360px;top: 1600px;}
#font1{font-size:25px;font-family: "고딕"; font-weight:bold; color: #333333; }
#inputBox, #addr, #addr2{width:500px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;font-size: 15px;cursor: pointer;}
#zipcode{width:230px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;font-size: 15px;cursor: pointer;}
#addrBtn{width:230px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;font-size: 15px;cursor: pointer;}
#inputBox_tel1{width:130px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;font-size: 15px;cursor: pointer;}
#inputBox_tel2{width:350px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;font-size: 15px;cursor: pointer;}
#inputBox_id{width:375px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;cursor: pointer;}
#inputBox_birth{width:150px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;cursor: pointer;}
#inputBox_email1{width:195px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;cursor: pointer;}
#inputBox_email2{width:120px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;cursor: pointer;}
#inputBox_domain{width:150px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;cursor: pointer;}
.idBtn{width:110px;height: 50px;border-radius: 10px;font-size: 15px;
		border: 1px solid #333;cursor: pointer;background-color: #9A58B5;color:#FFF;font-weight: bold;;cursor: pointer;}
#nextBtn{width:500px;height: 50px;border: 2px solid #333;font-weight:bold;
			 border-radius: 10px;color:#9A58B5;font-size: 20px;cursor: pointer;background-color: #9A58B5;color:#FFF}
#output1{font-size: 8px; color: red;}
#output2{font-size: 8px; color: green;}
#output3{font-size: 8px; color: red;}
#output4{font-size: 8px; color: green;}
#output5{font-size: 8px; color: red;}
#output6{font-size: 8px; color: green;}
#output7{font-size: 8px; color: red;}
#output8{font-size: 8px; color: green;}
#output9{font-size: 8px; color: red;}
#output10{font-size: 8px; color: green;}
</style>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
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
            document.getElementById("addr2").focus();
/*
            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
            */
        }
    }).open();
}
function openIdPop(){
	//부모창에서 발생한 값을 자식창에 넘기기 위해 web parameter를 사용한다.
	window.open("popup_id.jsp?id="+document.frm.id.value,"popup","width=520,height=320,top="
			+(window.screenY+100)	+",left="+(window.screenX+100));
}//openIdPop

function openNickPop(){
	//부모창에서 발생한 값을 자식창에 넘기기 위해 web parameter를 사용한다.
	window.open("popup_nick.jsp?id="+document.frm.id.value,"popup","width=520,height=320,top="
			+(window.screenY+100)	+",left="+(window.screenX+100));
}//openNickPop

function passValid1() {
	 var obj=document.frm;
	var pass1=obj.pass1.value;
	if(validatePass(pass1)){
		document.getElementById("output4").innerHTML=""
		document.getElementById("output3").innerHTML=""
	}else{
		document.getElementById("output3").innerHTML="비밀번호는 영문소문자와 숫자를 이용해 8~16 자리 내로 설정하세요."
		document.getElementById("output4").innerHTML=""
	}//end else
}//passValid1

function validatePass(pass){
	var regex = /^[a-z0-9]{8,16}$/;
	return regex.test(pass);
}//validatePass

function passValid2(){
	 var obj=document.frm;
	var pass1=obj.pass1.value;
	var pass2=obj.pass2.value;
	
	if(pass1!=pass2){
		document.getElementById("output1").innerHTML="비밀번호가 일치하지 않습니다."
		document.getElementById("output2").innerHTML=""
	}else{
		document.getElementById("output1").innerHTML=""
		document.getElementById("output2").innerHTML="일치합니다!"
	}//end else 
}//passValid2

function nameValid() {
	 var obj=document.frm;
	var name=obj.name.value;
	if(validateName(name)){
		document.getElementById("output6").innerHTML=""
		document.getElementById("output5").innerHTML=""
	}else{
		document.getElementById("output5").innerHTML="이름 형식이 아닙니다."
		document.getElementById("output6").innerHTML=""
	}//end else
}//nameValid

function validateName(name){
	var regex = /^[가-힣]{2,10}$/;
	return regex.test(name);
}//validatePass

function emailValid() {
	 var obj=document.frm;
	var email=obj.email.value;
	if(validateEMail(email)){
		document.getElementById("output8").innerHTML=""
		document.getElementById("output7").innerHTML=""
	}else{
		document.getElementById("output7").innerHTML="이메일형식이 아닙니다."
		document.getElementById("output8").innerHTML=""
	}//end else
}//passValid

function validateEMail(email){
	var regex = /^[0-9a-zA-Z]{3,20}$/;
	return regex.test(email);
}//validatePass

function telValid() {
	 var obj=document.frm;
	var tel=obj.tel2.value;
	if(validateEMail(tel)){
		document.getElementById("output10").innerHTML=""
		document.getElementById("output9").innerHTML=""
	}else{
		document.getElementById("output9").innerHTML="전화번호형식이 아닙니다."
		document.getElementById("output10").innerHTML=""
	}//end else
}//telValid()

function validateTel(tel2){
	var regex = /^[0-9]{6,8}$/;
	return regex.test(tel2);
}//validatePass

function checkNull() {
	 var obj=document.frm;
	if(obj.id.value==""){
		alert("id를 입력하세요.")
		obj.id.focus();
		return;
	}
	if(obj.pass1.value==""){
		alert("비밀번호를 입력하세요.")
		obj.pass1.focus();
		return;
	}
	if(obj.pass1.value!=obj.pass2.value){
		alert("비밀번호를 확인하세요.")
		obj.pass2.focus();
		return;
	}
	
	if(document.getElementById("output5").innerHTML!=""){//이름 유효성검증 
		alert("이름을 확인하세요")
		obj.name.focus();
		return;
	}
	if(document.getElementById("output7").innerHTML!=""){//이메일 유효성검증 
		alert("이메일을 확인하세요")
		obj.name.email();
		return;
	}
	if(obj.name.value==""){
		alert("이름을 입력하세요.")
		obj.name.focus();
		return;
	}
	if(obj.birthDate.value=="2000-01-01"){
		alert("생년월일을 확인하세요.")
		obj.birthDate.focus();
		return;
	}
	if(obj.email.value==""){
		alert("이메일을 입력하세요.")
		obj.email.focus();
		return;
	}
	if(obj.email2.value=="선택없음"){
		alert("포털사이트를 선택하세요.")
		obj.email2.focus();
		return;
	}
	if(obj.nick.value==""){
		alert("닉네임 입력하세요.")
		obj.nick.focus();
		return;
	}
	if(obj.gender.value=="선택없음"){
		alert("성별을 선택하세요.")
		obj.gender.focus();
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
	if(obj.actLocalNum.value=="동선택"){
		alert("활동지역을 선택하세요.")
		obj.actLocalNum.focus();
		return;
	}
	if(obj.tel2.value==""){
		alert("전화번호를 입력하세요.")
		obj.tel2.focus();
		return;
	}
	if(document.getElementById("output9").innerHTML!=""){//이름 유효성검증 
		alert("전화번호는 숫자만 입력하세요.")
		obj.tel.focus();
		return;
	}
	obj.submit();
	
}//checknull
function selfInput() {
	if($("select[name='email2'] option:selected").text()=="직접입력"){
		$("#div6").append(" <input type='text' id='inputBox_domain' name='email3' style='float:left;' >  ");
	}else if($("select[name='email2'] option:selected").text()!="직접입력"){
		$('input').remove('#inputBox_domain');
	}
}//selfInput

</script>
</head>
<body>
<div class="wrap"> <!-- wrap ( w : 900 x h : 1200) -->
<div id="header">
	<input type="text" id="joinMembership" value="회원가입" readonly="readonly">
	<a href="http://localhost/prj_2/lmh/main_logout.jsp"><img id="logo" alt="logo"  src="http://localhost/prj_2/images/logo.png"></a>
</div>
<form name="frm" action="join_process.jsp" method="post">
<div id="container">

<div id="div1"> 
	<font id="font1">아이디</font><br>
	<input type="text" id="inputBox_id" name="id" placeholder="아이디" value="asdf" onclick="openIdPop()" readonly="readonly">
	<input type="button" class="idBtn" value="중복확인" onclick="openIdPop()">
</div>
<div id="div2"> 
	<font id="font1">비밀번호</font><br>
	<input type="password" id="inputBox" name="pass1" placeholder="비밀번호 입력" onkeyup="passValid1()" value="asdfasdf">
	<div id="output3" ></div>
	<div id="output4" ></div>
</div>
<div id="div3"> 
	<font id="font1">비밀번호 재확인</font><br>
	<input type="password" id="inputBox" name="pass2" placeholder="비밀번호 재입력" onkeyup="passValid2()" value="asdfasdf"><br>
	<div id="output1" name="output1" ></div>
	<div id="output2" ></div>
</div>
<div id="div4"> 
	<font id="font1">이름</font><br>
	<input type="text" id="inputBox" placeholder="이름" name="name" onkeyup="nameValid()" value="이단군">
	<div id="output5" ></div>
	<div id="output6" ></div>
</div>

<div id="div5"> 
	<font id="font1">생년월일</font><br>
	 <input type="date"
         id="inputBox"
         name="birthDate"
         max="2023-12-31"
         min="1900-01-01"
         value="2023-04-04">
	
</div>
<div id="div6"> 
	<font id="font1" >이메일</font><br>
	<input type="text" id="inputBox_email1" placeholder="이메일" name="email"onkeyup="emailValid()" value="asdf" style='float:left;'><strong style='float:left; margin-top: 17px;'><big>@</big></strong>
	<select id="inputBox_email2" name ="email2" onchange="selfInput()" style='float:left; height: 56px' >
		<option value="선택없음">선택없음</option>
		<option value="직접입력">직접입력</option>
		<option value="google" selected="selected">google.com</option>
		<option value="naver">naver.com</option>
		<option value="nate">nate.com</option>
		<option value="daum">daum.net</option>
	</select>
</div>
	<div id="output7" ></div>
	<div id="output8" ></div>
<div id="div7"> 
	<font id="font1">닉네임</font><br>
	<input type="text" id="inputBox_id" name="nick" placeholder="닉네임"  onclick="openNickPop()" readonly="readonly" value="이단군">
	<input type="button" class="idBtn" value="중복확인"  onclick="openNickPop()">
</div>
<div id="div8"> 
	<font id="font1">성별</font><br>
	<select id="inputBox" name="gender">
		<option value="선택없음">선택없음</option>
		<option value="남자" selected="selected">남자</option>
		<option value="여자">여자</option>
	</select>
</div>
<div id="div9"> 
	<font id="font1">주소</font><br>
	<input type="text" id="zipcode" name="zipcode" placeholder="우편번호" readonly="readonly" value="A">
	<input type="button" class="idBtn" name="addrBtn" value="주소찾기"  onclick="findZip()">
</div>
<div id="div10"> 
	<input type="text" id="addr" name="addr" placeholder="주소" readonly="readonly">
</div>
<div id="div11"> 
	<input type="text" id="addr2" name="addr2" placeholder="상세주소" value="A">
</div>
<div id="div12"> 
	<font id="font1">활동지역</font><br>
	<select id="inputBox" name="actLocalNum">
		<option value="동선택">동선택</option>
		<option value="압구정동" selected="selected">압구정동</option>
		<option value="신사동">신사동</option>
		<option value="청담동">청담동</option>
		<option value="논현동">논현동</option>
		<option value="삼성동">삼성동</option>
		<option value="역삼동">역삼동</option>
		<option value="대치동">대치동</option>
		<option value="도곡동">도곡동</option>
		<option value="개포동">개포동</option>
		<option value="일원동">일원동</option>
		<option value="수서동">수서동</option>
		<option value="자곡동">자곡동</option>
		<option value="율현동">율현동</option>
		<option value="세곡동">세곡동</option>
	</select>
</div>
<div id="div13"> 
	<font id="font1">전화번호</font><br>
	<select id="inputBox_tel1" name="tel1">
		<option value ="010" selected="selected">010</option>
		<option value ="011">011</option>
		<option value ="017">017</option>
	</select>
	<input type="text" id="inputBox_tel2" name="tel2" placeholder="-없이 입력" maxlength="8" value="12345678" onkeyup="telValid()">
	<div id="output9" ></div>
	<div id="output10" ></div>
</div>
<div id="div14"> 
	<input type="button" id="nextBtn" value="가입하기" onclick="checkNull()">
</div>
</div>
</form>

<div class="footer">
      <hr class="hr_footer">
      
      <div class="footer_text">
        대표 4조 | 사업자번호 123-45-67890<br>
        직업정보제공사업 신고번호 2023-서울강남-0000<br>
        주소 서울 강남구 테헤란로 132 (강남콩서비스)<br>
        전화 1234-1234 | 고객문의 cs@gangnamkongservice.com<br>
       </div>
       
      <!-- <div class="inquiry1">
        <a href="#void"  class="a_footer"">제휴문의</a>
       </div> 
       
        <div class="inquiry2">
        <a href="#void"  class="a_footer"">광고문의</a>
       </div> 
       
       <div class="inquiry3">
        <a href="#void"  class="a_footer"">PR문의</a>
       </div> 
       
        <div class="inquiry4">
        <a href="#void"  class="a_footer"">IR문의</a>
       </div> 
   
       <div class="inquiry5">
        <a href="#void"  class="a_footer"">이용약관</a>
       </div> 
       
       <div class="inquiry6">
        <a href="#void"  class="a_footer"">개인정보처리방침</a>
       </div> 
       
       <div class="inquiry7">
        <a href="#void"  class="a_footer"">이용자보호</a>
       </div> 
       
       <div class="inquiry8">
        <a href="#void"  class="a_footer"">비전과계획</a>
       </div> -->
   </div><!-- footer-->
</div>
</body>
</html>