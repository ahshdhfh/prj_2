<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../lmh/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 수정</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/main.css">
<style type="text/css">

#container{position: relative; width: 1200px; height: 500px;}
#div{position: absolute; top: 50px; left: 400px; border-bottom: 1px solid #333; width: 400px}
#msg{position: absolute; top: 200px; left: 450px; width: 400px; height: 300px;}
#btn{position: absolute; top: 300px; left: 500px; width:150px; height: 40px;
	border-radius: 10px;font-size: 15px; border: 1px solid #333;cursor: pointer;background-color: #9A58B5;color:#FFF;font-weight: bold;cursor: pointer;}
</style>
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
<script type="text/javascript">
$(function() {
	$("#btn").click(function(){
		$("#frm").submit();
	});
});//ready
</script>
</head>




<body>
<div class="wrap">

<div class="header">
</div><!-- header-->
   
   
<div id="container">
<%
if (lsVO == null) {
	  response.sendRedirect("../lmh/login.jsp");
	  return;
	}
%>
<div id="div"><h2>프로필 수정</h2></div>
<div id="msg">회원님의 프로필이 수정되었습니다.</div>
<div>
	<form action="http://localhost/prj_2/kbk/mypage.jsp" id="frm">
		<input type="button" value="확인" id="btn">
	</form>
</div>
</div><!-- container -->
     
     
<div class="footer">
<c:import url="http://localhost/prj_2/lmh/footer.jsp "/>
</div><!-- footer-->

</div>
</body>
</html>