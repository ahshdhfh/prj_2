<%@page import="java.io.Console"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.sql.SQLException"%>

<%@page import="java.util.List"%>
<%@page import="prj_2.MainProdDAO"%>
<%@page import="prj_2.MainProdVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8" 
trimDirectiveWhitespaces="true"
    %>
    
    <%
    request.setCharacterEncoding("UTF-8");
    MainProdDAO mpDAO = new MainProdDAO();
    String searchName=null;
    String dongName = null;
    String categoryName=null;
    
    
    
    try{
    searchName=request.getParameter("searchName");
    dongName=request.getParameter("dongName");
    categoryName=request.getParameter("categoryName");
    System.out.println("searchName---------------");
    System.out.println(searchName);
    System.out.println("dongName---------------");
    System.out.println(dongName);
    System.out.println("categoryName---------------");
    System.out.println(categoryName);

    } catch(NullPointerException e){
       searchName="";
       dongName = "";
       categoryName="";
        
    }
     
    try{
        List<MainProdVO>list = mpDAO.CategoryData(searchName, categoryName, dongName);
        
        //1. JSONArray 생성
       JSONArray jsonArr = new JSONArray();
        
        
        //2. 데이터베이스에서 조회한 결과로 JSONObject 생성하고, JSONArray 에 추가
       JSONObject jsonTemp = null;
        
        
       for(MainProdVO mpVO : list){
    	   jsonTemp=new JSONObject();

       jsonTemp.put("PROD_IMG", mpVO.getProdImg());
       jsonTemp.put("PROD_NAME", mpVO.getProdName());
       jsonTemp.put("PRICE", mpVO.getPrice());
       jsonTemp.put("PLACE_TRANSACTION", mpVO.getAreaName());
       jsonTemp.put("VIEW_CNT", mpVO.getViewCnt());   
       jsonArr.add(jsonTemp);  
       }
       
        //3. JSONArray 출력
       out.print(jsonArr.toJSONString());
        
        }catch(SQLException se){
        	se.printStackTrace();
        }//end catch
    
    %>


