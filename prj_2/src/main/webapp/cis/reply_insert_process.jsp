<%@page import="prj_2.ReplyCommVO"%>
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
/* public ReplyCommVO(String replyCom, String userId, int repNum, int commNum, Date writeDate) { */
	String replyCom=request.getParameter("replycomminput");
	String userId=request.getParameter("userIdre");
	int prodNum=Integer.parseInt(request.getParameter("prodNumre"));   
	int commNum=Integer.parseInt(request.getParameter("commNumre"));   
	System.out.println("댓글을 입력한사람 :"+userId);
	System.out.println("commNum :"+commNum);
	System.out.println("prodNum :"+prodNum);
	RegisterCommentDAO rDAO=new RegisterCommentDAO();
	
	if(rDAO.checkReply(userId, prodNum, commNum)){
		System.out.println("동작확인");
	ReplyCommVO rVO= new ReplyCommVO();
	rVO.setcommNum(commNum);
	rVO.setUserId(userId);
	rVO.setReplyCom(replyCom);		
	//rDAO.insertReply(rVO);
	}else{
		%>
		alert("해당 댓글에 답변권한이 없습니다.");
		<%
	}
	
	%>
	  location.href="http://localhost/prj_2/cis/product_info.jsp?prodNum="+<%=prodNum%>;  
	<%
%>
</script>