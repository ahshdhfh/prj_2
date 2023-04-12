<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 변경</title>

<link rel="stylesheet" type="text/css" href="http://211.63.89.134/html_prj/project/main.css">
<style type="text/css">
#container{position: relative; width: 1300px; height: 800px;}
.h1{margin: 0 auto; margin-top:100px; width:180px;}
.pic{margin: auto; margin-top:50px; width:120px;}
.profile_img{width:120px;height:120px;border-radius:50%;}
.editInfo{margin: 10px auto; width:350px;font-size:20px;font-weight:bold; color: #333333; }
.editBtn{margin: 600px; margin-top: 50px; width:100px;height: 40px;border-radius: 10px;font-size: 15px;
		border: 1px solid #333;cursor: pointer;background-color: #9A58B5;color:#FFF;font-weight: bold;cursor: pointer;}
#idBtn{width:100px;height: 40px;border-radius: 10px;font-size: 15px;
		border: 1px solid #333;cursor: pointer;background-color: #9A58B5;color:#FFF;font-weight: bold;cursor: pointer;}
#nickname{width:200px;height:30px;}
#intro{width:300px;height:200px;}
a{color: #000000;}
</style>
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
<script type="text/javascript">
  function changeProfileImage() {
	  var obj=document.frm;
   /*  let profileInput = document.getElementById("profileInput"); */
  
    // let profileInput = $("#profileInput")[0];
    if ( obj.profileInput.files &&  obj.profileInput.files[0]) {
      let reader = new FileReader();
      // onload는 img 데이터를 다 읽은 이후에 발생하는 이벤트
      reader.onload = function(e) {
        document.getElementById('profileImg').src = e.target.result;
      };

      // onload 안에 있는 소스보다 먼저 실행됨. (밑에 있지만)
      reader.readAsDataURL(profileInput.files[0]);
    } else {
      document.getElementById('profileImg').src = "";
    }//end else
  }//changProfileImage
  
  
  function nickValid() {
  
		var obj=document.frm;
		if(obj.nickname.value==""){
			alert("닉네임을 입력해주세요.")
			obj.nickname.focus();
			return;
	
		}else{
			alert("사용가능한 닉네임입니다.");
		}
	}//
	
  function checkNull() {
  
		var obj=document.frm;
		if(obj.nickname.value==""){
			alert("닉네임을 입력해주세요.")
			obj.nickname.focus();
			return;
	
		}
		obj.submit();
	}//

</script>
</head>


<body>
<div class="wrap">

  <div class="header">
       <div class="logo"></div>
       
       <div class="search_area">
       <input type="text" class="search" placeholder="물품을 검색해 보세요">
       </div><!-- search-->
       
       <div class="div_select_login"> 
          <select class="select_login" name="이미현 님" >
             <option value="나의 마켓">나의 마켓</option>
             <option value="나의 마켓">나의 마켓</option>
             <option value="상품 등록">상품 등록</option>
             <option value="개인정보수정">개인정보수정</option>
         </select>
       </div>
       

       <div class="logout">
         <a href="http://211.63.89.143/html_prj/project/main_logout.jsp" class="a_login" >로그아웃</a>
       </div>
  </div><!-- header-->
   
   
<div id="container">
<form name="frm" id="frm" action="mypage.jsp" method="post">
	<div class="h1"><h1>프로필 수정</h1></div>
	<div class="pic">
		<img src="http://211.63.89.134/html_prj/project/images/profile.png" id="profileImg" class="profile_img">
		 <input id="profileInput"
             type="file"
             name="user_Img"
             accept="image/*"
             onchange="changeProfileImage();"/>
	</div>
	
	<div class="editInfo">
	<label>닉네임</label><br>
	<input type="text" id="nickname" name="nickname"/>
	<input type="button" id="idBtn" value="중복확인" onclick="nickValid()"/><br>
	<br>
	<label>자기소개</label><br>
	<textarea id="intro" name="personal_Intro"></textarea><br>
	</div>



	<div><input type="button" value="수정" class="editBtn" id="editBtn" onclick="checkNull()" /></div>
</form>
</div><!-- container -->
     
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