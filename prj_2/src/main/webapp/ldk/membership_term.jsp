<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 약관</title>
<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/ldk/main.css">

<style type="text/css">
#wrap{ width: 1200px; height: 1400px;margin: 0px auto;}
#header{  height: 80px; position: relative; border-bottom: 2px solid #5E5E5E}
#container{  height: 900px;position: relative; }
/* container에 position:relative가 설정되었고  container의 자식 div인 
loginBox는 container의 시작점이 loginBox의 시작좌표가된다.
  */

#footer{  height: 300px;}
#joinMembership{width:300px; height: 56px; text-align: center; font-size: 37px; font-weight: bold; 
				position: absolute; left: 450px; top: 9px; border: 2px solid #333; border-radius: 10px;color:#5E5E5E}
#logo{width:202px; height: 54px;position: absolute; left: 128px; top: 13px;}
#checkbox1{position: absolute; left: 350px; top: 130px;}
#checkbox2{position: absolute; left: 350px; top: 200px;}
#checkbox3{position: absolute; left: 350px; top: 450px;}
#checkBtn{position: absolute; left: 726px; top: 630px; width:130px;height: 50px;
		border: 1px solid #333;cursor: pointer;background-color: #9A58B5;color:#FFF;font-weight: bold;border-radius: 10px;}
#cancelBtn{position: absolute; left: 590px; top: 630px; width:130px;border-radius: 10px;
		height: 50px;
		border: 1px solid #333;
		cursor: pointer;
		background-color: #fff;
		color:#333;
		font-weight: bold}
#font1{font-size:15px;font-family: "맑은고딕"; font-weight:bold; color: #333333;  }
#font2{font-size:10px;font-family: "맑은고딕"; font-weight:bold; color: #E88935;  }
#font3{font-size:17px;font-family: "맑은고딕"; font-weight:bold; color: #333333;  }
#textarea{width:500px;height: 150px;}
</style>
<script type="text/javascript">
function setAll() {
	var obj=document.frm;
	if(obj.chkAll.checked){
		obj.chk1.checked=true;
		obj.chk2.checked=true;
	}else{
		obj.chk1.checked=false;
		obj.chk2.checked=false;
	}//end else
}//setAll

function check() {
	var obj=document.frm;
	var link="http://localhost/prj_2/ldk/join.jsp";
	if(!(obj.chk1.checked)){
		alert("이용약관 동의는 필수사항입니다!")
		obj.chk1.focus();
	}else if(obj.chk1.checked){
		location.href= link;
	}
	
}
</script>
</head>
<body>

<div id="wrap"> <!-- wrap ( w : 900 x h : 1200) -->
<div id="header">
	<input type="text" id="joinMembership" value="회원가입" readonly="readonly">
	<a href="http://localhost/prj_2/lmh/main.jsp"><img id="logo" alt="logo"  src="http://localhost/prj_2/images/logo.png"></a>
</div>
<form name="frm">
<div id="container">
<div id="checkbox1">
	<input type="checkbox" name="chkAll" id= "chkAll"onclick="setAll()">
	<font id="font3">강남콩마켓 이용약관 및 개인정보 수집 및 이용에 모두 동의합니다.</font>
</div>
<div id="checkbox2">
	<input type="checkbox" name="chk1" >
	<font id="font1">강남콩마켓 이용약관에 동의합니다.</font>
	<font id="font2">(필수)</font><br>
	<textarea id="textarea" readonly="readonly">
약관1
	</textarea>
</div>
<div id="checkbox3">
	<input type="checkbox" name="chk2" >
	<font id="font1">개인정보 수집 및 이용에 동의합니다.</font><br>
<textarea id="textarea" readonly="readonly" >
약관2
</textarea>
</div>
<div >
	<input type="button" value="다음" id="checkBtn" onclick="check()">
	<a href="http://localhost/prj_2/lmh/main_logout.jsp"><input type="button" value="취소" id="cancelBtn" ></a>
</div>
</div>
</form>

<div class="footer">
<c:import url="../lmh/footer.jsp"/>
   </div><!-- footer-->
</div>
</body>
</html>