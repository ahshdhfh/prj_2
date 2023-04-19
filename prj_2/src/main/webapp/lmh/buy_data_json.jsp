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
    MainProdDAO mpDAO = new MainProdDAO();
    
    try{
        List<MainProdVO>list = mpDAO.CategoryData("어린이",1,11);
        
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


