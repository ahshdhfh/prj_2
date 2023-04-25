<%@page import="prj_2.LoginSessionVO"%>
<%@page import="kr.co.sist.util.cipher.DataEncrypt"%>
<%@page import="prj_2.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="로그인 프로세스"
    %>
    <jsp:useBean id="lVO" class="prj_2.LoginVO" scope="page" />
	<jsp:setProperty property="*" name="lVO" />
<%

if(lVO.getUserId()==null  || "".equals(lVO.getUserId()) || lVO.getUserPassword()==null ||
	"".equals(lVO.getUserPassword()) || !"POST".equals(request.getMethod()) ){
	response.sendRedirect("login.jsp");
	return;
}//end if

	lVO.setUserPassword(DataEncrypt.messageDigest("MD5", lVO.getUserPassword()));

	UserDAO uDAO=new UserDAO();
	String nickName=uDAO.selectLogin(lVO).getNickName();
	
	if(nickName==null){ //로그인 실패
		response.sendRedirect("login.jsp?flag=false");
	}else{ //로그인 성공
		LoginSessionVO lsVO=uDAO.selectLogin(lVO);
		session.setAttribute("loginData", lsVO);
		session.setMaxInactiveInterval(60*60*1);
		response.sendRedirect("main.jsp");		
	}//end else

%>