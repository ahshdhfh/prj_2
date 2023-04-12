<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

<link rel="stylesheet" type="text/css" href="http://211.63.89.134/html_prj/project/main.css">
<style type="text/css">

#container{position: relative; width: 1200px; height: 500px;}
table {
    width: 60%;
    border-collapse: collapse;
    margin: 50px auto;
  }
  
  td {
    text-align:center;
    border-bottom: 1px solid #444444;
    padding: 10px;
    height: 15px;
  }
  tr{
    border-bottom: 1px solid #444444;
    text-align: left;
  }
a{color: #000000;}
</style>
</head>


<body>
<div class="wrap">

<div class="header">
       <!-- <div class="logo"> -->
       <a href="http://localhost/prj_2/lmh/main_login.jsp"><img class="logo" src="http://localhost/prj_2/images/logo.png"></a>
       <!-- </div> -->
       
       <div class="search_area">
       <input type="search" class="search" placeholder="물품을 검색해 보세요">
       </div><!-- search-->
       
      

 <% request.setCharacterEncoding("UTF-8"); //post 방식의 한글 처리 : request.setCharacterEncoding("변경할 charset");
String id=request.getParameter("id"); %>


       <div class="div_select_login"> 
         <select class="select_login" onchange="window.location.href=this.value">
             <option value="이름"  hidden><%=id %> 님</option>
             <option value="http://localhost/prj_2/kbk/mypage.jsp" >나의 마켓</option>
             <option value="http://localhost/prj_2/cis/sell_page.jsp">상품 등록</option>
             <option value="http://localhost/prj_2/kbk/editInfoPassword.jsp">개인정보수정</option>
         </select> 
       </div>
       

       <div class="logout">
         <a href="http://localhost/prj_2/lmh/main_logout.jsp" class="a_login" >로그아웃</a>
       </div>
 </div><!-- header-->
   
   
<div id="container">
<table>
	<tr>
	<th colspan="2"><h2>댓글</h2></th>
	</tr>
	<tr>
	<td></td>
	<td></td>
	</tr>
	<tr>
	<td></td>
	<td></td>
	</tr>
	<tr>
	<td></td>
	<td></td>
	</tr>
	<tr>
	<td></td>
	<td></td>
	</tr>
</table>
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