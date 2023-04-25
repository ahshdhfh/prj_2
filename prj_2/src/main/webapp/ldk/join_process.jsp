<%@page import="kr.co.sist.util.cipher.DataDecrypt"%>
<%@page import="kr.co.sist.util.cipher.DataEncrypt"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.SQLException"%>
<%@page import="prj_2.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%request.setCharacterEncoding("UTF-8");//Post 방식이므로 캐릭터셋 인코딩 %>
<!DOCTYPE html>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"  href="http://localhost/jsp_prj/common/main_v20230217.css"/>
<style type="text/css">
</style>
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
<jsp:useBean id="userVO" class="prj_2.UserVO" scope="page"/>
<jsp:setProperty property="*" name="userVO"/>
<script type="text/javascript">

<%
if(request.getMethod()=="GET"){response.sendRedirect("http://localhost/prj_2/lmh/main.jsp");}//비정상적인 접근 차단
try{
request.setCharacterEncoding("UTF-8");//Post 방식이므로 캐릭터셋 인코딩
	
	UserDAO userDAO = new UserDAO();

	//패스워드 암호화 SHA
	userVO.setUserPassword(DataEncrypt.messageDigest("MD5", userVO.getUserPassword()));//암호화 한 패스워드를 다시 셋팅하기

	DataEncrypt de = new DataEncrypt("Tkddydgangnamkong");//암호화 키
	DataDecrypt dd = new DataDecrypt("Tkddydgangnamkong");
	
	userVO.setEmail(userVO.getEmail()+"@"+userVO.getEmail2());//이메일 하나로 합치기
	
	userVO.setEmail( de.encryption( userVO.getEmail()) );//이메일 주소 암호화하기
	
	boolean emailFlag=userDAO.eMailDup(userVO.getEmail());// 이메일 중복확인
	
	if(emailFlag){//중복아님! 인서트
	userDAO.insertMember(userVO);//인서트하기
	response.sendRedirect("succ_join.jsp");//회원가입완료 페이지로 이동
	
	}else{
	%>
	alert("이미 가입된 이메일입니다.");
	history.back();// 폼태그 값 그대로 뒤로가기
	<%
	}//end else
	
}catch(SQLException se){
	se.printStackTrace();
	%>
	alert("에러 발생! 잠시후 다시 시도해 주세요");
	history.back();// 폼태그 값 그대로 뒤로가기
	<%
}//end catch
%>
</script>