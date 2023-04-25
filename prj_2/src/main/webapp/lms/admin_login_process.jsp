<%@page import="prj_2.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="관리자 로그인 프로세스"
    %>
    <jsp:useBean id="aVO" class="prj_2.AdminVO" scope="page" />
	<jsp:setProperty property="*" name="aVO" />
<%

if(aVO.getAdminId()==null  || "".equals(aVO.getAdminId()) || aVO.getAdminPassword()==null ||
	"".equals(aVO.getAdminPassword()) || !"POST".equals(request.getMethod()) ){
	response.sendRedirect("adminlogin.jsp");
	return;
}//end if

	AdminDAO aDAO= new AdminDAO();
	boolean loginFlag=aDAO.loginCheck(aVO);
	
	if(loginFlag){
		response.sendRedirect("dashboard.jsp");
	}else{
		response.sendRedirect("adminlogin.jsp");		
	}//end else

%>
