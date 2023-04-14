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
#input-title{
width:500px;
height:30px;
border-radius: 5px;
margin-left:20px;
}

#select_category{
width:150px;
height:40px;
margin-left:20px;

}
#input-price{
width:170px;
height:40px;
border-radius: 5px;
margin-left:20px;
}

#share-check{

margin-left:20px;
}
#input-explain{
width:520px;
height:220px;
border-radius: 5px;
resize:none;
}

#input-location{
width:440px;
height:50px;
border-radius: 5px;
}

#cancel-button{
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
#complete-button{
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
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
<script type="text/javascript">
$(function(){
	$("#complete-button").click(function(){
		
		/* 상품 이미지 */
/* 		if($("#input-title").val()==""){
			chkNull(); */
		//}//end if */
		 
		/* 상품 제목 */
		if($("#input-title").val()==""){
			chkNull();
		}//end if
		
		/* 카테고리 */
		if($("#select_category").val()==""){
			chkNull();
		}//end if
		
		/* 가격 */
		if($("#input-price").val()==""){
			chkNull();
		}//end if
		
		/* 자세한 설명 */
		if($("#input-explain").val()==""){
			chkNull();
		}//end if
		
		/* 거래희망장소 */
		if($("#input-location").val()==""){
			chkNull();
		}//end if
		
	
	});//click
});//ready

function chkNull(){
	
 	/* 상품 사진 */
	//if($("#input-title").val()==""){
		//alert("사진은 최소 1개 이상 첨부해야 합니다!");
		//$("#input-title").focus();
		//return; 
	//}//end if
	/* 상품제목 */
	if($("#input-title").val()==""){
		alert("제목을 입력해주세요!");
		$("#input-title").focus();
		return;
	}//end if
	/* 카테고리 */
	if($("#select_category").val()==""){
		alert("상품의 카테고리를 설정해주세요!");
		$("#select_category").focus();
		return;
	}//end if
	/* 가격 */
	if($("#input-price").val()==""){
		alert("상품의 가격을 설정해주세요!");
		$("#input-price").focus();
		return;
	}//end if
	/* 자세한 설명 */
	if($("#input-explain").val()==""){
		alert("상품에 대한 설명을 적어주세요!");
		$("#input-explain").focus();
		return;
	}//end if
	/* 거래희망장소 */
	if($("#input-location").val()==""){
		alert("거래 위치를 설정해주세요!");
		$("#input-location").focus();
		return;
	}//end if
	
	$("#frm").submit();
}//chkNull
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
   
 <br/>
 <br/>
 <br/>
 <!-- 상품 등록 페이지 내용부분 -->  
<div style="font-size:30pt;"><strong>기본 정보</strong></div>
<hr>
<br/>
<form id="frm" action="http://localhost/prj_2/cis/product_info_login.jsp" method="post">
<div>상품이미지(0/6)
<div class="input-img">클릭해주세요</div>
</div>
<pre id="caution">
* 상품 이미지는 640x640에 최적화 되어 있습니다.
- 상품 이미지는 PC에서는 1:1, 모바일에서는 1:1.23 비율로 보여집니다.
- 이미지는 상품 등록 시 정사각형으로 잘려서 등록됩니다.
- 이미지를 클릭할 경우 원본 이미지를 확인할 수 있습니다.
- 이미지를 클릭 후 이동하여 등록순서를 변경할 수 있습니다.
- 큰 이미지일 경우 이미지가 깨지는 경우가 발생할 수 있습니다.
최대 지원 사이즈인 640 X 640으로 리사이즈 해서 올려주세요.(개당 이미지 최대 10M)
</pre>
<br/>
<hr>
<br>
<div>제목*   
<input type="text"id="input-title"placeholder="내용을 입력해주세요">
<!-- <input type="text"id="input-title"> -->
</div>
<br>
<hr>
<br/>
<div>카테고리*   
          <select id="select_category">
             <option value="자전거">자전거</option>
             <option value="의류">의류</option>
             <option value="용품">용품</option>
             <option value="부품">부품</option>
         </select>
</div>
<br/>
<hr>
<br/>
<div>가격*  
<input type="text"id="input-price"placeholder="숫자만 입력해주세요">원
<input type="checkbox"id="share-check">나눔하기
<!-- 나눔하기 체크 시 가격을 0원으로 띄우는 기능 -->
</div>
<br/>
<hr>
<br/>
<div style="font-size:20pt">자세한 설명* </div>
<br/>
<textarea id="input-explain"></textarea>
<br/>
<br/>
<br/>
<br/>
<hr>

<br/>
<div>거래희망장소*  
<input type="text" id="input-location"placeholder="위치추가 >">
</div>
<br/>
<br/>
<hr>

<br/>
<br/>
<br/>
<br/>
<!-- 취소/작성완료 버튼 -->
<div class="button-check">
<input type="button"id="cancel-button"value="취소"onclick="location.href='http://localhost/prj_2/lmh/main_login.jsp'">
<input type="button"id="complete-button"value="작성완료">
<!-- onclick="location.href='http://localhost/prj_2/cis/product_info_login.jsp'" -->
</div>
</form>
<br/>
<br/>
<br/>
<br/>
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