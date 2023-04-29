<%@page import="prj_2.PurchaseListVO"%>
<%@page import="java.util.List"%>
<%@page import="prj_2.MyPageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매내역</title>

<link rel="stylesheet" type="text/css" href="http://211.63.89.134/html_prj/project/main.css">
<style type="text/css">

#container{position: relative; width: 1200px; height: 500px; margin: 0px auto;}
table {
    width: 60%;
    border-collapse: collapse;
    margin: 50px auto;
  }
  td {
    text-align:center;
    border-bottom: 1px solid #444444;
    padding: 10px;
    height: 15px;
  }
  tr{
    border-bottom: 1px solid #444444;
    text-align: left;
  }
  .bcolor{
   background-color: #B17CC6; color: #FFFFFF;
  }
</style>
</head>




<body>
<div class="wrap">

<div class="header">
<%@ include file="../lmh/header.jsp" %>
</div><!-- header-->
   
   
<div id="container">
<div>
<% MyPageDAO mpDAO=new MyPageDAO(); %>
<% 
if (lsVO == null) {
	  response.sendRedirect("../lmh/login.jsp");
	  return;
	}

	String sessionId=lsVO.getUserId();

List<PurchaseListVO> purchase=mpDAO.selectPurchase(sessionId); %>
<table>
	<tr>
	<th colspan="2"><h2>구매 내역</h2></th>
	<th><h2></h2></th>
	<th><h2></h2></th>
	</tr>
	<tr class="bcolor">
	<td width="100px">상품번호</td>
	<td>상품명</td>
	<td>판매자</td>
	<td>거래날짜</td>
	</tr>
	<%
	for( PurchaseListVO pVO : purchase ) {
		if(pVO.getProdNum()!=0){
			%>
			<tr>
				<td><%= pVO.getProdNum() %></td>
				<td><%= pVO.getProdName() %></td>
				<td><%= pVO.getSellerId() %></td>
				<td><%= pVO.getTransactionDate() %></td>
			</tr>
	<%
		}else{
			%>	
			<tr>
			<td colspan="4">내역이 없습니다.</td>
			</tr>
			<%
		}
}//end for
	 %>
</table>
</div>
</div><!-- container -->
     
<div class="footer">
	<c:import url="http://localhost/prj_2/lmh/footer.jsp"/>
</div><!-- footer-->

</div>
</body>
</html>