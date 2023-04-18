<%@page import="kr.co.sist.util.cipher.DataEncrypt"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.SQLException"%>
<%@page import="prj_2.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"  href="http://localhost/jsp_prj/common/main_v20230217.css"/>
<style type="text/css">
</style>
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
<script type="text/javascript">

</script>

</head>
<body>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="userVO" class="prj_2.UserVO" scope="page"/>
<jsp:setProperty property="*" name="userVO"/>
<%
try{
	
UserDAO userDAO = new UserDAO();
userVO.setEmail(userVO.getEmail()+"@"+userVO.getEmail2());//이메일 하나로 합치기

//이메일중복확인
DataEncrypt de = new DataEncrypt("Tkddydgangnamkong");//암호화 키
userVO.setEmail( de.encryption(userVO.getUserPassword()) );//이메일 주소 암호화하기
userVO.setUserPassword(DataEncrypt.messageDigest("MD5", userVO.getUserPassword()));//암호화 한 패스워드를 다시 셋팅하기
boolean emailFlag=userDAO.eMailDup(userVO.getEmail()+userVO.getEmail2());
if(emailFlag){
		userDAO.insertMember(userVO);
		response.sendRedirect("succ_join.jsp");
	
}else{
	out.println("<script type=\"text/javascript\">");
	out.println("alert('이미 가입된 이메일입니다.');");
	out.println("history.back();");
	out.println("</script>");
}//end else
}catch(SQLException se){
response.sendRedirect("join.jsp");
}
%>
</body>
</html>