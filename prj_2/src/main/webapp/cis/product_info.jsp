<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강남콩마켓</title>

<link rel="stylesheet" type="text/css"
	href="http://localhost/prj_2/lmh/main.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost/prj_2/lms/font-awesome/css/font-awesome.min.css">
<style type="text/css">

.buy_page{
	height: 650px;
}
/* 상품 이미지 틀 */


#carouselSize{
	float:left;
	margin-left:50px;
	width:600px;
	height:600px;
	border:1px solid #000000; 
}



/* 북마크 & 쉐어버튼 */
#bookmark {
	position:relative;
	float:right;
	width:42px;
	height:41px;
	background-image: url('http://localhost/prj_2/images/free-icon-love-7476962.png');
	border:none;
	background-color:white;
}

#sharebutton {
	position:relative;
	float:right;
	width:100px;
	height:30px;
}

/* 북마크 & 쉐어버튼 */
/* 상품 제목 및 정보 */
#product_info_table {
	margin-left:30px;
}
#prod-info{
	float:right;
	margin-right:30px;
}

.prod-info-dt{
/* 	margin-left: 30px ; */
	font-size:22px;
/* 	float:left; */
	width:200px;
}

.prod-info-dd{
	margin-left:1px;
	font-size:19px;
	width:200px;
}

#prod-title{
	font-size:30pt;
	width:200px;
}

#prod-price{
	font-size:30px;	
	margin-left:30px;

}

#updatePrdInfo {
	width: 450px;
	height: 84px;
	float: right;
	background-color:#ffffff;
	font-size:15pt;
	borderline-color:#FFF;
}
/* 상품 제목 및 정보 */
/* 판매자 정보 및 페이지 내 이동버튼*/
.sell_user_info {
	border: none;
	border-radius: 0;
	padding: 10px 0;
	background-color: #e0e0e0;
	width:1200px;
	height:300px;
	margin:center;
	
}

#user_name_addr{
	margin-top:-120px;
	margin-left:240px;
	font-size:20pt;
}
#profile-img{
	width:120px;
	height:120px;
	background-color:#000000;
	margin-top:50px;
	margin-left:90px;
	border-radius:100%;
}

#comment-qna-button{
	margin-top:40px;
}
/* 판매자 정보 및 페이지 내 이동버튼*/
/* 판매자의 코멘트창*/
#user_comment{
	border:none;
	width:1200px;
	height:250px;
	resize:none;
}
.prod-sale-tag{
	margin-top:10px;
	width:150px;
	height:40px;
}
.sell_user_comment{
	position:relative;
	width:600px;
	height:85px;
	font-size:20pt;
	text-align:center;
	border:2px solid #000000;
	background-color:white;
}
.sell_user_qna{
	position:relative;
	width:600px;
	height:85px;
	font-size:20pt;
	text-align:center;
	border:2px solid #000000;
	background-color:white;
}

/* 판매자의 코멘트창*/

/* 문의글리스트 */
#qna-toolbar{
width:860px;
/* height:880px; */
background-color: #e0e0e0;
margin:0px auto;
padding:15px 20px;
}

.qna-list{
	width:800px;
	margin:0px auto;
}

#refreshButton{
	background-color: #e0e0e0;
	background-image: none;
	border:none;
}
.requestText{
	width:650px;
	height:130px;
	border:none;
	background-color: #e0e0e0;
	resize:none;
	font-size:16pt;
}

.comment-tag{
	float:right;
}
.user_id{
	border:none;
	width:50px;
	margin-top:20px;
	text-align:right;
	background-color: #e0e0e0;
}
.write-date{
	border:none;
	width:50px;
	text-align:right;
	background-color: #e0e0e0;
}
.fa-ellipsis-v{
	float:right;
	margin-top:50px;
}
#all-page-button{
	margin-left:340px;
	margin-top:20px;
}
#page-button-left{
	width:40px;
	height:40px;
	border:none;
	background-color:#f4f4f4;
}
#page-button-1{
	width:40px;
	height:40px;
	border:none;
	color:white;
	background-color:#8B6FBD;
}
#page-button-2{
	width:40px;
	height:40px;
	border:none;
	background-color:#f4f4f4;
}
#page-button-right{
	width:40px;
	height:40px;
	border:none;
	background-color:#f4f4f4;
}

/* 댓글 작성 폼 */
.comment_form { 
	width:800px;
  	padding: 10px 20px;
  	background-color: #ffffff;
  	border: 1px solid #000000;
  	margin-top:20px;
  	margin-left:10px;
  	position:relative;
}
#comment_profile_img{
	width:30px;
	height:30px;
	border-radius:100%;
	background-color:#e0e0e0;
}

#comment_id{
	border:none; 
	font-size:16pt;
	margin-bottom:10px;
}


/* 댓글 내용 입력 필드 */
 .comment_content { 
  margin-bottom: 10px;
  width: 750px;
  resize:vertical;
  border: 1px solid #cccccc;
  border-radius: 2px;
  padding: 10px;
  font-size: 14pt;
  color: #666666;
}

.comment_submit{
	margin-left:680px;
	width:80px;
	height:35px;
	background-color:#8B6FBD;
	color:white;
	border-radius:5px;
	border:none;
}

/* 다른 상품 목록 탭 */
#other-prod{
	height:800px;
}

#move-mainpage-button{
	width:160px;
	height:40px;
	border:none;
	background-color:#8B6FBD;
	color:white;
	border-radius:5px;
	margin-left:360px;
	margin-top:20px;
	font-size:15pt;
}
#other-prod-title{
	margin-left:220px;
	font-size:25pt;
}
.card-photo1{
	position: absolute;
	background-color: #F8F9FA;
	width:200px;
	height:160px;
	border: 1px solid #333;
	margin-left:220px;
	margin-top:50px;
} 
.card-desc1{
	position: absolute;
	margin-left:220px;
	margin-top:210px;

}

.card-photo2{
	position: absolute;
	background-color: #F8F9FA;
	width:200px;
	height:160px;
	border: 1px solid #333;
	margin-left:500px;
	margin-top:50px;
} 
.card-desc2{
	position: absolute;
	margin-left:500px;
	margin-top:210px;
}

.card-photo3{
	position: absolute;
	background-color: #F8F9FA;
	width:200px;
	height:160px;
	border: 1px solid #333;
	margin-left:780px;
	margin-top:50px;
} 
.card-desc3{
	position: absolute;
	margin-left:780px;
	margin-top:210px;
}


.card-photo4{
	position: absolute;
	background-color: #F8F9FA;
	width:200px;
	height:160px;
	border: 1px solid #333;
	margin-left:220px;
	margin-top:390px;
} 
.card-desc4{
	position: absolute;
	margin-left:500px;
	margin-top:550px;
}

.card-photo5{
	position: absolute;
	background-color: #F8F9FA;
	width:200px;
	height:160px;
	border: 1px solid #333;
	margin-left:500px;
	margin-top:390px;
} 
.card-desc5{
	position: absolute;
	margin-left:220px;
	margin-top:550px;
}

.card-photo6{
	position: absolute;
	background-color: #F8F9FA;
	width:200px;
	height:160px;
	border: 1px solid #333;
	margin-left:780px;
	margin-top:390px;
} 
.card-desc6{
	position: absolute;
	margin-left:780px;
	margin-top:550px;
}



/* footer */
.hr_footer {
	border: 1px solid #EAEBEE;
}
</style>
<script>
$(function(){
	  $(".dropdown-toggle").click(function(){
	    $(".dropdown-menu").toggle();
	  });
});

//댓글 페이지
</script>
<!-- Boot strap 시작  -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<!-- Boot strap 끗  -->

</head>
<body>
	<div class="wrap">

  <div class="header">
      <%@ include file="../lmh/header.jsp" %>
  </div>

<!-- 유저의 구매자/판매자를 구분하는 스크립트릿 -->
<%
  	String userRole = (String) session.getAttribute("userRole"); // 세션에서 사용자의 역할 정보를 가져옴
  // 사용자가 구매자인지 판매자인지를 판별함
  	boolean isBuyer = "buyer".equals(userRole); 
  	boolean isSeller = "seller".equals(userRole);

	String bookmarkRole= (String)session.getAttribute("bookmarkRole");
	boolean isMarked = "bookmark".equals(bookmarkRole);

	String commentRole =(String)session.getAttribute("commentRole");
	boolean isMyCom = "comment".equals(commentRole);
%>

		<!-- 상품 상세 페이지 내용부분 -->
		<br/>
		<br/>
		<br/>
<div class="buy_page">
<div id="carouselSize">
<div id="carouselExampleIndicators" class="carousel slide"  >

  <div class="carousel-indicators" >
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  
  <div class="carousel-inner" >
	 <div class="carousel-item active">
      <img src="images/carouselEx.PNG" class="d-block w-100  " alt="..." style="">
    </div>
    <div class="carousel-item active">
      <img src="images/carouselEx2.PNG" class="d-block w-100  " alt="..." style="">
    </div> 
  </div>
  
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>



<div id="prod-info">
<input 
		type="button" 
		id="bookmark" 
		onclick=" "
		<% if (isSeller) { %>hidden<% } %>
		<% if(isMarked) { %><%} %>/>
		<!-- 북마크 버튼의 온오프, 체크확인 기능 -->
<div id="prod-title" >상품제목</div>
<hr style="width:450px">
<div id="prod-price">가격</div>
<hr style="width:450px">

<table id="product_info_table" 	>
	<tr>
		<td class="prod-info-dt">상품번호</td><td class="prod-info-dd">가격</td>
	</tr>
	<tr>
		<td  class="prod-info-dt">카테고리</td><td  class="prod-info-dd">카테고리명</td>
	</tr>
	<tr>
		<td class="prod-info-dt" >거래지역</td><td  class="prod-info-dd">거래지역 설정</td>
	</tr>
	</table>
	<hr style="width:450px">
	<table id="product_info_table" >
	<tr>
		<td class="prod-info-dt">관심</td><td  class="prod-info-dd">관심 수</td>
	</tr>
	<tr>
		<td class="prod-info-dt" >문의글</td><td  class="prod-info-dd">문의글 수</td>
	</tr>
	<tr>
		<td class="prod-info-dt" >조회수</td><td  class="prod-info-dd">조회수 종합</td>
	</tr>
</table>
<hr style="width:450px">
	<input type="button" 
			value="상품 정보 수정하기"
			id="updatePrdInfo" 
			onclick="location.href='http://localhost/prj_2/cis/sell_page.jsp'"
			<%--<% if (!isSeller) { %><% } %> --%>
			/>
</div>
</div>
<!-- 판매자 정보 및 페이지스크롤 이동 툴 -->
<div class="sell_user_info">
	<img src="" id="profile-img" />
	<div id="user_name_addr">
		<div ><strong>판매자명</strong></div>
		<div style="font-size:15pt;margin-top:10px">판매자 주소지</div>
		<div style="font-size:15pt;margin-top:10px">판매자 자기소개</div>
	</div>

	<div id="comment-qna-button">
		<input type="button" class="sell_user_comment"value="판매자 코멘트";/>
		<input type="button" class="sell_user_qna"value="문의글"style="float:right"/>
	</div>
</div>
<br /><!-- 판매자 코멘트 -->
<br/>

<div>
<div id="comment-tile-saletag">
<b style="font-size:20pt">판매자코멘트</b>
          <select class="prod-sale-tag" name="판매중" <% if (!isSeller) { %>hidden<% } %>>
             <option value="판매중">판매중</option>
             <option value="거래완료">거래완료</option>
         </select>
</div>
<hr>
<textarea id="user_comment"style="font-size:16pt">제품설명</textarea>
</div>
<br />

<!-- 문의글칸 -->
<!-- form을 table로 가져와야 되는 구조...
다시 작성 필요. -->
<hr class="qna_line">
<br>
<div id = qna-toolbar>
<div class="qna-list">
<br/>
<hr class="qna_line">
<b style="font-size:30pt;">문의글</b>
	<button type="button" id="refreshButton" >
	<img src="http://localhost/prj_2/images/refresh_icon-removebg-preview.png"/>
	</button> 
	<br/>
	<hr class="qna_line">
	<textarea class="requestText" placeholder="문의글"></textarea>
	<div class="comment-tag">
	<input type="text" class="user_id" value=userId><input type="text"class="write-date"value="날짜">
	<br/>
	<i class="fa fa-ellipsis-v" aria-hidden="true"<% if (isMyCom) { %>hidden<% } %>></i>
	</div>
	<hr class="qna_line">
	<textarea class="requestText" placeholder="문의글"></textarea>
	<div class="comment-tag">
	<input type="text" class="user_id" value=userId><input type="text"class="write-date"value="날짜">
	<br/>
	<i class="fa fa-ellipsis-v" aria-hidden="true"<%-- <% if (isMyCom) { %>hidden<% } %> --%>></i>
	</div>
	<hr class="qna_line">
	<textarea class="requestText" placeholder="문의글"></textarea>
	<div class="comment-tag">
	<input type="text" class="user_id" value=userId><input type="text"class="write-date"value="날짜">
	<br/>
	<div class="dropdown">
	<i class="fa fa-ellipsis-v" aria-hidden="true"<%-- <% if (isMyCom) { %>hidden<% } %> --%>></i>

	</div>
	</div>
	<hr class="qna_line">

</div>
<!-- 일정 댓글 수마다 페이지 겟수가 늘어나게 해야됨. -->
	<div id="all-page-button">
		<input type="button"id="page-button-left"value="<">		
		<input type="button"id="page-button-1"value="1">		
		<input type="button"id="page-button-2"value="2">		
		<input type="button"id="page-button-right"value=">">		
	</div> 

	
	<form class="comment_form">
	<div>
		<img src="" id="comment_profile_img"/>
    	<input type="text" id="comment_id" placeholder="구매자 명"/>
   		<textarea placeholder="댓글을 입력하세요" class="comment_content"></textarea>
  		<input type="button"  value="문의하기" class="comment_submit"/>
	</div>
	</form>
	
</div>
<!-- 다른 상품 목록 -->
<hr>
<br>
<div id="other-prod">
<div id="other-prod-title">다른 중고 물품
<input type="button"id="move-mainpage-button"value="상품 더보기 >"onclick="location.href='http://localhost/prj_2/lmh/main_login.jsp'"/>
</div>
<div class="card-photo1"onclick="location.href='http://localhost/prj_2/cis/product_info_login.jsp'">
     <img alt="매물" src="" class="photo">
</div>
   
   <div class="card-desc1">
       <h2 class="card-title">자전거</h2>
      
       <div class="card-price ">
           200,000원
       </div>
       <div class="card-region-name">
          강남구 역삼동
       </div>
       <div class="card-counts">
          <span>조회 150</span>
		</div>
</div><!-- card-photo1 -->

<div class="card-photo2"onclick="location.href='http://localhost/prj_2/cis/product_info_login.jsp'">
     <img alt="매물" src="" class="photo">
</div>
   
   <div class="card-desc2">
       <h2 class="card-title">자전거2</h2>
      
       <div class="card-price ">
           250,000원
       </div>
       <div class="card-region-name">
          강남구 역삼동
       </div>
       <div class="card-counts">
          <span>조회 150</span>
		</div>
</div><!-- card-photo2 -->

<div class="card-photo3"onclick="location.href='http://localhost/prj_2/cis/product_info_login.jsp'">
     <img alt="매물" src="" class="photo">
</div>
   
   <div class="card-desc3">
       <h2 class="card-title">자전거2</h2>
      
       <div class="card-price ">
           250,000원
       </div>
       <div class="card-region-name">
          강남구 역삼동
       </div>
       <div class="card-counts">
          <span>조회 150</span>
		</div>
</div><!-- card-photo3 -->
   

<div class="card-photo4"onclick="location.href='http://localhost/prj_2/cis/product_info_login.jsp'">
     <img alt="매물" src="" class="photo">
</div>
   
   <div class="card-desc4">
       <h2 class="card-title">자전거2</h2>
      
       <div class="card-price ">
           250,000원
       </div>
       <div class="card-region-name">
          강남구 역삼동
       </div>
       <div class="card-counts">
          <span>조회 150</span>
		</div>
</div><!-- card-photo4 -->

   
 <div class="card-photo5"onclick="location.href='http://localhost/prj_2/cis/product_info_login.jsp'">
     <img alt="매물" src="" class="photo">
</div>
   
   <div class="card-desc5">
       <h2 class="card-title">자전거2</h2>
      
       <div class="card-price ">
           250,000원
       </div>
       <div class="card-region-name">
          강남구 역삼동
       </div>
       <div class="card-counts">
          <span>조회 150</span>
		</div>
</div><!-- card-photo5 -->

 <div class="card-photo6">
     <img alt="매물" src="" class="photo">
</div>
   
   <div class="card-desc6">
       <h2 class="card-title">자전거2</h2>
      
       <div class="card-price ">
           250,000원
       </div>
       <div class="card-region-name">
          강남구 역삼동
       </div>
       <div class="card-counts">
          <span>조회 150</span>
		</div>
</div><!-- card-photo4 -->
   
 
</div>
   


<!-- class : buy_page 메인 div -->
<!-- 상품 상세 페이지 내용부분 -->
<!-- footer 부분 -->
   <div class="footer">
      <c:import url="http://localhost/prj_2/lmh/footer.jsp" />
   </div><!-- footer-->
</div>

<!-- footer-->
</body>
</html>