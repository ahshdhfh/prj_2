<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/kbk/main.css">
<style type="text/css">

#container{position: relative; height:500px}

#infoLeft{width: 380px;height: 500px;position: absolute; top:0px; left:20px;padding:40px 20px 0px 20px;text-align:right;}
.profile_img{width:120px;height:120px;border-radius:50%;}
.nickname{font-size:18px;font-weight:700;margin-top:15px;}
.myinfo{font-size:17px;margin-top:15px;}
.profileEdit{cursor:pointer;display:flex;-webkit-box-pack:center;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;height:27px;font-size:13px;color:#757575;border:1px solid #757575;width:100px;margin-left: 250px; margin-top: 20px;}
#infoRight{width: 500px;height: 400px;position: absolute; top:0px; left:450px; border-left: solid 1px #000000; padding: 50px}
.wrap .contents-wrap .order-status-wrap {
    margin-bottom: 39px;
}
.status-list {
    display: -webkit-box;
    display: -ms-flexbox;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    display: -webkit-flex;
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
    -webkit-justify-content: space-between;
    border-top: 1px solid #000;
    border-bottom: 1px solid #ccc;
}

.item {
    -webkit-box-flex: 1;
    -ms-flex: 1;
    flex: 1;
    position: relative;
    padding: 10px 10px 30px;
    text-align: center;
    list-style-type: none;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
.titles{font-size:18px;font-weight:700;margin-top:50px;}

.table2 {
    width: 100%;
    border-top: 1px solid #444444;
    margin-top: 20px;
    border-collapse: collapse;
    text-align: center;
  }
  .tr2 {
    border-bottom: 1px solid #444444;
  }
  .td2{
    padding: 10px;
  }
  #heart{margin-top: 27px}
  
  a{color: #000000;}
</style>
</head>


<body>
<div class="wrap">

<div class="header">
       <div class="logo">
       <a href="http://211.63.89.143/html_prj/project/main_login.jsp"><img id="logo" alt="logo"  src="http://211.63.89.143/html_prj/project/images/logo.PNG"></a>
       </div>
       
       <div class="search_area">
       <input type="search" class="search" placeholder="물품을 검색해 보세요">
       </div><!-- search-->
       
      

 <% request.setCharacterEncoding("UTF-8"); //post 방식의 한글 처리 : request.setCharacterEncoding("변경할 charset");
String nickname=request.getParameter("nickname"); %>


       <div class="div_select_login"> 
         <select class="select_login" onchange="window.location.href=this.value">
             <option value="이름"  hidden><%=nickname %> 님</option>
             <option value="http://localhost/prj_2/kbk/mypage.jsp" >나의 마켓</option>
             <option value="http://211.63.89.152/html_prj/project2nd/sell_page.jsp">상품 등록</option>
             <option value="http://localhost/prj_2/kbk/editInfoPassword.jsp">개인정보수정</option>
         </select> 
       </div>
       

       <div class="logout">
         <a href="http://211.63.89.143/html_prj/project/main_logout.jsp" class="a_login" >로그아웃</a>
       </div>
</div><!-- header-->
   
	<div id="container">

	<div id="infoLeft">
		<div><img src="http://localhost/prj_2/kbk/images/profile.png" class="profile_img"> </div>
		<div class="nickname">xx님</div>
		<div class="myinfo">강남구 xx동</div>
		<div class="myinfo">자기소개가 없습니다.</div>
		<div class="profileEdit"><a href="http://localhost/prj_2/kbk/editProfile.jsp">프로필수정</a></div>
		<div class="profileEdit"><a href="http://localhost/prj_2/kbk/editInfoPassword.jsp">회원정보수정</a></div>
	</div>
	
	<div id="infoRight">
	<div class="titles">나의 거래</div>
	<div class="order-status-wrap">
	<ul class="status-list">
		<li class="item">
 <a href="http://localhost/prj_2/kbk/wishlist.jsp" >
			<img src="http://localhost/prj_2/kbk/images/wishlist.png" width="100px" id="heart">
<br>
				<span>관심목록</span>
				</a>
		</li>
		<li class="item">
						<br>
						<a href="http://localhost/prj_2/kbk/history.jsp">
				<img src="http://localhost/prj_2/kbk/images/complete.png" width="100px">
<br>
				<span>구매내역</span>
				</a>
		</li>
		<li class="item">
			<br>
			<a href="http://localhost/prj_2/kbk/onSale.jsp">
				<img src="http://localhost/prj_2/kbk/images/shoplist.png" width="100px">
<br>
				<span>판매상품</span>
				</a>
		</li>
	</ul>
</div>
		<div>
		<div class="titles">나의 동네생활</div>
		<table class="table2">
		<tr class="tr2">
		<td><img src="http://localhost/prj_2/kbk/images/comment.png" width="50px"></td>
		<td><a href="http://localhost/prj_2/kbk/comment.jsp" >나의 댓글</a></td>
		<td>|</td>
		<td><img src="http://localhost/prj_2/kbk/images/shoplist.png" width="50px"></td>
		<td><a href="http://localhost/prj_2/kbk/complete.jsp" >거래완료</a></td>
		</tr>
		</table>
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