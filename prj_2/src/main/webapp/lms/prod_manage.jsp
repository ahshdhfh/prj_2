<%@page import="prj_2.AdminProductVO"%>
<%@page import="java.util.List"%>
<%@page import="prj_2.ManageMentProdDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩 시작  -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<!-- 부트스트랩 끝  -->
<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lms/main_v20230217.css">
<link rel="stylesheet" href="http://localhost/prj_2/lms/font-awesome/css/font-awesome.min.css" >
<style type="text/css">


/* 화면구성  */
#wrap { width: 1200px; height: 800px; margin: 0px auto; }
#header { width: 200px; height: 800px; float: left; background-color: #9B59B6   }
#container { width: 990px; height: 800px;  float: right;   }
#con_header { height: 60px;   }
#con_main {height: 740px;  position: relative;  }

/* 테이블 */
#search_commdb { position: absolute; top:50px; left: 30px;  }
.table_comm{ border: 1px solid #333;}
.btn_search{ background: #8F27A4; color: white; width: 70px; height: 35px;  }
.text_search { border: 1px solid #333; height: 30px; }

td{border: 1px solid #333; text-align: center }
tr{ height: 30px; }
#table_div{ position: absolute; top:100px; left: 30px; }
.table_header{ background: #8F27A4; color: white; font-weight: bold; font-size: 15px; }

/* 메뉴 */
.col_tit {font-size: 20px; color: #8F27A4; padding-bottom: 10px; }
.menu { }
.menu li {position: relative;}
.menu li a {
    font-size: 16px; text-transform: uppercase;
    color: black;
    font-weight:bold;
    border-bottom: 1px solid #dbdbdb;
    padding: 10px; display: block;
    transition: box-shadow 0.34s ease, background 0.34s ease;
}
.menu li a i {
    position: absolute; right: 10px; top: 15px;
}
.menu li a:hover {
    box-shadow: inset 180px 0 0 0 rgba(143, 39, 164,0.7);
    color: #fff;
    background: rgba(143, 39, 164,0.9);
}


</style>
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
<script type="text/javascript">

$(function(){

	jquery();
	
});//ready

function search() {
	var obj=document.frm;
	var search=obj.id.value;
	jquery(search);	
}


function jquery(search) {
	var searchInput="";
	
	if(!search==""){		
	searchInput=search;
	}
	
	var jsonParam={searchName : searchInput};
	$.ajax({
		url : "data_prod_manage.jsp",
		dataType: "JSON",
		data : jsonParam,
		error : function( xhr ){
			console.log( xhr.status );
		},
		success : function ( jsonArr ){
			var tbody="";	
			let cnt=0;
			
		    if($("#table tr").length >1){
		    	$("#table > tbody").empty(); //tbody 모두 삭제
		    }//end if
			
			$.each( jsonArr,function(idx, jsonObj){
				cnt++;
			tbody+="<tr><td>"+
						jsonObj.prodNum+"</td><td>"+
						jsonObj.categoryName+"</td><td>"+
						"<a href='http://localhost/prj_2/cis/product_info.jsp?prodNum="+jsonObj.prodNum+"'>"+jsonObj.prodName+"</td><td></a>"+
						jsonObj.userId+"</td><td>"+
						jsonObj.inputDate+"</td></tr>";	
			} );//each
								
			if( cnt ==0 ){
				tbody="<tr><td colspan='5'>댓글이 없습니다.</td><tr>"
			}//end if
			
			$("#table:last").append( tbody );
			$("#id").val()="";
		}//success
	});//ajax
}//jquery


</script>
</head>
<body>
<div id="wrap" > <!-- wrap( w: 800 x h:950 ) -->
		<div id="header" ><!-- header(w: 200 x h : 1400 ) --> 
		<div>
		<a href="http://localhost/prj_2/lms/dashboard.jsp"><img src="http://localhost/prj_2/images/logo.png" width="150"></a>
		</div>
		<br>
		 <h4 class="col_tit"><i class="fa fa-bars" aria-hidden="true"></i>Menu</h4>
		       <div class="menu">
               		<ul>
                              <li><a href="http://localhost/prj_2/lms/dashboard.jsp"><i class="fa fa-th-large" aria-hidden="true" style="position: absolute; left: 1px; top: 10px;" ></i>&ensp;Dashboard <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                              <li><a href="http://localhost/prj_2/lms/member_manage.jsp"><i class="fa fa-user" aria-hidden="true" style="position: absolute; left: 1px; top: 10px;" ></i>&ensp;회원관리 <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                              <li><a href="http://localhost/prj_2/lms/prod_manage.jsp"><i class="fa fa-cart-plus" aria-hidden="true" style="position: absolute; left: 1px; top: 10px;" ></i>&ensp;상품관리 <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                              <li><a href="http://localhost/prj_2/lms/comm_manage.jsp"><i class="fa fa-commenting-o" aria-hidden="true" style="position: absolute; left: 1px; top: 10px;" ></i>&ensp;댓글관리 <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                              <li><a href="http://localhost/prj_2/lms/adminlogin.jsp"><i class="fa fa-sign-out" aria-hidden="true" style="position: absolute; left: 1px; top: 10px;" ></i>&ensp;로그아웃 <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                  	</ul>
                </div>
		</div>
		<div id="container"><!-- container(w: 800 x h : 600 ) -->
			<div id="con_header" >
			<div class="dash">
			<br>
			<h1>상품관리</h1>
			<hr>
			</div>
			</div>
			<div id="con_main">
			
			<div id="search_commdb" >
			<form action="" name="frm" id="frm">
			<label  >상품조회</label>
			<i class="fa fa-search fa-lg" aria-hidden="true" ></i>
			<input type="text" class="text_search" name="id" id="id">
			<input type="button" value="확인" class="btn_search" style="float: right" onclick="search()">
			</form>
			</div>		
			
				<div id=table_div style="overflow: auto; height: 500px" >
				<table class="table_comm" cellspacing="0" id="table">
				<thead>
				<tr class="table_header">
				<td width="80">상품번호</td><td width="80">카테고리</td><td width="400">상품명</td><td width="80">회원명</td><td width="120">작성일</td>
				</tr>
				</thead>												
				</table>
				</div>
			</div>
		</div>
</div>
</body>
</html>