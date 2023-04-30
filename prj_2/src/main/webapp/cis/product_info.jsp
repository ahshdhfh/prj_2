<%@page import="prj_2.SetCommVO"%>
<%@page import="prj_2.RegisterCommentDAO"%>
<%@page import="prj_2.ProductDetailVO"%>
<%@page import="prj_2.ShowProdDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강남콩마켓</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/main.css">
<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lms/font-awesome/css/font-awesome.min.css">
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
.bookmark {
	position:relative;
	float:right;
	width:42px;
	height:41px;
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
	font-size:20pt;
	width:250px;
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
	height:100px;
	border:none;
	background-color: #e0e0e0;
	resize:none;
	font-size:12pt;
}

.responseText{
	width:600px;
	height:100px;
	border:none;
	background-color: #e0e0e0;
	resize:none;
	font-size:12pt;
}

.comment-tag{
	text-align: right;
}
.user_id{
	border:none;
	width:100px;
	margin-top:20px;
	text-align:right;
	background-color: #e0e0e0;
}
.write-date{
	border:none;
	width:100px;
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
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 시작 -->


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
<script>

<%// 세션에서 값 가져오기
LoginSessionVO lpVO = (LoginSessionVO)session.getAttribute("loginData");
String userId=null;
String userImg=null;
String userNickName=null;
	try{
	userId=lpVO.getUserId();
	userImg=lpVO.getUserImg();
	userNickName=lpVO.getNickName();
	}catch(NullPointerException ne){
		 userId="guest";
		userImg="http://localhost/prj_2/kbk/upload/profile.png";
		userNickName="guest";
	}
	
	
%>
<%
String prodNum=request.getParameter("prodNum");
ShowProdDAO spDAO=new ShowProdDAO();

	try{
	ProductDetailVO pdVO=spDAO.showProdInfo(Integer.parseInt(prodNum));
	pageContext.setAttribute("prodimgs", pdVO.getProdImg());

%>
$(function(){
	
	$("#prodSelectContion").change(function() {
		var ch=$("#prodSelectContion option:selected").val();
		  <% if(lpVO!=null) { %>	
		  if(ch=='거래완료'){			  
	  		$("#userIdAdoption").val("<%=lpVO.getUserId()%>");
	  		$("#prodNumAdoption").val("<%=request.getParameter("prodNum")%>");
	  		$("#sellerIdAdoption").val('없음');
	  		$("#adoptfrm").submit();	 		  		
		  }
	  	<%}%>
	});
	
	
	<%if(request.getParameter("interflag")==null){%>
 	/* 들어왔을때 관심상품이였는지 확인 */
 	<% if(lpVO==null) {%><% }else{%>	
		$("#userIdinter").val("<%=lpVO.getUserId()%>");
  		$("#prodNuminter").val("<%=request.getParameter("prodNum")%>");
  		$("#checkinter").val("3");
  		$("#interfrm").submit();
	<%}%>   
	<%}%>
		
	<%if(request.getParameter("interflag")!=null){%>
	 	$("#heart").attr('src','http://localhost/prj_2/images/<%=request.getParameter("interflag")%>'); 
	<%}%>
	 	
		/* 대댓글 */
	  $('.replyevent').on('click', '#replycomInsert', function() {
 		  <% if(lpVO==null) {%>alert("입력권한이 없습니다.");<% }else{%>	
		  		$("#userIdre").val("<%=lpVO.getUserId()%>");
		  		$("#prodNumre").val("<%=request.getParameter("prodNum")%>");
		  		$("#replyfrm").submit();
			 		  		
		  	<%}%>  
		});
	  
	
	  $(".dropdown-toggle").click(function(){
	    $(".dropdown-menu").toggle();
	  });
	  
	  /* 댓글  */
	  $("#commentInsert").click(function() {
		  <% if(lpVO==null) {%>alert("로그인해주세요");<% }else{%>	
		  		$("#userId").val("<%=lpVO.getUserId()%>");
		  		$("#prodNum").val("<%=request.getParameter("prodNum")%>");
		  		$("#comfrm").submit();
			 		  		
		  	<%}%> 
	  });
	  
	    
	  
	  		/*관심목록 추가기능  */
			$("#heart").click(function() {
				<% if(lpVO==null) {%>alert("로그인해주세요");<% }else{%>	
				$("#heart").fadeOut(250).fadeIn(200);
				var src=$(this).attr('src');
				
				/*delete */
				if(src=='http://localhost/prj_2/images/heart_on.svg'){
					 $(this).attr('src','http://localhost/prj_2/images/heart_off.png'); 
			  		$("#userIdinter").val("<%=lpVO.getUserId()%>");
			  		$("#prodNuminter").val("<%=request.getParameter("prodNum")%>");
			  		$("#checkinter").val("1");
			  		$("#interfrm").submit();
				}
				/*insert  */
				if(src=='http://localhost/prj_2/images/heart_off.png'){
				 $(this).attr('src','http://localhost/prj_2/images/heart_on.svg'); 
			  		$("#userIdinter").val("<%=lpVO.getUserId()%>");
			  		$("#prodNuminter").val("<%=request.getParameter("prodNum")%>");
			  		$("#checkinter").val("2");
			  		$("#interfrm").submit();
					
				}//end else
				<%}%> 
			});//click
	  
});

function adoptionSelect(seller){
	/* 채택버튼 누르면 채택하기  */
			
		  <% if(lpVO!=null) { %>	
	  		$("#userIdAdoption").val("<%=lpVO.getUserId()%>");
	  		$("#prodNumAdoption").val("<%=request.getParameter("prodNum")%>");
	  		$("#sellerIdAdoption").val(seller);
	  		$("#adoptfrm").submit();	 		  		
	  	<%}%>
}


function replyInput(num,commNum) {
	var tbody="";
	var tbody2="";
	var temp="#replyevent"+num+":last";
	var temp1="#replyevent"+num+" tr";
	var temp2="#replyevent"+num+" > tbody";
	var temp3="#plusqna"+num;
	
	tbody="<tr><td>"+
	"<div><form class='comment_form' name='replyfrm' id='replyfrm' method='post' action='reply_insert_process.jsp' >"+
	"<img src='<%=userImg%>' id='comment_profile_img'/><input type='text' id='comment_id' placeholder='<%=userId%>' readonly='readonly'/>"+
	"<textarea placeholder='답글을 입력하세요' class='comment_content' name='replycomminput'></textarea>"+
	"<input type='hidden' name='userIdre' id='userIdre' >"+
	"<input type='hidden' name='prodNumre' id='prodNumre'>"+
	"<input type='hidden' name='commNumre' id='commNumre' value='"+commNum+"'>"+
	"<input type='button' value='답변하기' class='comment_submit' id='replycomInsert' />"+
	"</form></div></td></tr>";
	
	
	$(temp).append( tbody );
	
	tbody2="<hr class='qna_line'>";
	$(temp3).append( tbody2 );
	
    if($(temp3).children().length > 1 ){
    	$(temp3).empty(); //tbody 모두 삭제
    	
    }//end if
	
    
    if($(temp1).length >1 ){
    	$(temp2).empty(); //tbody 모두 삭제
    }//end if
    
}

//댓글 페이지
</script>

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
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5" aria-label="Slide 6"></button>
  </div>
  
  <div class="carousel-inner" >
 <c:forEach var="imgs" items="${prodimgs}" varStatus="i" begin="0">
	 <div class="carousel-item${i.index==0 ?" active":""}">
      <img src="${imgs}" class="d-block w-100" alt="..." style="" width="100%" height="600px">
    </div> 
 </c:forEach> 
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
 <form name="interfrm" id="interfrm" method="post" action="interest_list_process.jsp">
<img src="http://localhost/prj_2/images/heart_off.png" class="bookmark" id="heart">
<input type="hidden" name="userIdinter" id="userIdinter" >
<input type="hidden" name="prodNuminter" id="prodNuminter" >	
<input type="hidden" name="checkinter" id="checkinter" >	
<input type="hidden" name="sellerId" id="sellerId" value="<%=pdVO.getuserId()%>" >	
</form> 
			
<div id="prod-title" ><%=pdVO.getProdName() %> <span style="font-size: 15px; color: #600F94; font-weight: bold"><%= pdVO.getPrice()==0?"\'나눔상품\'":""%></span> </div>
<hr style="width:450px">
<div id="prod-price"><fmt:formatNumber pattern="#,###,###" value='<%=pdVO.getPrice()%>' />원</div>
<hr style="width:450px">

<table id="product_info_table" 	>
	<tr>
	</tr>
		<td class="prod-info-dt">상품번호</td><td class="prod-info-dd"><%=pdVO.getProdNum()%></td>
	<tr>
		<td  class="prod-info-dt">카테고리</td><td  class="prod-info-dd"><%=pdVO.getCategoryName()%></td>
	</tr>
	<tr>
		<td class="prod-info-dt" >거래지역</td><td  class="prod-info-dd"><%=pdVO.getAreaName()%></td>
	</tr>
	</table>
	<hr style="width:450px">
	<table id="product_info_table" >
	<tr>
		<td class="prod-info-dt">관심</td><td  class="prod-info-dd"><%=pdVO.getInterestCnt()%>개</td>
	</tr>
	<tr>
		<td class="prod-info-dt" >문의글</td><td  class="prod-info-dd"><%=pdVO.getCommCnt()%>개</td>
	</tr>
	<tr>
		<td class="prod-info-dt" >조회수</td><td  class="prod-info-dd"><%=pdVO.getViewCnt()%>회</td>
	</tr>
</table>
<hr style="width:450px">
<%
if(lsVO!=null){
	
if(lsVO.getUserId().equals(pdVO.getuserId())){//로그인한 사람과 상품올린사람의 아이디가 일치할때 수정하기버튼 나옴
%>	
	<input type="button" 
			value="상품 정보 수정하기"
			id="updatePrdInfo" 
			onclick="location.href='http://localhost/prj_2/cis/sell_page.jsp?prodNum=<%=pdVO.getProdNum() %>'"
			<%--<% if (!isSeller) { %><% } %> --%>
			/>
<%}
}
%>
</div>
</div>
<!-- 판매자 정보 및 페이지스크롤 이동 툴 -->
<div class="sell_user_info">
	<img src="<%=pdVO.getuserImg()%>" id="profile-img" />
	<div id="user_name_addr">
		<div ><strong><%=pdVO.getuserId()%></strong></div>
		<div style="font-size:15pt;margin-top:10px"><%=pdVO.getAreaName()%></div>
		<div style="font-size:15pt;margin-top:10px"><%=pdVO.getpersonalIntro()%></div>
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


<%
if(lsVO!=null){
	
if(lsVO.getUserId().equals(pdVO.getuserId())){//로그인한 사람과 상품올린사람의 아이디가 일치할때 판매중/거래완료 바꾸는 기능이 나옴
%>
          <select class="prod-sale-tag" name="prodSelectContion" id="prodSelectContion">
             <option value="판매중">판매중</option>
             <option value="거래완료">거래완료</option>
         </select>
<%}
}
%>
     
</div>
<hr>
<textarea id="user_comment"style="font-size:16pt" readonly="readonly"><%=pdVO.getdetailTxt()%></textarea>
</div>
<br />

<!-- 문의글칸 -->
<!-- form을 table로 가져와야 되는 구조... -->
<%  RegisterCommentDAO rcDAO = new RegisterCommentDAO();
try{
int pr=Integer.parseInt(request.getParameter("prodNum"));
List<SetCommVO> list= rcDAO.setCommList(pr); 
pageContext.setAttribute("commList", list);
}catch(NumberFormatException e){
}
/* for(SetCommVO str : list){
	System.out.println(str.getProdComment()); 
} */
%>
<hr class="qna_line">
<br>
<div class="qna-list">
<br/>
<div id = qna-toolbar>
<b style="font-size:30pt;">문의글</b>
<!-- 문의글 바로가기  -->
	<br/>
	<hr class="qna_line">
<c:forEach var="scVO" items="${commList}" varStatus="i" begin="0">
	<c:if test="${ !empty scVO.prodComment}">
	<table>
	<tr>
	<td>	<textarea class="requestText" placeholder="문의글" readonly="readonly">${scVO.prodComment}</textarea></td>
	<td style="vertical-align: top; " >
	<div class="comment-tag" style="margin-left: 60px">
	<input type="text" class="user_id" value="${scVO.userId}"><br>
	<input type="text"class="write-date" value="${scVO.writeDate}">
	</div>
	</td>
	</tr>
	<tr>
	<td rowspan="2" >
		<input type="button" value="답글" onclick="replyInput(${i.index},${scVO.commNum})"  style="float: left"/>
	<%
if(lsVO!=null){
	
if(lsVO.getUserId().equals(pdVO.getuserId())){//로그인한 사람과 상품올린사람의 아이디가 일치할때 채택버튼 생성
%>

		<form name="adoptfrm" id="adoptfrm" method="post" action="adoption_process.jsp">
		<input type="hidden" name="userIdAdoption" id="userIdAdoption" >
   		<input type="hidden" name="prodNumAdoption" id="prodNumAdoption" >
   		<input type="hidden" name="sellerIdAdoption" id="sellerIdAdoption" >
		<input type="button" value="채택"  id="adoption" name="adoption" onclick="adoptionSelect('${scVO.userId}')" />
		</form>

<%}	
}
%>		
	</td>
	</tr>
	</table >
	<hr class="qna_line">
	<table id="replyevent${i.index}" name="replyevent" class="replyevent">
	<!--버튼클릭하면 여기에 생성됨  -->
	</table>
	<div id="plusqna${i.index}">
	</div>
	</c:if>
	<c:if test="${ !empty scVO.replyComment}">
	<table>
	<tr>
	<td><img src="http://localhost/prj_2/cis/replyicon.PNG" style="width: 20px;"><textarea class="responseText" placeholder="문의글" readonly="readonly" style="margin-left: 50px;">${scVO.replyComment}</textarea></td>
	<td style="vertical-align: top; " >
	<div class="comment-tag" style="margin-left: 60px">
	<input type="text" class="user_id" value="${scVO.userId}"><br>
	<input type="text"class="write-date" value="${scVO.writeDate}">
	</div>
	</td>
	</tr>
	<tr>
	<td rowspan="2">	
	</td>
	</tr>
	</table>
	<hr class="qna_line">
	<table id="replyevent${i.index}" name="replyevent" >
	</table>
	<div id="plusqna${i.index}">
	</div>
	</c:if>
</c:forEach>
	
<!-- 일정 댓글 수마다 페이지 겟수가 늘어나게 해야됨. -->
	<div id="all-page-button">
<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="">1</a></li>
    <li class="page-item"><a class="page-link" href="">2</a></li>
    <li class="page-item"><a class="page-link" href="">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>		
	</div> 

	<div>
	<form class="comment_form" name="comfrm" id="comfrm" method="post" action="comm_insert_process.jsp">
		<img src="<%=userImg %>" onerror="this.onerror=null; this.src='http://localhost/prj_2/kbk/upload/profile.png';" id="comment_profile_img"/>
    	<input type="text" id="comment_id" placeholder="<%=userId %>" readonly="readonly"/>
   		<textarea placeholder="댓글을 입력하세요" class="comment_content" id="comminput" name="comminput" ></textarea>
   		<input type="hidden" name="userId" id="userId" >
   		<input type="hidden" name="prodNum" id="prodNum" >
  		<input type="button"  value="문의하기" class="comment_submit" id="commentInsert" />
	</form>
	</div>
	
</div>
</div>
<!-- 문의글  -->
<!-- 다른 상품 목록 -->
<hr>
<br>
<div id="other-prod">
<div id="other-prod-title">다른 중고 물품
<input type="button"id="move-mainpage-button"value="상품 더보기 >"onclick="location.href='http://localhost/prj_2/lmh/buy.jsp'"/>
</div>
<%
MainProdDAO MainProdDAO = new MainProdDAO();
List<MainProdVO> MainProdlist = MainProdDAO.CategoryData("","","");	

pageContext.setAttribute("prodPopular", MainProdlist);

%>
<c:forEach var="MainProdVO" items="${prodPopular}" varStatus="i" begin="0">

<c:if test="${i.count <= 6}">
<div class="card-photo${i.index+1}"onclick="location.href='http://localhost/prj_2/cis/product_info.jsp'">
     <a href="http://localhost/prj_2/cis/product_info.jsp?prodNum=${MainProdVO.prodNum}"><img src="${MainProdVO.prodImg}" class="photo" width="100%" height="100%"></a> 
</div>
   <div class="card-desc${i.index+1}">
       <span class="card-title"><strong>${MainProdVO.prodName}</strong></span>
       <br>   
       <div class="card-price "><fmt:formatNumber pattern="#,###,###" value="${MainProdVO.price}" />원</div>
       <div class="card-region-name"> ${MainProdVO.areaName}</div>
       <div class="card-counts"><span>조회${MainProdVO.viewCnt}</span></div>
</div>

</c:if>
</c:forEach>
</div> <!-- 마지막 div  -->
   


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
<%		}catch(NumberFormatException ne){
			response.sendRedirect("http://localhost/prj_2/lmh/main.jsp");
		}%>