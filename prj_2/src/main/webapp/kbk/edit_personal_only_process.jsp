<%@page import="prj_2.LoginSessionVO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="kr.co.sist.util.cipher.DataEncrypt"%>
<%@page import="prj_2.ModifyInfoVO"%>
<%@page import="prj_2.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true" session="true"%>
    <%-- <%@ include file="../ldk/login_chk.jsp" %>  --%>
<!DOCTYPE html>

<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
<% request.setCharacterEncoding("UTF-8"); %>
<script type="text/javascript">

if(<%= request.getMethod() %>=="GET"){
	alert("정상적인 방식으로 요청하지 않으셨습니다.");
	location.href="http://localhost/prj_2/lmh/login.jsp";
}//end if 
//이메일, zipcode, 주소, detailedaddr, tel, actArea 
</script>
<%
String email1=request.getParameter("email");
String email2=request.getParameter("email2");
String email=email1+"@"+email2;
int zipcode=Integer.parseInt(request.getParameter("zipcode"));
String addr=request.getParameter("addr");
String detailAddr=request.getParameter("addr2");
String tel2=request.getParameter("tel2");
String tel="010"+tel2;
int actAreaNum=Integer.parseInt(request.getParameter("actLocalNum"));

/* 
LoginSessionVO lsVO=(LoginSessionVO)session.getAttribute("loginData");
String sessionId=lsVO.getUserId(); 
 */
 String sessionId="abcd18";
/* try{ */
	UserDAO uDAO = new UserDAO();
	ModifyInfoVO miVO=new ModifyInfoVO();
	miVO.setZipcode(zipcode);
	miVO.setAddr(addr);
	miVO.setDetailAddr(detailAddr);
	miVO.setTel(tel);
	miVO.setActAreaNum(actAreaNum);
	
	DataEncrypt de = new DataEncrypt("Tkddydgangnamkong");
	miVO.setEmail( de.encryption(email) );
	
	//uDAO.updateInfo(miVO, sessionId);

/* }catch(SQLException se){
	se.printStackTrace();
} */
%>
