<%@page import="prj_2.ProductInsertVO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="prj_2.InsertProdDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="상품 등록 프로세스"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <jsp:useBean id="pVO" class="prj_2.ProductInsertVO" scope="page"/>
    <jsp:setProperty property="*" name="pVO"/>

<%
	//action에 따라 insertProdInfo와 updatePrd 두 메소드 중 하나를 작동시킨다.
	//if절로 설정함
    String hidden = request.getParameter("hidden");
    InsertProdDAO dao = new InsertProdDAO();
    
    if ("".equals("hidden")) {//insert
    	//상품 정보 파라메터 값 받아오기
        String prodName = request.getParameter("prodName");
        String share = request.getParameter("share");
        int price = Integer.parseInt(request.getParameter("price"));
        String textOfPrd = request.getParameter("textOfPrd");
        String placeTraction = request.getParameter("placeTraction");
        int categoryNumber = Integer.parseInt(request.getParameter("categoryNumber"));
        int areaNum = Integer.parseInt(request.getParameter("areaNum"));
        String userId = request.getParameter("userId");
        String[] prodImg = request.getParameterValues("prodImg");
		
        //ProductInsertVO에 상품 정보 저장하기	
        pVO.setProdName(prodName);
        pVO.setShare(share);
        pVO.setPrice(price);
        pVO.setTextOfPrd(textOfPrd);
        pVO.setPlaceTraction(placeTraction);
        pVO.setCategoryNumber(categoryNumber);
        pVO.setAreaNum(areaNum);
        pVO.setUserId(userId);
        pVO.setprodImg(prodImg);

        dao.insertProdInfo(pVO);

        response.sendRedirect("product_info.jsp");
        
    //updatePrd 메소드를 사용하는 경우
    } else if (!"".equals("hidden")) {
    	//상품 정보 파라메터 값 받아오기
        int prodNum = Integer.parseInt(request.getParameter("prodNum"));
        String prodName = request.getParameter("prodName");
        int price = Integer.parseInt(request.getParameter("price"));
        String textOfPrd = request.getParameter("textOfPrd");
        String placeTraction = request.getParameter("placeTraction");
        int categoryNumber = Integer.parseInt(request.getParameter("categoryNumber"));
        String[] prodImg = request.getParameterValues("prodImg");

      //ProductInsertVO에 상품 정보 저장하기
        pVO.setProdNum(prodNum);
        pVO.setProdName(prodName);
        pVO.setPrice(price);
        pVO.setTextOfPrd(textOfPrd);
        pVO.setPlaceTraction(placeTraction);
        pVO.setCategoryNumber(categoryNumber);
        pVO.setprodImg(prodImg);

        dao.updatePrd(pVO);

        response.sendRedirect("product_info.jsp");
    }
%>
    