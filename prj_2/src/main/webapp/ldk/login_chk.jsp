<%@page import="prj_2.LoginSessionVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 세션에서 값 가져오기
LoginSessionVO lsVO = (LoginSessionVO)session.getAttribute("loginData");

if (lsVO == null) {
  response.sendRedirect("../lmh/login.jsp");
}
%>