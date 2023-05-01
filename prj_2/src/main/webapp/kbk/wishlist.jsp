<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="prj_2.InterestListVO"%>
<%@page import="java.util.List"%>
<%@page import="prj_2.MyPageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관심목록</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/main.css">
<style type="text/css">

#container{position: relative; width: 1200px; min-height: 600px;}
.grid {
    width: 100%;
    display: grid;
    grid-template-columns: 247px 247px 247px 247px;
}

.likedItem{padding:0 5px;}

.itemBox{position:relative;width:230px;margin-bottom:20px;cursor:pointer;}
.ThumbNail{width:231px;height:231px;border-radius:5px;object-fit:cover;}

.fDnSDy{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-pack:justify;-webkit-justify-content:space-between;-ms-flex-pack:justify;justify-content:space-between;}
.ThumbNailTitle{margin-top:7px;color:#454c53;font-size:17px;} @media all and (max-width:800px){.title{font-size:14px;margin-top:5px;}}
.price{color:#000;font-size:22px;}
.fPDVWA{width:39px;height:39px;border:1px solid #ebebeb;border-radius:11px;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;margin-top:7px;} @media all and (max-width:800px){.fPDVWA{width:33px;height:33px;}}
.dfwPrT{width:16px;height:16px;}
.heart_on{position:absolute;bottom:70px;right:5px;width:30px;height:30px;}
.fNGdVx{position:absolute;top:0;}
</style>
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->

<script type="text/javascript">
	const hhhh = document.getElementsByClassName("heart").value;
	$(function() {
		 $(".heart_on").hover(function() {
			//마우스 포인터가 들어갔음
			$(".heart_on").css("width","35px");
			$(".heart_on").css("height","35px");
		},
		function() {
			//마우스 포인터가 빠져나갔음
			$(".heart_on").css("width","30px");
			$(".heart_on").css("height","30px");
		}); 
		

	
		$(".heart_on").click(function() {
			$(".heart_on").fadeOut(250).fadeIn(200);
			
			var src=$(this).attr('src');
			var elementId = $(this).attr('id');
			 $("#index").val(elementId);
			 
			if(src=='http://localhost/prj_2/images/heart_on.svg'){
		   $("#pic").val(src);
		   $("#frm").submit();
				$(this).attr('src','http://localhost/prj_2/images/heart_off.png');
			}
			if(src=='http://localhost/prj_2/images/heart_off.png'){
				$(this).attr('src','http://localhost/prj_2/images/heart_on.svg');
				 $("#pic").val(src);
				 $("#frm").submit();
			}//end else
		});//click
		
		
	});//ready

</script>
</head>

<body>
<div class="wrap">

<div class="header">
<%@ include file="../lmh/header.jsp" %>
</div><!-- header-->
	<% 
	if (lsVO == null) {
		  response.sendRedirect("../lmh/login.jsp");
		  return;
		} 
		
		
	MyPageDAO mpDAO=new MyPageDAO();
	String sessionId=lsVO.getUserId();
	InterestListVO ilVO=new InterestListVO();
	List<InterestListVO> interest=mpDAO.selectInterest(sessionId);
	%>   
   
<div id="container">

<div>
<h2>관심목록</h2>
	<div>
	<form action="wishlist_process.jsp" id="frm" method="post">
		<div class="grid"><%
		int i=0;
	for( InterestListVO iVO : interest) {
		
	%>	
	
	<div class="likedItem">
				<div class="itemBox">
				<a href="http://localhost/prj_2/cis/product_info.jsp?prodNum=<%= iVO.getProdNum()%>">
				<input type="hidden" value="<%= iVO.getProdNum()%>" name="pNum" id="pNum"/>
				<input type="hidden" value="<%= i %>" name="index" id="index" />
				<img src="<%= iVO.getProdImg() %>" class="ThumbNail" id="prdImg"></a>
					<div class="ThumbNailType__ItemInfoBox-sc-1invua-7 fDnSDy">
						<div><!-- info -->
						<div class="ThumbNailTitle">&lt;<%= iVO.getProdName() %>&gt; ...</div>
						<div class="price"><fmt:formatNumber pattern="#,###,###" value='<%=iVO.getPrice()%>' />원</div>
						</div>
					</div>
					<input type="hidden">
					<img src="http://localhost/prj_2/images/heart_on.svg" class="heart_on" id="<%= i %>" name="heart"/>
				<input type="hidden" value="" name="pic" id="pic"/>
				
					<div class="SellStateImg__Wrapper-sc-15fv3xr-0 fNGdVx"></div>
				</div>
			</div>
		<%
	
		i++;
	}//end for
		%>
		</div>
		</form>
		</div>
	</div>
</div><!-- container -->
     
<div class="footer">
	<c:import url="http://localhost/prj_2/lmh/footer.jsp"/>
</div><!-- footer-->

</div>
</body>
</html>