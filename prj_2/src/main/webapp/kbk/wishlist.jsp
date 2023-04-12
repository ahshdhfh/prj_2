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
.grid {
    width: 100%;
    display: grid;
    grid-template-columns: 247px 247px 247px;
}

.likedItem{padding:0 5px;}

.itemBox{position:relative;width:230px;margin-bottom:20px;cursor:pointer;}
.ThumbNail{width:231px;height:231px;border-radius:5px;object-fit:cover;}

.fDnSDy{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-pack:justify;-webkit-justify-content:space-between;-ms-flex-pack:justify;justify-content:space-between;}
.ThumbNailTitle{margin-top:7px;color:#454c53;font-size:17px;} @media all and (max-width:800px){.title{font-size:14px;margin-top:5px;}}
.price{color:#000;font-size:22px;}
.fPDVWA{width:39px;height:39px;border:1px solid #ebebeb;border-radius:11px;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;margin-top:7px;} @media all and (max-width:800px){.fPDVWA{width:33px;height:33px;}}
.dfwPrT{width:16px;height:16px;}
.heart_on{position:absolute;bottom:70px;right:5px;width:25px;height:25px;}
.fNGdVx{position:absolute;top:0;}
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

<div>
<h2>관심목록</h2>
	<div>

	<div class="grid">
	<div class="likedItem">
	<div class="itemBox">
	<img src="http://211.63.89.134/html_prj/project/images/bike.PNG" class="ThumbNail">
	<div class="ThumbNailType__ItemInfoBox-sc-1invua-7 fDnSDy">
	<div><!-- info -->
	<div class="ThumbNailTitle">&lt;상품명&gt; ...</div>
	<div class="price">150,000원</div>
	</div>
	
	</div><img src="http://211.63.89.134/html_prj/project/images/ico_heart_on.svg" class="heart_on">
	<div class="SellStateImg__Wrapper-sc-15fv3xr-0 fNGdVx"></div>
	</div>
	
	
	</div><div class="likedItem">
	<div class="itemBox">
	<img src="http://211.63.89.134/html_prj/project/images/bike.PNG" class="ThumbNail">
	<div class="ThumbNailType__ItemInfoBox-sc-1invua-7 fDnSDy">
	<div><!-- info -->
	<div class="ThumbNailTitle">&lt;상품명&gt; ...</div>
	<div class="price">250,000원</div>
	</div>
	
	</div><img src="http://211.63.89.134/html_prj/project/images/ico_heart_on.svg" class="heart_on">
	<div class="SellStateImg__Wrapper-sc-15fv3xr-0 fNGdVx"></div>
	</div>
	</div>
	</div>





	</div>

</div>



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