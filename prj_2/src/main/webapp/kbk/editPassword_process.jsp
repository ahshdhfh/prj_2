<%@page import="java.sql.SQLException"%>
<%@page import="javax.websocket.SendResult"%>
<%@page import="kr.co.sist.util.cipher.DataEncrypt"%>
<%@page import="prj_2.ModifyProfileVO"%>
<%@page import="prj_2.ModifyPassVO"%>
<%@page import="prj_2.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
<%
String userId= request.getParameter("userId");// 아이디받기
String newPass= request.getParameter("pass1");// 입력한 패스워드 받기
newPass = DataEncrypt.messageDigest("MD5", newPass);
ModifyPassVO mpVO = new ModifyPassVO(userId,newPass);
UserDAO userDAO = new UserDAO();
try{
	
int result =userDAO.updatePass(mpVO);

if(result==1){//성공
	%>
	alert('비밀번호를 성공적으로 변경했습니다.');
	<%
	response.sendRedirect("password.jsp");
}else{
	%>
	alert('에러발생! 다시 시도해 주세요');
	location.href="http://localhost/prj_2/kbk/editPasswordOnly.jsp"
	<%
}//end else
}catch(SQLException se){
	se.printStackTrace();
	%>
	alert('에러발생! 다시 시도해 주세요');
	location.href="http://localhost/prj_2/kbk/editPasswordOnly.jsp"
	<%
}//end catch
%>
</script>