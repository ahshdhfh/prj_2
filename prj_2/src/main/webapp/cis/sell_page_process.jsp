<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="prj_2.ProductInsertVO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="prj_2.InsertProdDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="상품 등록 프로세스"
    %>
<%@ include file="../ldk/login_chk.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("UTF-8");
//response.setCharacterEncoding("UTF-8");

ArrayList saveFiles = new ArrayList(); 		// 저장될 파일이름
ArrayList originFiles = new ArrayList();	// 실제파일명.
//가상공간에서 작업이되기때문에 실제경로와 다르다. 
// .getRealPath()에 가상경로를 넣어주면, 그것("/upload")을 "실제경로" 변경한다.
// 실제 경로 지정.
//String realFolder = getServletContext().getRealPath("/upload");

System.out.println("성공");
File file=new File("C:/Users/user/git/prj_2/prj_2/src/main/webapp/images");
/* 저장경로 =>  E:/eclipse/JAVA/Spring_05/.metadata/.plugins/org.eclipse.wst.server.core/
 tmp1/wtpwebapps/FileUploadApp / upload     */ 
int max = 5 * 1024 * 1024; //3번째인자: 업로드크기(바이트단위),  5 * 1024(KB) * 1024(MB) = 5MB

//MultipartRequest 클래스: request 객체기능 + 하여 업로드할수있게 만듬.
//MultipartRequest 업로드를 위해 객체생성, cos.jar파일사용
/* MultipartRequest(request, 경로, 크기, 인코딩, 같은이름의 파일 구별 )  5개의 인자(파라미터)를 가지고있다. */
MultipartRequest multi = new MultipartRequest(request, file.getAbsolutePath(), max, "UTF-8", new DefaultFileRenamePolicy());

// 파라미터전송 값 얻어오기. 
String categoryNumber = multi.getParameter("categoryNumber");
System.out.println(categoryNumber);
multi.getParameterNames();
// 업로드된 파일정보를 가져온다.
Enumeration e = multi.getFileNames();
System.out.println(e.toString());
// 업로드된파일 만큼 반복.
System.out.println("최초횟수"+saveFiles.size());
while(e.hasMoreElements())	{//리스트에 이름 저장하기
	
	String n = (String)e.nextElement();//파일 파라메터 이름 가져오기
	System.out.println(n);
	saveFiles.add(multi.getFilesystemName(n)); 				// ArrayList saveFiles 객체에 저장
	originFiles.add(multi.getOriginalFileName(n));		// ArrayList originFiles 객체에 저장.
}
System.out.println("반복횟수"+saveFiles.size());
for(int i=0;i<saveFiles.size();i++){

System.out.println("orifile : "+originFiles.get(i));
System.out.println("savefile : "+saveFiles.get(i));
}
%>