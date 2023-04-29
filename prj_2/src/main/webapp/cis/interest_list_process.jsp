<%@page import="prj_2.ProdConditionVO"%>
<%@page import="prj_2.ShowProdDAO"%>
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
/*public ProdConditionVO(String sellerId, String userId, int prodNum) { */
	String userId=request.getParameter("userIdinter");
	int prodNum=Integer.parseInt(request.getParameter("prodNuminter"));   
	int check=Integer.parseInt(request.getParameter("checkinter"));   
	System.out.println(userId);
	System.out.println(prodNum);
	System.out.println(check);
	ShowProdDAO spDAO=new ShowProdDAO();
	ProdConditionVO pcVO=new ProdConditionVO();
	pcVO.setProdNum(prodNum);
	pcVO.setUserId(userId);
	if(check==2){
	spDAO.insertBookmarkPrd(pcVO);
	%>
		history.back();
	<%--  location.href="http://localhost/prj_2/cis/product_info.jsp?prodNum="+<%=prodNum%>+"&interflag=heart_on.svg";  --%>
	<%	
	}else if(check==1){
	spDAO.deleteBookmarkPrd(pcVO);
	%>
	history.back();
	<%--  location.href="http://localhost/prj_2/cis/product_info.jsp?prodNum="+<%=prodNum%>+"&interflag=heart_off.png";  --%>
	<%
	}else if(check==3){
	String interflag=spDAO.selectBookmarkPrd(pcVO);
	%>
	 history.back(); 
	<%--  location.href="http://localhost/prj_2/cis/product_info.jsp?prodNum="+<%=prodNum%>+"&interflag="+<%=interflag%>;  --%>
	<%
	}

%>
</script>