<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 세션에서 값 가져오기
String value = (String)session.getAttribute("userId");

if (value == null) {
  response.sendRedirect("../lmh/login.jsp");
}
%>