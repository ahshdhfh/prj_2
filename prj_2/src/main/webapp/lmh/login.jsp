<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강남콩마켓 로그인</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/main.css">
<style type="text/css">

.area_login{
height: 670px; 
width: 1200px;
position: relative; 
}

.loginTitle{
position: absolute;
top : 115px;
left: 550px;
font-weight: bold;
font-size: 25px;
}

.input_login{
width: 350px;
height : 60px;
}

.text_input_login{
width: 350px;
height : 60px;
position: absolute;
top : 185px;
left: 415px;
font-size: 16px;
border-radius: 5px;
border-color: #dcdcde;
}

.input_password{
width: 350px;
height : 60px;
}

.text_input_password{
width: 350px;
height : 60px;
position: absolute;
top : 265px;
left: 415px;
font-size: 16px;
border-radius: 5px;
border-color: #dcdcde;
}

.find_id{
position: absolute;
font-size: 16px;
top : 350px;
left: 570px; 
}

.find_password{
position: absolute;
font-size: 16px;
top : 350px;
left: 670px; 
}

.a_find{
text-decoration: underline;
color: #000
}

.div_btn_login{
width: 350px;
height : 60px;
}

.btn_login{
width: 355px;
height : 65px;
position: absolute;
top : 420px;
left: 415px;

border: none;
border-radius: 5px;
background-color: #8B6FBD;
color: white;
font-size: 22px;
font-weight: bold;
}

.div_btn_join_member{
width: 350px;
height : 60px;
}


.btn_join_member{
width: 355px;
height : 65px;
position: absolute;
top : 500px;
left: 415px;

border: none;
border-radius: 5px;
background-color: #E0E0E0;
color: #8B6FBD;
font-size: 22px;
font-weight: bold;
}
</style>

<script type="text/javascript">
/*  function login() {
	
	var obj = document.frm;
	var id = obj.id.value;
	var password = obj.password.value;
	
	if (id === "id" && password === "password") {
		 window.location.href = "http://localhost/prj_2/project/main_login.jsp";
	  } else {
	    alert("아이디 또는 비밀번호를 확인하세요");
	  }
}//login()  */


function login(){
	var obj=document.postFrm;
	var id = obj.id.value;
	var password = obj.password.value;
	
	//유효성검증
	if(id === "" || password === ""){
		alert("아이디, 비밀번호를 입력해 주세요");
		return;
	}//end if
	
	//유효성 검증이 완료되면 값을 받아야 할 페이지로 값들을 전송한다
	obj.submit();
}//login


</script>

</head>
<body>

<div class="wrap">

  <div class="header">
       <div class="logo"> 
       <a href="http://localhost/prj_2/lmh/main_logout.jsp"><img class="logo" src="http://localhost/prj_2/images/logo.png"></a>
       </div> 
  
  </div><!-- header-->
  
  
  <form action="main_login.jsp" method="post"  name="postFrm" >
  <div class="area_login">
     <div class="loginTitle">로그인</div>
     
     <div class="input_login">
     <input type="text" class="text_input_login"  placeholder="아이디를 입력해주세요" name="id"> 
     </div>
     
     <div class="input_password">
     <input type="password"  class="text_input_password" placeholder="비밀번호를 입력해주세요" name="password"> 
     </div>
     
     <div class="find_id">
     <a href="http://localhost/prj_2/이단군/id_inquiry.jsp" class="a_find" >아이디찾기</a>
     </div>
     
      <div class="find_password">
      <a href="http://localhost/prj_2/이단군/pass_inquiry.jsp" class="a_find" >비밀번호찾기</a>
     </div>
     
     
     <div class="div_btn_login">
        <input type="button"  value="로그인" class="btn_login"  onclick="login()">
     </div>
     
     
      <div class="div_btn_join_member">
        <input type="button"  value="회원가입" class="btn_join_member"  onclick="location.href='http://localhost/prj_2/이단군/membership_term.jsp' ">
     </div>
     
     
  
  
  </div><!-- 로그인 -->
  </form>
  
  
  
  
  
  <div class="footer">
      <hr class="hr_footer">
      
      <div class="footer_text">
        대표 4조 | 사업자번호 123-45-67890<br>
        직업정보제공사업 신고번호 2023-서울강남-0000<br>
        주소 서울 강남구 테헤란로 132 (강남콩서비스)<br>
        전화 1234-1234 | 고객문의 cs@gangnamkongservice.com<br>
       </div>
   </div><!-- footer-->
   
  </div><!--wrap  -->

</body>
</html>