<%@page import="prj_2.AdminProductVO"%>
<%@page import="prj_2.ManageMentProdDAO"%>
<%@page import="prj_2.AdminMemberVO"%>
<%@page import="prj_2.ManageMentMemberDAO"%>
<%@page import="prj_2.AdminCommVO"%>
<%@page import="prj_2.ManageMentCommDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.SQLException"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="JSONArray"
    trimDirectiveWhitespaces="true"%><%
    ManageMentProdDAO mpDAO=new ManageMentProdDAO();
    String search=request.getParameter("searchName");
    try{
    	List<AdminProductVO> list=mpDAO.prodSearch(search);	
    
    //1. JSONArray 생성
    JSONArray jsonArr=new JSONArray();
    //2. 데이터베이스에서 조회한 결과로 JSONObject 생성하고, JSONArray에 추가
    JSONObject jsonTemp=null;
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
    for(AdminProductVO apVO : list){
    	jsonTemp=new JSONObject();
    	//생성된 JSONObject에 속성값을 넣는다. 
    	jsonTemp.put("categoryName", apVO.getCategoryName());
    	jsonTemp.put("price",apVO.getPrice() );
    	jsonTemp.put("prodName", apVO.getProdName());
    	jsonTemp.put("prodNum", apVO.getProdNum());
    	jsonTemp.put("userId", apVO.getUserId());
    	jsonTemp.put("inputDate", sdf.format(apVO.getInputDate()));
    	//값을 가진 JSONObject을 JSONArray에 할당
    	jsonArr.add(jsonTemp);
    }  
    //3. JSONArray 출력
    out.print(jsonArr.toJSONString());
    
    }catch(SQLException se){
    	se.printStackTrace();	
    }%>
