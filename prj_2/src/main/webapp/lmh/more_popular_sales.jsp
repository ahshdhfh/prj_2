<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인기매물 더보기</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/main.css">
<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/buy.css">
<style type="text/css">

.area_more_popular_sales{
height: 1500px; 
width: 1200px;
position: relative; 
}





</style>
</head>
<body>

<div class="wrap">

   <div class="header">       
       <c:import url="http://localhost/prj_2/lmh/header.jsp" />
  </div><!-- header-->
  
  
  
  <div class="area_more_popular_sales">
    
  
  <div class="div_select_town"> 
          <select class="select_town">
             <option value="동네선택">동네를 선택하세요</option>
             <option value="동네선택">개포동</option>
             <option value="동네선택">논현동</option>
             <option value="동네선택">대치동</option>
             <option value="동네선택">도곡동</option>
             <option value="동네선택">삼성동</option>
             <option value="동네선택">세곡동</option>
             <option value="동네선택">수서동</option>
             <option value="동네선택">신사동</option>
             <option value="동네선택">압구정동</option>
             <option value="동네선택">역삼동</option>
             <option value="동네선택">율현동</option>
             <option value="동네선택">일원동</option>
             <option value="동네선택">자곡동</option>
             <option value="동네선택">청담동</option>
             
         </select>
    </div>
    
       <div class="div_select_category"> 
          <select class="select_category" onchange="window.location.href=this.value">
             <option value="카테고리">카테고리</option>
             <option value="http://211.63.89.143/prj_2/project/buy_bike.jsp">자전거</option>
             <option value="http://211.63.89.143/prj_2/project/buy_clothes.jsp">의류</option>
             <option value="http://211.63.89.143/prj_2/project/buy_goodes.jsp">용품</option>
             <option value="http://211.63.89.143/prj_2/project/buy_component.jsp">부품</option>
         </select>
    </div>
  
  
  
  <div class="card-photo1">
     <a href="http://211.63.89.152/prj_2/project2nd/product_info_logout.jsp">
     <img alt="매물" src="http://211.63.89.143/prj_2/project/images/bike.PNG" class="photo">
     </a>
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
   
   
   <div class="card-photo2">
     <img alt="매물" src="http://211.63.89.143/prj_2/project/images/clothes.PNG" class="photo">
   </div>
   
   <div class="card-desc2">
       <h2 class="card-title">바람막이</h2>
      
       <div class="card-price ">
           30,000원
       </div>
       <div class="card-region-name">
          강남구 삼성동
       </div>
       <div class="card-counts">
          <span>조회 140</span>
       </div>
    </div><!-- card-photo2 -->
       
    <div class="card-photo3">
     <img alt="매물" src="http://211.63.89.143/prj_2/project/images/navigation.PNG" class="photo">
   </div>
   
   <div class="card-desc3">
       <h2 class="card-title">네비게이션</h2>
      
       <div class="card-price ">
           500,000원
       </div>
       <div class="card-region-name">
          강남구 청담동
       </div>
       <div class="card-counts">
          <span>조회 130</span>
       </div>
       
  
   </div><!-- card-photo3 -->
   
     <div class="card-photo4">
     <img alt="매물" src="http://211.63.89.143/prj_2/project/images/bike2.PNG" class="photo">
   </div>
   
   <div class="card-desc4">
       <h2 class="card-title">자전거</h2>
      
       <div class="card-price">
           200,000원
       </div>
       <div class="card-region-name">
          강남구 신사동
       </div>
       <div class="card-counts">
          <span>조회 120</span>
       </div> 
       
   </div><!-- card-photo4 -->
   
   
    <div class="card-photo5">
     <img alt="매물" src="http://211.63.89.143/prj_2/project/images/bike3.PNG" class="photo">
   </div>
   
   <div class="card-desc5">
       <h2 class="card-title">자전거</h2>
      
       <div class="card-price">
           50,000원
       </div>
       <div class="card-region-name">
          강남구 개포동
       </div>
       <div class="card-counts">
          <span>조회 110</span>
       </div> 
       
   </div><!-- card-photo5 -->
   
   
    <div class="card-photo6">
     <img alt="매물" src="http://211.63.89.143/prj_2/project/images/bike_shoes.PNG" class="photo">
   </div>
   
   <div class="card-desc6">
       <h2 class="card-title">자전거신발</h2>
      
       <div class="card-price">
           100,000원
       </div>
       <div class="card-region-name">
          강남구 수서동
       </div>
       <div class="card-counts">
          <span>조회 100</span>
       </div> 
       
   </div><!-- card-photo6 -->
   
   
     <div class="card-photo7">
     <img alt="매물" src="http://211.63.89.143/prj_2/project/images/jumper.PNG" class="photo">
   </div>
   
   <div class="card-desc7">
       <h2 class="card-title">점퍼</h2>
      
       <div class="card-price">
           20,000원
       </div>
       <div class="card-region-name">
          강남구 압구정동
       </div>
       <div class="card-counts">
          <span>조회 90</span>
       </div> 
       
   </div><!-- card-photo7 -->
   
   
   <div class="card-photo8">
     <img alt="매물" src="http://211.63.89.143/prj_2/project/images/chainring.PNG" class="photo">
   </div>
   
   <div class="card-desc8">
       <h2 class="card-title">체인링</h2>
      
       <div class="card-price">
           70,000원
       </div>
       <div class="card-region-name">
          강남구 대치동
       </div>
       <div class="card-counts">
          <span>조회 80</span>
       </div> 
       
   </div><!-- card-photo8 -->
   
   
   
    <div class="card-photo9">
     <img alt="매물" src="http://211.63.89.143/prj_2/project/images/bike3.PNG" class="photo">
   </div>
   
   <div class="card-desc9">
       <h2 class="card-title">자전거</h2>
      
       <div class="card-price">
           50,000원
       </div>
       <div class="card-region-name">
          강남구 개포동
       </div>
       <div class="card-counts">
          <span>조회 70</span>
       </div> 
       
   </div><!-- card-photo9 -->
   
   
    <div class="card-photo10">
     <img alt="매물" src="http://211.63.89.143/prj_2/project/images/bike_shoes.PNG" class="photo">
   </div>
   
   <div class="card-desc10">
       <h2 class="card-title">자전거신발</h2>
      
       <div class="card-price">
           100,000원
       </div>
       <div class="card-region-name">
          강남구 수서동
       </div>
       <div class="card-counts">
          <span>조회 60</span>
       </div> 
       
   </div><!-- card-photo10 -->
   
   
     <div class="card-photo11">
     <img alt="매물" src="http://211.63.89.143/prj_2/project/images/jumper.PNG" class="photo">
   </div>
   
   <div class="card-desc11">
       <h2 class="card-title">점퍼</h2>
      
       <div class="card-price">
           20,000원
       </div>
       <div class="card-region-name">
          강남구 압구정동
       </div>
       <div class="card-counts">
          <span>조회 50</span>
       </div> 
       
   </div><!-- card-photo11 -->
   
   
   <div class="card-photo12">
     <img alt="매물" src="http://211.63.89.143/prj_2/project/images/chainring.PNG" class="photo">
   </div>
   
   <div class="card-desc12">
       <h2 class="card-title">체인링</h2>
      
       <div class="card-price">
           70,000원
       </div>
       <div class="card-region-name">
          강남구 대치동
       </div>
       <div class="card-counts">
          <span>조회 40</span>
       </div> 
       
   </div><!-- card-photo12 -->
   
  
  
  </div><!-- 인기매물 더보기 -->
  
  
  
   
  
  
    <div class="footer">
      <c:import url="http://localhost/prj_2/lmh/footer.jsp" />
   </div><!-- footer-->
   
  </div><!--wrap  -->

</body>
</html>