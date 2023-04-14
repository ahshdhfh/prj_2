<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강남콩마켓</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/main.css">
<style type="text/css">

/* 상품 이미지 */
.input-img{
border: 1px solid #333;
width:180px;
height:180px;
margin-left:130px;
margin-top:-20px;
text-align:center;
}

#caution{
font-size:1.5pt;
color:#0055FF;
line-height:15pt;
margin-left:130px;
margin-top:20px
}

/* 제목 */
.input-title{
width:500px;
height:30px;
border-radius: 5px;
margin-left:20px;
}

.select_category{
width:150px;
height:40px;
margin-left:20px;

}
.input-price{
width:170px;
height:40px;
border-radius: 5px;
margin-left:20px;
}

#share-check{

margin-left:20px;
}
.input-explain{
width:520px;
height:220px;
border-radius: 5px;
resize:none;
}

.input-location{
width:440px;
height:50px;
border-radius: 5px;
}

.cancel-button{
width:180px;
height:65px;

border: none;
border-radius: 5px;
background-color: #E0E0E0;
color: #8B6FBD;
font-size: 22px;
font-weight: bold;
margin-right:10px
}
.complete-button{
width: 180px;
height : 65px;

border: none;
border-radius: 5px;
background-color: #8B6FBD;
color: white;
font-size: 22px;
font-weight: bold;
margin-left:10px
}

.button-check{
text-align:center;
}

.hr_footer{
border: 1px solid #EAEBEE;
}


</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
<script type="text/javascript">
if("<%=request.getMethod()%>"=="GET"){
	alert("정상적인 요청 방식이 아닙니다.")
	location.href="http://localhost/prj_2/cis/sell_page.jsp";
}//end if
</script>
</head>
<body>
<div class="wrap">

  <div class="header">
       <div class="logo">
       <a href="http://localhost/prj_2/lmh/main_login.jsp"><img id="logo" alt="logo"  src="http://localhost/prj_2/images/logo.png"></a>
       </div>
       
       <div class="search_area">
       <input type="text" class="search" placeholder="물품을 검색해 보세요">
       </div><!-- search-->
       
      <div class="div_select_login"> 
         <select class="select_login" onchange="window.location.href=this.value">
             <option value="나의 마켓">나의 마켓</option>
             <option value="http://localhost/html_prj/project/mypage.jsp">나의 마켓</option>
<!--       <option value="http://211.63.89.152/html_prj/project2nd/sell_page.jsp">상품 등록</option> -->
             <option value="http://localhost/html_prj/project/EditInfoPassword.jsp">개인정보수정</option>
         </select>
       </div>

          <div class="logout">
         <a href="http://localhost/prj_2/lmh/main_logout.jsp" class="a_login" >로그아웃</a>
       </div>
  </div><!-- header-->
 <!-- container -->
 <div id="container">
 <%
 if("POST".equals(request.getMethod())){
%>
<jsp:useBean id="pVO" class="prj_2.ProductInsertVO" scope="page"/>
<%


 }//end if
 %>
 </div>
<!-- footer 부분 -->
   <div class="footer">
      <hr class="hr_footer">
      
      <div class="footer_text">
        대표 김용현, 황도연 | 사업자번호 375-87-00088<br>
        직업정보제공사업 신고번호 2016-서울서초-0051<br>
        주소 서울특별시 구로구 디지털로 30길 28, 609호 (당근서비스)<br>
        전화 1544-9796 | 고객문의 cs@daangnservice.com<br>
       </div>
       
   </div><!-- footer-->
   
   
</div> <!--wrap  -->


</body>
</html>