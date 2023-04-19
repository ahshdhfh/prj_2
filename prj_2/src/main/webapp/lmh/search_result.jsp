<%@page import="java.util.List"%>
<%@page import="prj_2.MainProdSearchDAO"%>
<%@page import="prj_2.MainProdVO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 추가 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색결과</title>

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
  
  
   
  
  <%
  MainProdSearchDAO MainProdSearchDAO = new MainProdSearchDAO();
  String search = request.getParameter("search"); 
  List<MainProdVO> list = MainProdSearchDAO.SearchData(search);

  
  pageContext.setAttribute("search", list);
  %>
  
<table class="prod_table">
<tr>
<c:forEach var="MainProdVO"  items="${ search }" varStatus="i" >


<td class="prdCol">
    <div>
    <img class="prod_img" src="${ MainProdVO.prodImg }" /> 
    </div>
    <div>
    
      <strong><h3><c:out value=" ${MainProdVO.prodName }"/></h3></strong> <br> 
     <fmt:formatNumber pattern="#,###,###" value="${ MainProdVO.price }" />원<br>
     <c:out value="${MainProdVO.areaName}"/> <br>
     조회 <c:out value="${MainProdVO.viewCnt}"/> <br>
    </div>
</td>

<c:if test="${ i.count % 4 eq 0 }">
</tr><tr>
</c:if>
</c:forEach>
</table>
  
   
  </div>
  
  
  
   
  
  
    <div class="footer">
      <c:import url="http://localhost/prj_2/lmh/footer.jsp" />
   </div><!-- footer-->
   
  </div><!--wrap  -->

</body>
</html>