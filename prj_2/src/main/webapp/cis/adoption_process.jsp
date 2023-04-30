<%@page import="prj_2.ProdConditionVO"%>
<%@page import="java.sql.Date"%>
<%@page import="prj_2.CommVO"%>
<%@page import="prj_2.RegisterCommentDAO"%>
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
<script type="text/javascript">

<%
/* public ProdConditionVO(String sellerId, String userId, int prodNum) { */
	String userId=request.getParameter("userIdAdoption");
	String sellerId=request.getParameter("sellerIdAdoption");
	int prodNum=Integer.parseInt(request.getParameter("prodNumAdoption"));  
	
	if(!userId.equals(sellerId)){
	System.out.println(userId);
	System.out.println(sellerId);
	System.out.println(prodNum);
	RegisterCommentDAO rDAO=new RegisterCommentDAO();
	ProdConditionVO pcVO=new ProdConditionVO();
	pcVO.setProdNum(prodNum);
	pcVO.setSellerId(sellerId);
	pcVO.setUserId(userId);
	rDAO.updateTablePrd(pcVO);
	}else{
		%>
		alert("판매자와 구매자가 같을 수 없습니다.");
		<%
	}
	%>
	  location.href="http://localhost/prj_2/lmh/main.jsp";  
	<%
%>
</script>