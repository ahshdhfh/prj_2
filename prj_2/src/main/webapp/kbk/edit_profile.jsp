<%@page import="prj_2.LoginSessionVO"%>
<%@page import="prj_2.ModifyProfileVO"%>
<%@page import="prj_2.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 변경</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/main.css">
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
  
  
  
  
  function openNickPop(){
		//부모창에서 발생한 값을 자식창에 넘기기 위해 web parameter를 사용한다.
		window.open("http://localhost/prj_2/ldk/popup_nick.jsp","popup","width=520,height=320,top="
				+(window.screenY+100)	+",left="+(window.screenX+100));
	}//openNickPop
	
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
  <%@ include file="../lmh/header.jsp" %>
  </div><!-- header-->
   
   
<div id="container">
 <%
 if(lsVO==null){
 	response.sendRedirect("http://localhost/prj_2/lmh/login.jsp");
 	return;
 }
String sessionId=lsVO.getUserId(); 
UserDAO uDAO=new UserDAO();
 
ModifyProfileVO mpVO=uDAO.setProfile(sessionId);
String img=mpVO.getUserImg();
String nickname=mpVO.getNickName();
String intro=mpVO.getPersonalIntro();

if(intro==null){
	intro="안녕하세요";
}
%>



<form name="frm" id="frm" action="edit_profile_process.jsp" method="post" enctype="multipart/form-data">
	<div class="h1"><h1>프로필 수정</h1></div>
	<div class="pic">
		<img src="<%= img %>" onerror="this.onerror=null; this.src='http://localhost/prj_2/kbk/upload/profile.png';" id="profileImg" class="profile_img">
		 <input id="profileInput"
             type="file"
             name="userImgFile"
             accept="image/*"
             onchange="changeProfileImage();"/>
	</div>
	
	<div class="editInfo">
	<label>닉네임</label><br>
	<input type="text" id="nickname" name="nickName" value=" <%= nickname %> "/>
	<input type="button" id="idBtn" value="중복확인" onclick="openNickPop()"/><br>
	<br>
	<label>자기소개</label><br>
	<textarea id="intro" name="personalIntro" ><%= intro %></textarea><br>
	</div>



	<div><input type="button" value="수정" class="editBtn" id="editBtn" onclick="checkNull()" /></div>
</form>
</div><!-- container -->
     
<div class="footer">
      <c:import url="http://localhost/prj_2/lmh/footer.jsp"/>
</div><!-- footer-->
</div>
</body>
</html>