<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정완료</title>

<link rel="stylesheet" type="text/css" href="http://211.63.89.134/html_prj/project/main.css">
<style type="text/css">

#container{position: relative; width: 1200px; height: 500px;}
#div{position: absolute; top: 50px; left: 400px; border-bottom: 1px solid #333; width: 400px}
#msg{position: absolute; top: 200px; left: 450px; width: 400px; height: 300px;}
#btn{position: absolute; top: 300px; left: 500px; width:150px; height: 40px;
	border-radius: 10px;font-size: 15px; border: 1px solid #333;cursor: pointer;background-color: #9A58B5;color:#FFF;font-weight: bold;cursor: pointer;}
</style>
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
<div id="div"><h2>개인정보 수정</h2></div>
<div id="msg">회원님의 개인정보가 수정되었습니다.</div>
<div><a href="http://211.63.89.134/html_prj/project/mypage.jsp"><input type="button" value="확인" id="btn"></a></div><br>

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