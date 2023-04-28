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
    ManageMentCommDAO mmcDAO=new ManageMentCommDAO();
    String search=request.getParameter("searchName");
    try{
    	List<AdminCommVO> list=mmcDAO.commSearch(search);	
    
    //1. JSONArray 생성
    JSONArray jsonArr=new JSONArray();
    //2. 데이터베이스에서 조회한 결과로 JSONObject 생성하고, JSONArray에 추가
    JSONObject jsonTemp=null;
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
    for(AdminCommVO acVO : list){
    	jsonTemp=new JSONObject();
    	//생성된 JSONObject에 속성값을 넣는다. 
    	jsonTemp.put("commentNum", acVO.getCommentNum());
    	jsonTemp.put("prodComment",acVO.getProdComment() );
    	jsonTemp.put("prodNum", acVO.getProdNum());
    	jsonTemp.put("userId", acVO.getUserId());
    	jsonTemp.put("writeDate", sdf.format(acVO.getWriteDate()));
    	//값을 가진 JSONObject을 JSONArray에 할당
    	jsonArr.add(jsonTemp);
    }  
    //3. JSONArray 출력
    out.print(jsonArr.toJSONString());
    
    }catch(SQLException se){
    	se.printStackTrace();	
    }%>
