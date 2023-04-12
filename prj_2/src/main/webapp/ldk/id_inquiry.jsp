<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/ldk/main.css">

<style type="text/css">
#wrap{ width: 1200px; height: 1200px;margin: 0px auto; border:1px solid #333}
#header{  height: 80px; position: relative; border-bottom: 2px solid #5E5E5E}
#container{  height: 700px;position: relative; }

#footer{  height: 300px;}

#joinMembership{width:300px; height: 56px; text-align: center; font-size: 37px; font-weight: bold; 
				position: absolute; left: 450px; top: 9px; border: 2px solid #333; border-radius: 10px;color:#5E5E5E}
#logo{width:202px; height: 54px;position: absolute; left: 128px; top: 13px;}
#checkbox1{position: absolute; left: 350px; top: 130px;}
#checkbox2{position: absolute; left: 350px; top: 200px;}
#checkbox3{position: absolute; left: 350px; top: 450px;}
#colorBtn{position: absolute; left: 420px; top: 15px; width:180px;height: 50px;font-size:20px;
		border: 1px solid #333;cursor: pointer;background-color: #9A58B5;color:#FFF;font-weight: bold;border-radius: 10px;}
#whiteBtn{position: absolute; left: 600px; top: 15px; width:180px;border-radius: 10px;font-size:20px;
		height: 50px;border: 1px solid #333;cursor: pointer;background-color: #fff;color:#333;font-weight: bold}
#div1{position: absolute;width:500px;height:30px;left:360px;top: 130px;border-bottom: 3px solid #5E5E5E}
#div2{position: absolute;width:500px;height:30px;left:360px;top: 200px;}
#div3{position: absolute;width:500px;height:30px;left:360px;top: 280px;}
#font1{font-size:20px;font-family: "맑은고딕"; font-weight:bold; color: #333333;  }
#font2{font-size:10px;font-family: "맑은고딕"; font-weight:bold; color: #E88935;  }
#font3{font-size:22px;font-family: "맑은고딕"; font-weight:bold; color: #333333;  }
#textarea{width:500px;height: 150px;}
#inputBox1{width:415px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;font-size: 15px;cursor: pointer;}
#inputBox2{width:200px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;font-size: 15px;cursor: pointer;}
#inputBox3{width:185px;height: 50px;border: 2px solid #333; border-radius: 10px;color:#5E5E5E;font-size: 15px;cursor: pointer;}
#nextBtn{width:500px;height: 50px;background-color: #333333; color: #FFF;font-size: 18px;font-weight:bold;
		border-radius: 10px;position: absolute; left:360px; top:370px;cursor: pointer;}

</style>
<script type="text/javascript">
function nullCheck() {
	var obj = document.frm;
	if(obj.name.value==""){
		alert("이름을 입력해주세요");
		obj.name.focus();
		return;
	}
	if(obj.email.value==""){
		alert("이메일을 입력해주세요")
		obj.email.focus();
		return;
	}
	if(obj.email2.value=="선택없음"){
		alert("포털사이트를 선택해주세요")
		obj.email2.focus();
		return;
	}
	location.href="http://localhost/prj_2/ldk/succ_id_inquiry.jsp";
}
</script>
</head>
<body>

<div class="wrap"> <!-- wrap ( w : 900 x h : 1200) -->
<div id="header">
	<input type="button" id="colorBtn" value="아이디찾기" >
	<a href="http://211.63.89.142/html_prj/project/pass_inquiry.jsp"">
	<input type="button" id="whiteBtn" value="비밀번호찾기" >
	</a>
	
	<a href="http://localhost/prj_2/lmh/main_logout.jsp"><img id="logo" alt="logo"  src="http://localhost/prj_2/images/logo.png"></a>
</div>

<form name="frm">
<div id="container">
	<div id="div1">
		<font id="font3">아이디 찾기</font>
	</div>
	<div id="div2">
		<label id="font1">이름 &nbsp&nbsp&nbsp</label>
		<input type="text" id="inputBox1" name="name" placeholder="이름">
	</div>
	<div id="div3">
		<label id="font1">이메일&nbsp</label>
		<input type="text" id="inputBox2" placeholder="이메일" name="email"> @ 
	<select id="inputBox3" name ="email2">
		<option value="선택없음">선택없음</option>
		<option value="google">google.com</option>
		<option value="naver">naver.com</option>
		<option value="nate">nate.com</option>
		<option value="daum">daum.net</option>
	</select>
	</div>
	
	<input type="button" id="nextBtn" value="다음" onclick="nullCheck()">
</div><!-- container -->
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
</div><!-- wrap -->
</body>
</html>