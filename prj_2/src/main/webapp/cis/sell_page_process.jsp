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

//가상공간에서 작업이되기때문에 실제경로와 다르다. 
// .getRealPath()에 가상경로를 넣어주면, 그것("/upload")을 "실제경로" 변경한다.
// 실제 경로 지정.
//String realFolder = getServletContext().getRealPath("/upload");

File file=new File("C:/Users/user/git/prj_2/prj_2/src/main/webapp/images");
/* 저장경로 =>  E:/eclipse/JAVA/Spring_05/.metadata/.plugins/org.eclipse.wst.server.core/
 tmp1/wtpwebapps/FileUploadApp / upload     */ 
int max = 5 * 1024 * 1024; //3번째인자: 업로드크기(바이트단위),  5 * 1024(KB) * 1024(MB) = 5MB

//MultipartRequest 클래스: request 객체기능 + 하여 업로드할수있게 만듬.
//MultipartRequest 업로드를 위해 객체생성, cos.jar파일사용
/* MultipartRequest(request, 경로, 크기, 인코딩, 같은이름의 파일 구별 )  5개의 인자(파라미터)를 가지고있다. */
MultipartRequest multi = new MultipartRequest(request, file.getAbsolutePath(), max, "UTF-8", new DefaultFileRenamePolicy());

// 파라미터전송 값 얻어오기. 
// 업로드된 파일정보를 가져온다.
String[] imgNames=multi.getParameter("imgNames").split(",");

/////////////////////////////////////////
        String prodName = multi.getParameter("prodName");
        String share = multi.getParameter("share");
        int price = Integer.parseInt(multi.getParameter("price"));
        String textOfPrd = multi.getParameter("textOfPrd");
        String placeTraction = multi.getParameter("placeTraction");
        int categoryNumber = Integer.parseInt(multi.getParameter("categoryNumber"));
        int areaNum = Integer.parseInt(multi.getParameter("areaNum"));

   String prodNum = multi.getParameter("hidden");//
	ProductInsertVO piVO = new ProductInsertVO();
    InsertProdDAO dao = new InsertProdDAO();
    if ("".equals(prodNum)) {//insert
    	//상품 정보 파라메터 값 받아오기
		
        //ProductInsertVO에 상품 정보 저장하기	
        piVO.setProdName(prodName);
        piVO.setShare(share);
        piVO.setPrice(price);
        piVO.setTextOfPrd(textOfPrd);
        piVO.setPlaceTraction(placeTraction);
        piVO.setCategoryNumber(categoryNumber);
        piVO.setAreaNum(lsVO.getActAreaNum());//세션에서
        piVO.setUserId(lsVO.getUserId());//세션에서
        piVO.setprodImg(imgNames);//이미지배열
		
        try{
        dao.insertProdInfo(piVO);
       	%>
       	alert("성공적으로 등록하셨습니다!")
       	location.href="product_info.jsp"
       	<%
        	
        }catch(SQLException se){
        	se.printStackTrace();
        	%>
           	alert("에러 발생! 다시 시도해주세요!")
           	location.href="sell_page.jsp"
           	<%
        }
		
        
    //updatePrd 메소드를 사용하는 경우
    } else  {
    	//상품 정보 파라메터 값 받아오기

      	//ProductInsertVO에 상품 정보 저장하기
        piVO.setProdNum(Integer.parseInt(prodNum));
        piVO.setProdName(prodName);
        piVO.setPrice(price);
        piVO.setTextOfPrd(textOfPrd);
        piVO.setPlaceTraction(placeTraction);
        piVO.setCategoryNumber(categoryNumber);
        piVO.setprodImg(imgNames);

        try{
        	dao.updatePrd(piVO);
           	%>
           	alert("성공적으로 수정되었습니다!")
           	location.href="product_info.jsp"
           	<%
            	
            }catch(SQLException se){
            	se.printStackTrace();
            	%>
               	alert("에러 발생! 다시 시도해주세요!")
               	location.href="sell_page.jsp?prodNum="+"<%=prodNum%>";
               	<%
            }//end catch
    }//end else



%>