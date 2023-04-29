<%@page import="java.sql.SQLException"%>
<%@page import="prj_2.MyPageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %> <%@ include file="../lmh/header.jsp" %>
<meta charset="UTF-8">
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
<script type="text/javascript">
<%
request.setCharacterEncoding("UTF-8");
if(request.getMethod()=="GET"){
%>
	alert("정상적인 방식으로 요청하지 않으셨습니다.");
	location.href="http://localhost/prj_2/lmh/login.jsp";
    <%
}
if (lsVO == null) {
  response.sendRedirect("../lmh/login.jsp");
  return;
}

String sessionId=lsVO.getUserId();
%>
<%
int prodNum=Integer.parseInt(request.getParameter("pNum"));
String src=request.getParameter("pic");
 MyPageDAO mpDAO=new MyPageDAO();
 
if("http://localhost/prj_2/images/heart_on.svg".equals(src)){
	System.out.println(prodNum+"/"+sessionId);
	try{
		
		mpDAO.deleteInterest(sessionId, prodNum);
		System.out.println("a");
		%>
		history.back();
		
		<%
	}catch(SQLException e){
		e.printStackTrace();
		%>
		history.back();
		<%
	}
}else{
	//System.out.println(src);
	mpDAO.insertInterest(prodNum, sessionId);
	System.out.println("b");
	
	%>
	history.go(-1);
	<%
}//end else
%>

</script>
