<%@page import="prj_2.LoginSessionVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="../lmh/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/main.css">
<style type="text/css">

#container{position: relative; width: 1200px; height: 500px;}
#div{position: absolute; top: 50px; left: 400px; border-bottom: 1px solid #333; width: 400px}
#msg{position: absolute; top: 200px; left: 450px; width: 400px; height: 300px;}
#btn{position: absolute; top: 300px; left: 500px; width:150px; height: 40px;
	border-radius: 10px;font-size: 15px; border: 1px solid #333;cursor: pointer;background-color: #9A58B5;color:#FFF;font-weight: bold;cursor: pointer;}
a{color: #000000;}
</style>
<script type="text/javascript">
</script>
</head>


<body>
<div class="wrap">

<div class="header">
</div><!-- header-->
   
   
<div id="container">
<div id="div"><h2>프로필 삭제</h2></div>
<div id="msg">회원님의 프로필이 삭제되었습니다.</div>
<div><a href="http://localhost/prj_2/lmh/main.jsp"><input type="button" value="확인" id="btn"></a></div><br>

</div><!-- container -->
     
<div class="footer">
      <c:import url="http://localhost/prj_2/lmh/footer.jsp"/>
</div><!-- footer -->

</div><!-- wrap -->
</body>
</html>