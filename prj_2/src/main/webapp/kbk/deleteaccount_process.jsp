<%@page import="prj_2.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session="true"%>
    <%@ include file="../lmh/header.jsp" %>
<script type="text/javascript">
<%
request.setCharacterEncoding("UTF-8");
if (lsVO == null) {
	  response.sendRedirect("../lmh/login.jsp");
	}

if(request.getMethod()=="GET"){
%>
	alert("정상적인 방식으로 요청하지 않으셨습니다.");
	location.href="http://localhost/prj_2/lmh/login.jsp";
	return;
    <%
}

String sessionId=lsVO.getUserId();
UserDAO uDAO=new UserDAO();
uDAO.deleteUser(sessionId);
session.invalidate();
%>
<jsp:forward page="deleteaccount2.jsp"/>
</script>