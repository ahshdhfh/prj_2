<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"  href="http://localhost/prj_2/ldk/main.css"/>
<style type="text/css">
#wrap{ width: 510px;height: 310px; margin: 0px auto;}
#idSub{ background: #FFF url('http://211.63.89.142/html_prj/project/img/nick_background.png');
	width: 502px;height: 303px; position: relative;}
#inputId{ position: absolute;width:320px; top:105px; left: 80px}	
#divResult{ position: absolute;top:200px;left:80px;}
#topLabel{position: absolute;top:0px;width: 516px;height: 45px;background-color: #333;font-size: 22px;color: #fff; }
</style>
<script type="text/javascript">
window.onload=function(){
	document.getElementById("btn").addEventListener("click",useId);
}

function sendId( id ){
	//자식창 에서 부모창으로 값 전달 
	// opener - 부모창 : opener.window.document.폼이름.control명.value=값 
	opener.window.document.frm.nick.value=id;
	//자식창 닫기
	self.close();
	
}
window.onload=function(){
	document.getElementById("btn").addEventListener("click",useId);
}
function useId(){
	var obj=document.frm;
	var id = obj.id.value;
	if(validateId(id)){
		document.getElementById("showId").innerHTML=id;
	}else{
		alert("닉네임은 한글만 사용하여 2~8글자 이내로 설정해주세요.");
		obj.id.focus();
		return false;
	}
}

function validateId(id){
	var regex = /^[가-힣]{2,8}$/;
	return regex.test(id);
}

</script>
</head>
<body>
<div id="wrap">
<div id="idSub">
	
	<!--  <div id="topLabel"><br>닉네임 중복확인</div><br>-->
	<div id="inputId">
	<!--<font color="#FF7F27">한글, 영어, 숫자로만 2~8자 이내로 설정해주세요. </font>-->
	<form name="frm">
	<label style="font-size: 20px">닉네임</label>
	<input type="text" id="id" name="id" class="inputBox" autofocus="autofocus"
	value="" placeholder="닉네임">
	<input type="button" value="중복확인" id="btn" class="btnBorder">
	</form>
	</div>
	<div id="divResult">
	'<span id="showId"></span>' 는 사용가능합니다.
	사용하시겠습니까? <a href="javascript:sendId(frm.id.value)">사용</a>
	</div>
</div>

</div>
</body>
