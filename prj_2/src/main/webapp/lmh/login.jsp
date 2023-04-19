<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <!-- 추가 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

    
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

function chkNull(){
    var obj = document.frm;
    var id = obj.id.value;
    var pass = obj.pass.value;

    if(obj.id.value === ""){
        alert("아이디를 입력해 주세요");
        obj.id.focus();
        return;
    }
    if(obj.pass.value === ""){
        alert("비밀번호를 입력해 주세요");
        obj.pass.focus();
        return;
    }
    
    if(id.trim() === "" || pass.trim() === ""){
        alert("아이디와 비밀번호를 모두 입력해 주세요");
        return;
    }
    $("#postFrm").submit();
}//chkNull

</script>

</head>
<body>

<div class="wrap">

  <div class="header">
       <div class="logo"> 
       <a href="http://localhost/prj_2/lmh/main.jsp"><img class="logo" src="http://localhost/prj_2/images/logo.png"></a>
       </div> 
  
  </div><!-- header-->
  
  

  <div class="area_login">
     <div class="loginTitle">로그인</div>
     
     
     
 <form id="postFrm"  action="http://localhost/prj_2/lmh/login_frm_process.jsp" method="post" >
     
     <div class="input_login">
     <input type="text"  id="id" name="id" class="text_input_login"  placeholder="아이디를 입력해주세요"  autofocus="autofocus"> 
     </div>
     
     <div class="input_password">
    <input type="password"  id="pass" name="pass" class="text_input_password" placeholder="비밀번호를 입력해주세요"> 
     </div>
     
     <div class="find_id">
     <a href="http://localhost/prj_2/ldk/id_inquiry.jsp" class="a_find" >아이디찾기</a>
     </div>
     
      <div class="find_password">
      <a href="http://localhost/prj_2/ldk/pass_inquiry.jsp" class="a_find" >비밀번호찾기</a>
     </div>
     
     
     <div class="div_btn_login">
        <input type="button"  value="로그인" class="btn_login"  id="btn" onclick="chkNull()">
     </div>
     
     
      <div class="div_btn_join_member">
        <input type="button"  value="회원가입" class="btn_join_member"  onclick="location.href='http://localhost/prj_2/ldk/membership_term.jsp' ">
     </div>
     
</form>     
  
  
  </div><!-- 로그인 -->

  
  
  
  
  

   
  </div><!--wrap  -->

</body>
</html>