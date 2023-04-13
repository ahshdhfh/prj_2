<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
      info="입력값을 받아 DB에 추가 하는 일 "
    %>
    
        <!-- 추가 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<%
request.setCharacterEncoding("UTF-8");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강남콩마켓 로그인</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/main.css">
<style type="text/css">

.area_login{
height: 670px; 
width: 1200px;
position: relative; 
}

.loginTitle{
position: absolute;
top : 115px;
left: 550px;
font-weight: bold;
font-size: 25px;
}

.input_login{
width: 350px;
height : 60px;
}

.text_input_login{
width: 350px;
height : 60px;
position: absolute;
top : 185px;
left: 415px;
font-size: 16px;
border-radius: 5px;
border-color: #dcdcde;
}

.input_password{
width: 350px;
height : 60px;
}

.text_input_password{
width: 350px;
height : 60px;
position: absolute;
top : 265px;
left: 415px;
font-size: 16px;
border-radius: 5px;
border-color: #dcdcde;
}

.find_id{
position: absolute;
font-size: 16px;
top : 350px;
left: 570px; 
}

.find_password{
position: absolute;
font-size: 16px;
top : 350px;
left: 670px; 
}

.a_find{
text-decoration: underline;
color: #000
}

.div_btn_login{
width: 350px;
height : 60px;
}

.btn_login{
width: 355px;
height : 65px;
position: absolute;
top : 420px;
left: 415px;

border: none;
border-radius: 5px;
background-color: #8B6FBD;
color: white;
font-size: 22px;
font-weight: bold;
}

.div_btn_join_member{
width: 350px;
height : 60px;
}


.btn_join_member{
width: 355px;
height : 65px;
position: absolute;
top : 500px;
left: 415px;

border: none;
border-radius: 5px;
background-color: #E0E0E0;
color: #8B6FBD;
font-size: 22px;
font-weight: bold;
}
</style>

<script type="text/javascript">
if("<%= request.getMethod() %>" == "GET") {
	alert("정상적인 방식으로 요청하지 않으셨습니다");
	location.href="http://localhost/prj_2/lmh/login.jsp";
}//end if
</script>

</head>
<body>
<%-- <%
if("POST".equals(request.getMethod())) {
%>
<jsp:useBean id="iVO" class="day0413.InjectionVO" scope="page" />
<jsp:setProperty property="*" name="iVO"/>

<%
InjectionDAO iDAO = new InjectionDAO();

try{
	
iDAO.insertInjection(iVO); //DB table에 추가 작업
%>
<span style="font-weight: blod; font-size: 20px">
<c:out value="${param.id }" />
</span>( <c:out value="${param.name }" />) 님 입력해 주셔서 감사합니다 <br>
입력해 주신 자료는 안전하게 보관하며, 사용이 끝나는 즉시 저장하지 않고 폐기하겠습니다
<%
}catch(SQLException se){
	se.printStackTrace();
	%>
	<c:out value="${ param.id }" />는 이미 사용중이므로 다른 아이디를 입력해 주세요
	<a href="#void" onclick="history.back()">뒤로</a>
	<%
}//end catch
}// end if
%>
</div> --%>


</body>
</html>