<%@page import="prj_2.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session="true"%>
    <%-- <%@ include file="../ldk/login_chk.jsp" %>  --%>
<%
/* LoginSessionVO lsVO=(LoginSessionVO)session.getAttribute("loginData");
String sessionId=lsVO.getUserId(); */
UserDAO uDAO=new UserDAO();
/* uDAO.deleteUser(sessionId); */
//session.removeAttribute(arg0);
session.invalidate();
%>
<jsp:forward page="deleteaccount2.jsp"/>
