<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
#buy_page_top{
	height:800px;
}
/* 상품 이미지 틀 */

.img_file_set{
	float:left;
}
.main_img {
	positon:absolute;
	border: 1px solid #333;

	width: 660px;
	height: 620px;
	
	
}
 
#button_left {
	position:relative;
	top:280px;
	left:20px;
	font-size:40px;
	border:none;
	background-color:#ffffff;
}

#button_right {
	position:relative;
	top:280px;
	left:550px;
	font-size:40px;
	border:none;
	background-color:#ffffff;
}

.sub_img{
	position:relative;
	width:120px;
	height:120px;
	margin-top:10px;
	border: 1px solid #333;
}
/* 상품 이미지 틀 end */


/* 북마크 & 쉐어버튼 */
#bookmark {
	position:relative;
	float:right;
	width:42px;
	height:41px;
	background-image: url('http://localhost/prj_2/images/free-icon-love-7476962.png');
	border:none;
	background-color:white;
	margin-right:50px;
}

#sharebutton {
	position:relative;
	float:right;
	width:100px;
	height:30px;
}

/* 북마크 & 쉐어버튼 */
/* 상품 제목 및 정보 */
.product_info {
	width: 450px;
	height: 580px;
	margin-left: 700px ;
}

.prod-info-line{
	width:450px;
}

.prod-info-dt{
	margin-left: 30px ;
	font-size:22px;
	float:left;
}
.prod-info-dd{
	margin-left:180px;
	font-size:19px;
}

#prod-title{
	font-size:30px;
}

#prod-price{
	font-size:30px;
	margin-left: 30px ;
}

#qna_link_button {
	width: 450px;
	height: 84px;
	float: right;
	margin-left:700px;
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
	height:220px;
	
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
  	padding: 10px 20px;;
  	background-color: #ffffff;
  	border: 1px solid #000000;
  	margin-top:20px;
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
  width: 770px;
  resize:vertical;
  border: 1px solid #cccccc;
  border-radius: 2px;
  padding: 10px;
  font-size: 14px;
  color: #666666;
}

.comment_submit{
	margin-left:720px;
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
	margin-top:400px;
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
	margin-top:400px;
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
	margin-top:400px;
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
			</div>
			<!-- search-->

			<div class="div_select_login"> 
            	<select class="select_login" onchange="window.location.href=this.value">
             		<option value="나의 마켓">나의 마켓</option>
            	 	<option value="http://localhost/html_prj/project/mypage.jsp">나의 마켓</option>
             		<option value="http://localhost/prj_2/cis/sell_page.jsp">상품 등록</option>
             		<option value="http://localhost/html_prj/project/EditInfoPassword.jsp">개인정보수정</option>
         		</select>
     		  </div>

       		<div class="logout">
         		<a href="http://localhost/prj_2/cis/product_info_logout.jsp" class="a_login" >로그아웃</a>
      	 	</div>
		</div>
		<!-- header-->
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
<div id = "buy_page_top">
<div class="img_file_set">
		<div class="main_img">
		<img src="">
		<input type="button" id="button_left" value="<">
		<input type="button" id="button_right" value=">">
	</div>
	<br />
<div class="sub_img">
	부이미지 <img src="">
</div> 
</div><!-- class="img_file_set" -->
<button 
		type="button" 
		id="bookmark" 
		onclick=" "
		<% if (isSeller) { %>hidden<% } %>
		<% if(isMarked) { %><%} %>
		></button>
		<!-- 북마크 버튼의 온오프, 체크확인 기능 -->
<br/>
<div class="product_info">
	<div id="prod-title"style="font-size:30pt"><strong>상품제목</strong></div>
	<hr class="prod-info-line">
	<div id="prod-price"><strong>가격</strong></div>
	<hr class="prod-info-line">
	<div class="prod-info">
		<dl class="prod-info-row">
			<dt class="prod-info-dt">상품번호</dt>
			<dt class="prod-info-dd">001</dt>
		</dl>
		<dl class="prod-info-row">
			<dt class="prod-info-dt">카테고리</dt>
			<dd class="prod-info-dd">자전거</dd>
		</dl>
		<dl class="prod-info-row">
			<dt class="prod-info-dt">거래지역</dt>
			<dd class="prod-info-dd">논현동</dd>
		</dl>
		<hr class="prod-info-line">
		<dl class="prod-info-row">
			<dt class="prod-info-dt">관심</dt>
			<dd class="prod-info-dd">40회</dd>
		</dl>
		<dl class="prod-info-row">
			<dt class="prod-info-dt">문의글</dt> 
			<dd class="prod-info-dd">15개</dd>
		</dl>
		<dl class="prod-info-row">
			<dt class="prod-info-dt">조회수</dt>
			<dd class="prod-info-dd">30</dd>
		</dl>
		<hr class="prod-info-line">
	</div>
	<br/>
	<br/>
	<button type="button" 
			id="qna_link_button" 
			onclick="location.href='http://localhost/prj_2/cis/sell_page.jsp'"
			<% if (!isSeller) { %>hidden<% } %>
			>상품 정보 수정하기</button>
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

	<!-- class="sell_user_comment_qna" -->
</div>

	<div>
		<input type="button" class="sell_user_comment"value="판매자 코멘트";/>
		<input type="button" class="sell_user_qna"value="문의글"style="float:right"/>
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
<textarea id="user_comment"style="font-size:20pt">제품설명</textarea>
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
	<i class="fa fa-ellipsis-v" aria-hidden="true"<%-- <% if (isMyCom) { %>hidden<% } %> --%>></i>
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
	<div class="comment_form">
		<img src="" id="comment_profile_img"/>
    	<input type="text" id="comment_id" placeholder="구매자 명"/>
   		<textarea placeholder="댓글을 입력하세요" class="comment_content" style="font-size:12pt;"></textarea>
  		<input type="button"  value="문의하기" class="comment_submit"/>
	</div>
	
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
   
   

</div>

<!-- class : buy_page 메인 div -->
<!-- 상품 상세 페이지 내용부분 -->
<!-- footer 부분 -->
<div class="footer">
			<hr class="hr_footer">

				<div class="footer_text">
					대표 김용현, 황도연 | 사업자번호 375-87-00088<br> 직업정보제공사업 신고번호
					2016-서울서초-0051<br> 주소 서울특별시 구로구 디지털로 30길 28, 609호 (당근서비스)<br>
					전화 1544-9796 | 고객문의 cs@daangnservice.com<br>
				</div>


			</div>
			<!-- footer-->
</div>
</body>
</html>