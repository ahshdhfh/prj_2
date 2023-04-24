<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강남콩마켓</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/main.css">
<style type="text/css">

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
<script type="text/javascript">
if("<%=request.getMethod()%>"=="GET"){
	alert("정상적인 요청 방식이 아닙니다.")
	location.href="http://localhost/prj_2/cis/sell_page.jsp";
}//end if
</script>
</head>
<body>
 <!-- container -->
 <div id="container">
 <%
 if("POST".equals(request.getMethod())){
%>
<jsp:useBean id="pVO" class="prj_2.ProductInsertVO" scope="page"/>
<%

 }//end if
 %>
 </div>
</body>
</html>