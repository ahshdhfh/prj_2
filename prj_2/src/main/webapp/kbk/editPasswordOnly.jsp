<%@page import="prj_2.MainProdVO"%>
<%@page import="java.util.List"%>
<%@page import="prj_2.MainProdDAO"%>
<%@page import="prj_2.LoginSessionVO"%>
<%@page import="prj_2.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 수정</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/main.css">
<style type="text/css">
#container{  height: 1800px;position: relative; }
#footer{  height: 300px;}
#logo{width:202px; height: 54px;position: absolute; left: 128px; top: 13px;}
#joinMembership{width:300px; height: 56px; text-align: center; font-size: 37px; font-weight: bold; 
				position: absolute; left: 450px; top: 9px; border: 2px solid #333; border-radius: 10px;color:#5E5E5E}
#div0{position: absolute;width:500px;height:100px;left:360px;top: 60px;}
#divId{position: absolute;width:500px;height:100px;left:360px;top: 130px;}
#divPass{position: absolute;width:500px;height:100px;left:360px;top: 250px;}
#divPass2{position: absolute;width:500px;height:100px;left:360px;top: 370px;}
#divBtn1{position: absolute;width:500px;height:100px;left:360px;top: 490px;}
#font1{font-size:20px;font-family: "고딕"; font-weight:bold; color: #333333; }
#inputBox{width:500px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;font-size: 15px;cursor: pointer;}
#inputBox_id{
    background-color: #ccc;
width:500px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;cursor: default;}
#nextBtn{width:500px;height: 50px;border: 2px solid #333;font-weight:bold;
			 border-radius: 10px;color:#9A58B5;font-size: 20px;cursor: pointer;background-color: #9A58B5;color:#FFF}
a{color: #000000;}
#output1{font-size: 8px; color: red;}
#output2{font-size: 8px; color: green;}
#output3{font-size: 8px; color: red;}
#output4{font-size: 8px; color: green;}
</style>
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
<script type="text/javascript">
function passValid1() {
	var obj= document.frm;
	var pass1=obj.pass1.value;
	if(validatePass(pass1)){
		document.getElementById("output4").innerHTML="조건에 맞습니다!"
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
	var obj= document.frm;
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

function checkNull() {
	var obj=document.frm;
	
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
	
	obj.submit();
	
}//checknull

</script>
</head>




<body>
<div class="wrap">


<div class="header">
<%@ include file="../lmh/header.jsp" %>
</div><!-- header-->
<%
String userId=null;

%>
 <% if ( lsVO == null  ){ 
	 userId=request.getParameter("userId");
 }else{
	 userId=lsVO.getUserId();
 }
%> 
 
<div id="container">
<div id="div0"><h2>비밀번호 수정</h2></div>
<form name="frm" action="editPassword_process.jsp" method="post">
<div id="divId"> 
	<font id="font1">아이디</font><br>
	<input type="text" id="inputBox_id" name="userId" placeholder="아이디" value ="<%= userId %>"readonly>
</div>
<div id="divPass"> 
	<font id="font1">비밀번호</font><br>
	<input type="password" id="inputBox" name="pass1" placeholder="비밀번호 입력" onkeyup="passValid1()" value="asdfasdf">
	<div id="output3" ></div>
	<div id="output4" ></div>
</div>
<div id="divPass2"> 
	<font id="font1">비밀번호 재확인</font><br>
	<input type="password" id="inputBox" name="pass2" placeholder="비밀번호 재입력" onkeyup="passValid2()" value="asdfasdf"><br>
	<div id="output1"></div>
	<div id="output2" ></div>
</div>

<div id="divBtn1"> 
	<input type="button" id="nextBtn" value="비밀번호 수정" onclick="checkNull()">
</div>
</form>

</div><!-- container -->
     
<div class="footer">
	<c:import url="http://localhost/prj_2/lmh/footer.jsp"/>
</div><!-- footer-->

</div>
</body>
</html>