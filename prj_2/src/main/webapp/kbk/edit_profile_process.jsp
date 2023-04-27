<%@page import="java.sql.SQLException"%>
<%@page import="prj_2.UserDAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%-- <%@ include file="../ldk/login_chk.jsp" %>  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
<script type="text/javascript">
<%-- if("<%= request.getMethod() %>"=="GET"){
	alert("정상적인 방식으로 요청하지 않으셨습니다.");
	location.href="http://localhost/prj_2/lmh/login.jsp";
} --%>
</script>
</head>
<body>


<%
//POST방식

int maxSize=1024*1024*500;//5mb
File saveDir = new File("C:/Users/user/git/prj_2/prj_2/src/main/webapp/kbk/upload");
int fileSize=1024*1024*10;

//2. FileUpload Component 생성( MultipartRequest ) => 생성함과 동시에 파일이 업로드 된다.
MultipartRequest mr = 
	new MultipartRequest(request, saveDir.getAbsolutePath(),
							maxSize, "UTF-8", new DefaultFileRenamePolicy());

//3. 파라메터를 받는다.(File Upload  Component를 사용하여)
//nickname, intro
String nickname=mr.getParameter("nickName");
String intro=mr.getParameter("personalIntro");
//<input type="file"은 parameter로 넘어오지않는다.
String originalName = mr.getOriginalFileName("userImgFile");
String newFileName = mr.getFilesystemName("userImgFile");


//File file =new File(saveDir.getAbsolutePath()+originalName);
int realMaxSize = 1024*1024*10; 

//업로드된 파일의 크기
File uploadFile=new File(saveDir.getAbsolutePath()+"/"+newFileName);
if(uploadFile.length()>fileSize){//업로드 제한에 걸린 파일
	uploadFile.delete();//크기가 초과된 파일을 삭제한다.
	%>
파일은 10MByte까지만 업로드가 가능합니다.
<% 
}else{
	%>
	업로드 성공
	<%= nickname %>
	<%= intro %>
	<%= newFileName %>

<% }%>







<%-- <%
UserDAO uDAO=new UserDAO();

//String sessionId=lsVO.getUserId();
try{
uDAO.updateProfile(mpVO, sessionId);
}catch(SQLException se){
	se.printStackTrace();
%>
<c:out value="${ nickName }"/>은 이미 사용 중이므로 다른 아이디를 입력해주세요.<br/>

<%
}//end cath
%>
 --%>

<jsp:forward page="profile.jsp"/>
  

</html>