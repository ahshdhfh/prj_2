<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="../lmh/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

<link rel="stylesheet" type="text/css" href="http://211.63.89.134/html_prj/project/main.css">
<style type="text/css">
#container{height: 600px; margin-top: 100px;position: relative;}
#info{text-align: center}
#div{margin-left: 450px; margin-top: 50px}
a{color: #000000;}
</style>
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

	String sessionId=lsVO.getUserId();
	
	%>
	
	<div id="info">
	<h2>내 계정</h2>
	
	</div>
	<div id="div">
	<a href="http://localhost/prj_2/kbk/editPasswordOnly.jsp">
	<h3>비밀번호 수정</h3>
	<div>계정의 비밀번호를 수정할 수 있습니다.</div>
	</a>
	</div>
	<div id="div">
	<a href="http://localhost/prj_2/kbk/edit_personal_only.jsp">
	<h3>개인정보 수정</h3>
	<div>계정의 개인정보(생년월일, 이메일, 성별, 지역, 전화번호)를 수정할 수 있습니다.</div>
	</a>
	</div>
	<div id="div">
	<a href="http://localhost/prj_2/kbk/deleteaccount.jsp">
	<h3>회원정보 삭제</h3>
	<div>계정을 삭제할 수 있습니다.</div>
	</a>
	</div>
	

	</div><!-- container -->
     
<div class="footer">
	<c:import url="http://localhost/prj_2/lmh/footer.jsp"/>
</div><!-- footer-->
</div>

</body>
</html>