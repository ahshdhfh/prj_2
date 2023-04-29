<%@page import="prj_2.LoginSessionVO"%>
<%@page import="org.apache.catalina.tribes.membership.McastService"%>
<%@page import="prj_2.ReplyCommentVO"%>
<%@page import="prj_2.MyCommentVO"%>
<%@page import="java.util.List"%>
<%@page import="prj_2.MyPageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session="true"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 댓글</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/main.css">
<style type="text/css">

#container{position: relative; width: 1200px; min-height: 800px;}
table {
    width: 60%;
    border-collapse: collapse;
    margin: 50px auto;
  }
  th{
    text-align:center;
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
a{color: #000000;}
  .bcolor{
  background-color: #B17CC6; color: #FFFFFF;
  }
</style>
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
</head>


<body>
<div class="wrap">

<div class="header">
    <%@ include file="../lmh/header.jsp" %>

</div><!-- header-->
   
   
<div id="container">
<% 
if (lsVO == null) {
  response.sendRedirect("../lmh/login.jsp");
  return;
}


String sessionId=lsVO.getUserId();
MyPageDAO mpDAO=new MyPageDAO();

List<MyCommentVO> comment=mpDAO.selectComment(sessionId); 
MyCommentVO mcVO=new MyCommentVO();
%>
<table style="width: 590px; float: left">
	<tr>
	<th colspan="2"><h2>나의 댓글</h2></th>
	</tr>
	<tr class="bcolor">
	<td width="100px">댓글번호</td>
	<td colspan="2">댓글 내용</td>
	</tr>
		
		
<%
for( MyCommentVO mcVO1 : comment) {
	if(mcVO1.getComment_Num()!=0&&mcVO1.getProd_Comments()!=null){
	%>	
	
	<tr> 
	<td> <%= mcVO1.getComment_Num() %></td>
	<td> <%= mcVO1.getProd_Comments() %></td>
	<td> <a href="http://localhost/prj_2/cis/product_info.jsp?prodNum=<%= mcVO1.getProd_Num()%>"  style="color: #333">댓글확인</a> </td>
	</tr>
<%
	}//end if
}//end for
%>	
</table>
		
<table style="width: 590px; float: right">
	<tr>
		<th colspan="2"><h2>나의 대댓글</h2></th>
	</tr>
	<tr class="bcolor">
		<td width="100px">대댓글번호</td>
		<td colspan="2">대댓글 내용</td>
	</tr>
		<% 
	for( MyCommentVO mcVO1 : comment) {
		if(mcVO1.getReply_Num()!=0){
	%>
		<tr>
			<td><%= mcVO1.getReply_Num() %></td>
			<td><%= mcVO1.getReply_Comment() %></td>
			<td> <a href="http://localhost/prj_2/cis/product_info.jsp?prodNum=<%= mcVO1.getProd_Num()%>">대댓글확인</a> </td>
		</tr>
<%
		}//end if
	}//end for
	 %>	
			</table>
</div><!-- container -->
     
<div class="footer">
      <c:import url="http://localhost/prj_2/lmh/footer.jsp"/>
</div><!-- footer-->

</div>
</body>
</html>