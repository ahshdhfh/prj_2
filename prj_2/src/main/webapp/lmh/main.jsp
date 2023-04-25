<%@page import="java.util.List"%>
<%@page import="prj_2.MainProdDAO"%>
<%@page import="prj_2.MainProdVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
    
    <!-- 추가 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강남콩마켓</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/main.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@700&family=Gamja+Flower&display=swap" rel="stylesheet"> 


<style type="text/css">

.container1{
height: 120px; 
position: relative; 
}

.container2{
height: 1000px; 
position: relative; 
background-color: #F7F7F7;}


.container3{
height: 140px; 
position: relative; 
}


/* table td {
padding-bottom: 40px;
} */
</style>

<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 시작 -->

</head>




<body>
<div class="wrap">

  <div class="header">
      <%@ include file="header.jsp" %>
  </div>
   
 <%--   <c:import url="dsfsf">
   <param:<% %>>
   </c:import> --%>
   
   
   
 <form action="" method="get">
   
   <div class="container1">
        <div class="text_buy">
        구매하기 
        </div>
        
        <div class="bike">
        <a href="http://localhost/prj_2/lmh/buy.jsp?category=1"  class="a_buy"">자전거</a>
         </div> 
         
        <div class="clothes">
        <a href="http://localhost/prj_2/lmh/buy.jsp?category=2"  class="a_buy"">의류</a>
        </div>
        
        <div class="goodes">
        <a href="http://localhost/prj_2/lmh/buy.jsp?category=3"  class="a_buy"">용품</a>
        </div>
        
        <div class="component">
        <a href="http://localhost/prj_2/lmh/buy.jsp?category=4"  class="a_buy"" >부품</a>
        </div>
   </div><!-- container-->
        
        
   <div class="container2">
   
        <div class="text_popular_sale"> 
        인기매물
        </div> 
  
     

<%
MainProdDAO MainProdDAO = new MainProdDAO();
List<MainProdVO> MainProdlist = MainProdDAO.MainData("prodPopular");
 
/* System.out.println("send 후 세션값 : "+(String)session.getAttribute("nickName")); */
/* nickName = (String)request.getAttribute("nickName");*/
System.out.println(nickName); 
pageContext.setAttribute("prodPopular", MainProdlist);
%>

<table class="popular_sale_table">
  <tr>
    <c:forEach var="MainProdVO" items="${prodPopular}" varStatus="i">
      <c:if test="${i.count <= 8}">
        <td class="prdCol">
          <div>
            <img class="prod_img" src="${MainProdVO.prodImg}" />
          </div>
          <div>
            <strong><h3><c:out value="${MainProdVO.prodName}" /></h3></strong> <br>
            <fmt:formatNumber pattern="#,###,###" value="${MainProdVO.price}" />원<br>
            <c:out value="${MainProdVO.areaName}" /> <br>
            조회 <c:out value="${MainProdVO.viewCnt}" /> <br>
          </div>
        </td>
        <c:if test="${i.count % 4 eq 0}">
          </tr><tr>
        </c:if>
      </c:if>
    </c:forEach>
  </tr>
</table>


   <div class="more_popular_items"> 
          <a href="http://localhost/prj_2/lmh/buy.jsp"  class="a_buy"" style="font-weight: bold; font-size: 20px; text-decoration: underline;">인기 매물 더보기</a>
   </div>

</form>


    </div><!--container2  -->
    
    <div class="container3">  </div>
    
    
   <div class="footer">
      <c:import url="http://localhost/prj_2/lmh/footer.jsp" />
   </div><!-- footer-->
   
   
 
</div> <!--wrap  -->


</body>
</html>