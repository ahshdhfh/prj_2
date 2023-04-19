<%@page import="kr.co.sist.util.cipher.DataEncrypt"%>
<%@page import="prj_2.LoginSessionVO"%>
<%@page import="prj_2.LoginVO"%>
<%@page import="kr.co.sist.util.cipher.DataDecrypt"%>
<%@page import="prj_2.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
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




<jsp:useBean id="lVO" class="prj_2.LoginVO" scope="page" />
<jsp:setProperty property="*" name="lVO" /> 

<jsp:useBean id="lsVO" class="prj_2.LoginSessionVO" scope="page" />
<jsp:setProperty property="*" name="lsVO" /> 



<script type="text/javascript">
if("<%= request.getMethod() %>" == "GET") {
	alert("정상적인 방식으로 요청하지 않으셨습니다");
	location.href="http://localhost/prj_2/lmh/login.jsp";
}//end if


<%
//웹 파라메터의 아이디와 비밀번호가 존재하는 경우(백엔드에서 유효성검증을 한다) 
if( lVO.getUserId() == null || "".equals(lVO.getUserId()) ||
  lVO.getUserPassword() == null || "".equals(lVO.getUserPassword())){
	response.sendRedirect("http://localhost/prj_2/lmh/login.jsp");
	
	return;
}//end if
%>

<%
//비밀번호를 MD5 algorithm을 사용하여 일방향 해시로 암호화 수행한다
//아이디와 비밀번호는 LoginVO를 만들어서 사용할 것
lVO.setUserPassword(DataEncrypt.messageDigest("MD5", lVO.getUserPassword()));
/* lVO.setIpAddr(request.getRemoteAddr()); */

//DAO를 사용하여 로그인 작업 수행
UserDAO userDAO = new UserDAO();
String name=userDAO.selectLogin(lVO).getNickName();


if("".equals(name) ) {//empty면 로그인실패	
	
}else{
	//로그인 결과로 받은 이름은 암호화된 이름 => 복호화
	DataDecrypt dd = new DataDecrypt("RpNdKby55r8t8zp4YPa2Qw== 바꿔야됨"); //암호화할때 쓴 키를 복호화 한다 <로그인폼프로세스 에서>
	name=dd.decryption(name);
	//이름을 어떤 페이지에서든 사용하기 위해 session 설정
	session.setAttribute("sesName", name);
	
	session.setMaxInactiveInterval(60*60);
}//end else		
	%>




</script>
</head>
<body>



</body>
</html>