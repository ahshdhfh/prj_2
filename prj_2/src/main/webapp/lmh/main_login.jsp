<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <!-- 추가 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강남콩마켓</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/main.css">
<style type="text/css">

.container1{
height: 120px; 
position: relative; 
}

.text_buy{
font-size: 23px;
font-weight: bold;
position: absolute;
top : 50px;
left: 250px; 
}

.a_buy{
color: #000;
}

.bike{
position: absolute;
font-size: 18px;
top : 53px;
left: 430px; 
}

.clothes{
position: absolute;
font-size: 18px;
top : 53px;
left: 555px; 
}

.goodes{
position: absolute;
font-size: 18px;
top : 53px;
left: 680px; 
}

.component{
position: absolute;
font-size: 18px;
top : 53px;
left: 800px; 
}

/******************************** 인기매물***************************************/

.container2{
height: 1000px; 
position: relative; 
background-color: #F7F7F7;}


.text_popular_sale{
position: absolute;
font-size: 35px;
font-weight: bold;
top : 50px;
left: 450px;
}

.photo{
  width: 135px;
  height: 135px;
  object-fit: cover;
  border-radius: 10px;
}





.card-photo1{
position: absolute;
background-color: #F8F9FA;
top : 150px;
left: 275px;
} 
.card-desc1{
position: absolute;
top : 290px;
left: 275px;
}

.card-photo2{
position: absolute;
background-color: #F8F9FA;
top : 150px;
left: 450px;
} 
.card-desc2{
position: absolute;
top : 290px;
left: 450px;
}

.card-photo3{
position: absolute;
background-color: #F8F9FA;
top : 150px;
left: 620px;
} 
.card-desc3{
position: absolute;
top : 290px;
left: 620px;
}


.card-photo4{
position: absolute;
background-color: #F8F9FA;
top : 150px;
left: 790px;
} 
.card-desc4{
position: absolute;
top : 290px;
left: 790px;
}

.card-photo5{
position: absolute;
background-color: #F8F9FA;
top : 480px;
left: 275px;
} 
.card-desc5{
position: absolute;
top : 620px;
left: 275px;
}

.card-photo6{
position: absolute;
background-color: #F8F9FA;
top : 480px;
left: 450px;
} 
.card-desc6{
position: absolute;
top : 620px;
left: 450px;
}

.card-photo7{
position: absolute;
background-color: #F8F9FA;
top : 480px;
left: 620px;
} 
.card-desc7{
position: absolute;
top : 620px;
left: 620px;
}

.card-photo8{
position: absolute;
background-color: #F8F9FA;
top : 480px;
left: 790px;
} 
.card-desc8{
position: absolute;
top : 620px;
left: 790px;
}



.more_popular_items{
position: absolute;
font-size: 18px;
top : 850px;
left: 525px; 
}





.container3{
height: 140px; 
position: relative; 
}

.hr_footer{
border: 1px solid #EAEBEE;
}


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
             <option value="http://211.63.89.134/prj_2/김보경/mypage.jsp" >나의 마켓</option>
             <option value="http://211.63.89.152/prj_2/조익상/sell_page.jsp">상품 등록</option>
             <option value="http://211.63.89.134/prj_2/김보경/EditInfoPassword.jsp">개인정보수정</option>
         </select> 
       </div>
       

       <div class="logout">
         <a href="http://localhost/prj_2/lmh/main_logout.jsp" class="a_login" >로그아웃</a>
       </div>
  </div><!-- header-->
   
   
   <div class="container1">
        <div class="text_buy">
        구매하기 
        </div>
        
        <div class="bike">
        <a href="http://localhost/prj_2/project/buy.jsp"  class="a_buy"">자전거</a>
         </div> 
         
        <div class="clothes">
        <a href="http://localhost/prj_2/project/buy.jsp"  class="a_buy"">의류</a>
        </div>
        
        <div class="goodes">
        <a href="http://localhost/prj_2/project/buy.jsp"  class="a_buy"">용품</a>
        </div>
        
        <div class="component">
        <a href="http://localhost/prj_2/project/buy.jsp"  class="a_buy"">부품</a>
        </div>
   </div><!-- container-->
        
        
   <div class="container2">
   
        <div class="text_popular_sale"> 
        우리동네 인기매물
        </div> 
  
        
  
   <div class="card-photo1">
   <a href="http://211.63.89.152/prj_2/project2nd/product_info_login.jsp">
     <img alt="매물" src="http://localhost/prj_2/project/images/bike.PNG" class="photo">
     </a>
   </div>
   
   <div class="card-desc1">
       <h2 class="card-title">자전거</h2>
      
        <div class="card-price ">
         <c:set var="price" value="200000" />
          <fmt:formatNumber type="number" value="${price}"  pattern="#,###"/>원 
       </div>
       <div class="card-region-name">
          강남구 역삼동
       </div>
       <div class="card-counts">
          <span>조회 150</span>
       </div>
      
   </div><!-- card-photo1 -->
   
   
   <div class="card-photo2">
     <a href="http://211.63.89.152/prj_2/project2nd/product_info_login.jsp">
     <img alt="매물" src="http://localhost/prj_2/project/images/clothes.PNG" class="photo">
     </a>
   </div>
   
   <div class="card-desc2">
       <h2 class="card-title">바람막이</h2>
      
       <div class="card-price ">
           <c:set var="price" value="30000" />
          <fmt:formatNumber type="number" value="${price}"  pattern="#,###"/>원 
       </div>
       <div class="card-region-name">
          강남구 역삼동
       </div>
       <div class="card-counts">
          <span>조회 140</span>
       </div>
    </div><!-- card-photo2 -->
       
    <div class="card-photo3">
     <a href="http://211.63.89.152/prj_2/project2nd/product_info_login.jsp">
     <img alt="매물" src="http://localhost/prj_2/project/images/navigation.PNG" class="photo">
     </a>
   </div>
   
   <div class="card-desc3">
       <h2 class="card-title">네비게이션</h2>
      
       <div class="card-price ">
         <c:set var="price" value="500000" />
          <fmt:formatNumber type="number" value="${price}"  pattern="#,###"/>원 
       </div>
       <div class="card-region-name">
          강남구 역삼동
       </div>
       <div class="card-counts">
          <span>조회 130</span>
       </div>
       
  
   </div><!-- card-photo3 -->
   
     <div class="card-photo4">
     <a href="http://211.63.89.152/prj_2/project2nd/product_info_login.jsp">
     <img alt="매물" src="http://localhost/prj_2/project/images/bike2.PNG" class="photo">
     </a>
   </div>
   
   <div class="card-desc4">
       <h2 class="card-title">자전거</h2>
      
       <div class="card-price">
           <c:set var="price" value="200000" />
          <fmt:formatNumber type="number" value="${price}"  pattern="#,###"/>원 
       </div>
       <div class="card-region-name">
          강남구 역삼동
       </div>
       <div class="card-counts">
          <span>조회 120</span>
       </div> 
       
   </div><!-- card-photo4 -->
   
   
    <div class="card-photo5">
     <a href="http://211.63.89.152/prj_2/project2nd/product_info_login.jsp">
     <img alt="매물" src="http://localhost/prj_2/project/images/bike3.PNG" class="photo">
     </a>
   </div>
   
   <div class="card-desc5">
       <h2 class="card-title">자전거</h2>
      
       <div class="card-price">
           <c:set var="price" value="50000" />
          <fmt:formatNumber type="number" value="${price}"  pattern="#,###"/>원 
       </div>
       <div class="card-region-name">
          강남구 역삼동
       </div>
       <div class="card-counts">
          <span>조회 110</span>
       </div> 
       
   </div><!-- card-photo5 -->
   
   
    <div class="card-photo6">
     <a href="http://211.63.89.152/prj_2/project2nd/product_info_login.jsp">
     <img alt="매물" src="http://localhost/prj_2/project/images/bike_shoes.PNG" class="photo">
     </a>
   </div>
   
   <div class="card-desc6">
       <h2 class="card-title">자전거신발</h2>
      
       <div class="card-price">
          <c:set var="price" value="100000" />
          <fmt:formatNumber type="number" value="${price}"  pattern="#,###"/>원 
       </div>
       <div class="card-region-name">
          강남구 역삼동
       </div>
       <div class="card-counts">
          <span>조회 100</span>
       </div> 
       
   </div><!-- card-photo6 -->
   
   
     <div class="card-photo7">
      <a href="http://211.63.89.152/prj_2/project2nd/product_info_login.jsp">
     <img alt="매물" src="http://localhost/prj_2/project/images/jumper.PNG" class="photo">
     </a>
   </div>
   
   <div class="card-desc7">
       <h2 class="card-title">점퍼</h2>
      
       <div class="card-price">
           <c:set var="price" value="20000" />
          <fmt:formatNumber type="number" value="${price}"  pattern="#,###"/>원 
       </div>
       <div class="card-region-name">
          강남구 역삼동
       </div>
       <div class="card-counts">
          <span>조회 90</span>
       </div> 
       
   </div><!-- card-photo7 -->
   
   
   <div class="card-photo8">
    <a href="http://211.63.89.152/prj_2/project2nd/product_info_login.jsp">
     <img alt="매물" src="http://localhost/prj_2/project/images/chainring.PNG" class="photo">
     </a>
   </div>
   
   <div class="card-desc8">
       <h2 class="card-title">체인링</h2>
      
       <div class="card-price">
           <c:set var="price" value="70000" />
          <fmt:formatNumber type="number" value="${price}"  pattern="#,###"/>원 
       </div>
       <div class="card-region-name">
          강남구 역삼동
       </div>
       <div class="card-counts">
          <span>조회 80</span>
       </div> 
       
   </div><!-- card-photo8 -->
   
   
   <div class="more_popular_items"> 
          <a href="http://localhost/prj_2/project/more_popular_sales.jsp"  class="a_buy"" style="font-weight: bold; font-size: 20px; text-decoration: underline;">인기 매물 더보기</a>
   </div>




    </div><!--container2  -->
    
    <div class="container3">  </div>
    
    
     <div class="footer">
      <hr class="hr_footer">
      
      <div class="footer_text">
        대표 4조 | 사업자번호 123-45-67890<br>
        직업정보제공사업 신고번호 2023-서울강남-0000<br>
        주소 서울 강남구 테헤란로 132 (강남콩서비스)<br>
        전화 1234-1234 | 고객문의 cs@gangnamkongservice.com<br>
       </div>
   </div><!-- footer-->
   
   
   
 
</div> <!--wrap  -->


</body>
</html>