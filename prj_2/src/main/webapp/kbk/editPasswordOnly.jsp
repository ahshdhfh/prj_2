<%@page import="prj_2.MainProdVO"%>
<%@page import="java.util.List"%>
<%@page import="prj_2.MainProdDAO"%>
<%@page import="prj_2.LoginSessionVO"%>
<%@page import="prj_2.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 수정</title>

<link rel="stylesheet" type="text/css" href="http://211.63.89.134/html_prj/project/main.css">
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
function validateSearchInput() {
    var searchInput = document.querySelector('.search');
    if (searchInput.value.trim() === '') {
        alert('검색어를 입력하세요.');
        searchInput.focus();
        return false;
    } else {
        var mainProdSearchDAO = new MainProdSearchDAO();
        mainProdSearchDAO.selectProd(searchInput.value, function(result) {
            location.href = 'http://localhost/prj_2/lmh/buy.jsp?search=' + encodeURIComponent(searchInput.value);
        });
        return false;
    }
}

</script>
</head>




<body>
<div class="wrap">

<div class="header">
<%
String userId=null;

userId=request.getParameter("userId");
String nickName=""; 
LoginSessionVO lVO = (LoginSessionVO)session.getAttribute("loginData");



/* System.out.println("send 후 세션값 : "+(String)session.getAttribute("nickName")); */
/* nickName = (String)request.getAttribute("nickName");
System.out.println(nickName); */

%>

 <% if ( lVO == null  ){ 
	 userId=request.getParameter("userId");
	 ;%> 
 






<%
MainProdDAO MainProdDAO = new MainProdDAO();
List<MainProdVO> MainProdlist = MainProdDAO.SearchData(request.getParameter("search"));

pageContext.setAttribute("prodSearch", MainProdlist);
%>


      <!-- 검색창폼 -->
<form action="/search" method="get" onSubmit="return validateSearchInput()">

    <!-- 로고 -->
   <a href="http://localhost/prj_2/lmh/main.jsp"><img class="logo" src="http://localhost/prj_2/images/logo.png"></a>


   <div class="search_area"><!--  검색창   -->
   <input type="search"  class="search" placeholder="물품을 검색해 보세요" > <!--list 검색가능   -->
   </div>

       
       
       
       <div class="join_member"> 
          <a href="http://localhost/prj_2/ldk/membership_term.jsp"  class="a_join_member"">회원가입</a>
       </div>

       <div class="login">
         <a href="http://localhost/prj_2/lmh/login.jsp" class="a_login" >로그인</a>
       </div>
</form>



  
  
  <% } else {
	  userId=lVO.getUserId();
  	System.out.print("else");
  %>
              

       <a href="http://localhost/prj_2/lmh/main.jsp"><img class="logo" src="http://localhost/prj_2/images/logo.png"></a>



       <div class="search_area">
       <input type="search" class="search" placeholder="물품을 검색해 보세요"> <!--list 검색가능  -->
       </div><!-- search-->
       </form>
  

 <div class="div_select_login"> 
         <select class="select_login" onchange="window.location.href=this.value">
             <option value="이름" ><%= lVO.getNickName() %>님</option>
             <option value="http://211.63.89.134/prj_2/kbk/mypage.jsp" >나의 마켓</option>
             <option value="http://211.63.89.152/prj_2/cis/sell_page.jsp">상품 등록</option>
             <option value="http://211.63.89.134/prj_2/kbk/EditInfoPassword.jsp">개인정보수정</option>
         </select> 
       </div>
       

       <div class="logout">
         <a href="http://localhost/prj_2/lmh/logout.jsp" class="a_login" >로그아웃</a>
       </div>
       
 <% }//end else 
 if(userId==null){
	 response.sendRedirect("../lmh/main.jsp");
 }
 %>
  </div><!-- header-->
   
   
<div id="container">
<div id="div0"><h2>비밀번호 수정</h2></div>
<form name="frm" action="editPassword_process.jsp" method="post">
<div id="divId"> 
	<font id="font1">아이디</font><br>
	<input type="text" id="inputBox_id" name="userId" placeholder="아이디" value ="<%=userId %>"readonly>
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
      <hr class="hr_footer">
      
      <div class="footer_text">
        대표 김용현, 황도연 | 사업자번호 375-87-00088<br>
        직업정보제공사업 신고번호 2016-서울서초-0051<br>
        주소 서울특별시 구로구 디지털로 30길 28, 609호 (당근서비스)<br>
        전화 1544-9796 | 고객문의 cs@daangnservice.com<br>
       </div>
       
      <div class="inquiry1">
        <a href="#void"  class="a_footer">제휴문의</a>
       </div> 
       
        <div class="inquiry2">
        <a href="#void"  class="a_footer">광고문의</a>
       </div> 
       
       <div class="inquiry3">
        <a href="#void"  class="a_footer">PR문의</a>
       </div> 
       
        <div class="inquiry4">
        <a href="#void"  class="a_footer">IR문의</a>
       </div> 
   
       <div class="inquiry5">
        <a href="#void"  class="a_footer">이용약관</a>
       </div> 
       
       <div class="inquiry6">
        <a href="#void"  class="a_footer">개인정보처리방침</a>
       </div> 
       
       <div class="inquiry7">
        <a href="#void"  class="a_footer">이용자보호</a>
       </div> 
       
       <div class="inquiry8">
        <a href="#void"  class="a_footer">비전과계획</a>
       </div>
   </div><!-- footer-->

</div>
</body>
</html>