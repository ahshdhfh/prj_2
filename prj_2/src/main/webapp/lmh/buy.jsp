<%@page import="java.util.List"%>
<%@page import="prj_2.MainProdDAO"%>
<%@page import="prj_2.MainProdVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 추가 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매하기</title>
<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/main.css">
<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/buy.css">
<style type="text/css">

.area_buy_bike{
min-height: 1500px; 
width: 1200px;
position: relative; 
}
</style>


<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 시작 -->
<script type="text/javascript">
	var category=${param.category};
	var searchInput=${param.searchInput};
	alert(searchInput);
	var dong=null;

$(function(){
	
	
	$("#select_town").change(function(){		
		dong=$("#select_town option").index($("#select_town option:selected"));
		callProdList();
	});
	
	$("#select_category").change(function(){		
		category=$("#select_category option").index($("#select_category option:selected"));
		callProdList();
	});
	
	callProdList();
	
}); 

function callProdList() {
	
	var jsonParam={categoryName : category, dongName:dong, searchName :  searchInput };
	$.ajax({
		url : "buy_data_json.jsp",
		data : jsonParam,
		dataType : "JSON",
		error : function( xhr ){
			alert( "서버에서 문제가 발생하였습니다" ); //사용자에게 보여줌
			console.log( "에러코드 : " +xhr.status); //개발자가봄
		},
		success : function( jsonArr ){
			var tbody ="";
			let cnt=0;
			
		    if($("#popular_sale_table tr").length >0){
		    	$("#popular_sale_table > tbody").empty(); //tbody 모두 삭제
		    }//end if
			
			$.each( jsonArr, function(idx, jsonObj) {	
			if(cnt%4==0){
				tbody+="</tr><tr>";
			}
			cnt++;
			tbody+="<td class='prdCol' id='remov'><div><img class='prod_img' src='"+jsonObj.PROD_IMG+
			"'/></div><div><strong><h3>"+jsonObj.PROD_NAME+
			"</h3></strong><br>"+jsonObj.PRICE.toLocaleString()+
			   "원<br>"+jsonObj.PLACE_TRANSACTION+
			   "<br>조회"+jsonObj.VIEW_CNT+
			   "<br></div></td>"; 
			}); //each   
			
			$("#popular_sale_table").append(tbody);
		}//succes	
		 
	});//ajax
	
}//callProdList

</script>
</head>
<body>
<div class="wrap">

  
  <div class="header">
      <%@ include file="header.jsp" %>
  </div>
  
  
  <form id="categoryFrm"  action="http://localhost/prj_2/lmh/buy.jsp" method="get">
     <div class="area_buy_bike"> 
    
    <div class="div_select_town"> 
          <select class="select_town" id="select_town" >
             <option value="0">모든동네</option>
             <option value=1>압구정동</option>
             <option value=2>신사동</option>
             <option value=3>청담동</option>
             <option value=4>논현동</option>
             <option value=5>삼성동</option>
             <option value=6>역삼동</option>
             <option value=7>대치동</option>
             <option value=8>도곡동</option>
             <option value=9>개포동</option>
             <option value=10>일원동</option>
             <option value=11>수서동</option>
             <option value=12>자곡동</option>
             <option value=13>율현동</option>
             <option value=14>세곡동</option>
             
         </select>
    </div><!--div_select_town -->
     
    
       <div class="div_select_category"> 
          <select class="select_category" id="select_category">
             <option value="0" >모든 카테고리</option>
             <option value="1" ${param.category eq '1'?"selected='selected'":""}>자전거</option>
             <option value="2" ${param.category eq '2'?"selected='selected'":""}>의류</option>
             <option value="3" ${param.category eq '3'?"selected='selected'":""}>용품</option>
             <option value="4" ${param.category eq '4'?"selected='selected'":""}>부품</option>
         </select>
    </div><!--div_select_category  -->
    
    
</form><!-- categoryFrm -->
    



<table class="popular_sale_table" id="popular_sale_table">
  <tr>
  </tr>
</table> <!--popular_sale_table  -->



 
</div> <!-- wrap -->


   <div class="footer">
      <c:import url="http://localhost/prj_2/lmh/footer.jsp" />
   </div><!-- footer-->
   
   

 

</body>
</html>