<%@page import="prj_2.LoginSessionVO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="javax.websocket.SendResult"%>
<%@page import="prj_2.UserDAO"%>
<%@page import="kr.co.sist.util.cipher.DataEncrypt"%>
<%@page import="java.security.MessageDigest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"
    session="true"
    %>
    <%-- <%@ include file="../ldk/login_chk.jsp" %>  --%>
    
<script type="text/javascript">
<%
request.setCharacterEncoding("UTF-8");
if(request.getMethod()=="GET"){
%>
	alert("정상적인 방식으로 요청하지 않으셨습니다.");
	location.href="http://localhost/prj_2/lmh/login.jsp";
    <%
}

 	LoginSessionVO lsVO=(LoginSessionVO)session.getAttribute("loginData");
	String sessionId=lsVO.getUserId(); 

    String pass=request.getParameter("pass");
    if(pass==null||"".equals(pass)){
    	response.sendRedirect("edit_info_password.jsp");
    	return;
    }//if
    pass=DataEncrypt.messageDigest("MD5", pass);
    
	UserDAO uDAO= new UserDAO();
	try{
	boolean result=uDAO.selectUserInfo(sessionId, pass);
	
	if(result){
		response.sendRedirect("edit_list.jsp");
	}else{
		%>
		history.back();
		<%
	}
	}catch(SQLException se){
		se.printStackTrace();
		%>
		alert("다시 시도해주세요.");
		history.back();
		<%
	}
    %>
</script>
    