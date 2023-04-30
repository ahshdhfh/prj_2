<%@page import="kr.co.sist.util.cipher.DataEncrypt"%>
<%@page import="prj_2.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="관리자 로그인 프로세스"%>
<!DOCTYPE html>
<meta charset="UTF-8">
 <jsp:useBean id="aVO" class="prj_2.AdminVO" scope="page" />
 <jsp:setProperty property="*" name="aVO" />
<script type="text/javascript">   
<%request.setCharacterEncoding("UTF-8");//Post 방식이므로 캐릭터셋 인코딩 %>
<%

if(aVO.getAdminId()==null  || "".equals(aVO.getAdminId()) || aVO.getAdminPassword()==null ||
	"".equals(aVO.getAdminPassword()) || !"POST".equals(request.getMethod()) ){
	response.sendRedirect("adminlogin.jsp");
	return;
}//end if

	aVO.setAdminPassword(DataEncrypt.messageDigest("MD5", aVO.getAdminPassword()));
	
	AdminDAO aDAO= new AdminDAO();
	boolean loginFlag=aDAO.loginCheck(aVO);
	
	if(loginFlag){
		response.sendRedirect("dashboard.jsp");
	}else{
		response.sendRedirect("adminlogin.jsp");		
	}//end else

%>
</script>