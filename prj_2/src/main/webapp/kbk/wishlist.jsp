<%@page import="prj_2.InterestListVO"%>
<%@page import="java.util.List"%>
<%@page import="prj_2.MyPageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ include file="../ldk/login_chk.jsp" %>  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관심목록</title>

<link rel="stylesheet" type="text/css" href="http://211.63.89.134/html_prj/project/main.css">
<style type="text/css">

#container{position: relative; width: 1200px; height: 500px;}
.grid {
    width: 100%;
    display: grid;
    grid-template-columns: 247px 247px 247px;
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
<% 
MyPageDAO mpDAO=new MyPageDAO();
/* String id=session.getAttribute("userId"); */
List<InterestListVO> interest=mpDAO.selectInterest("abcd1");
StringBuilder prodImg=new StringBuilder();
StringBuilder prodName=new StringBuilder();
StringBuilder prodNum=new StringBuilder();
StringBuilder price=new StringBuilder();
StringBuilder checkedDate=new StringBuilder();
for( InterestListVO iVO : interest ) {
	prodImg.append( iVO.getProdImg());
	prodName.append( iVO.getProdName());
	price.append( iVO.getPrice());
}//end for
%>

	$(function() {
		 $("#heart").hover(function() {
			//마우스 포인터가 들어갔음
			$("#heart").css("width","35px");
			$("#heart").css("height","35px");
		},
		function() {
			//마우스 포인터가 빠져나갔음
			$("#heart").css("width","30px");
			$("#heart").css("height","30px");
		}); 
		
	});//ready

	
	$(function() {
		$("#heart").click(function() {
			$("#heart").fadeOut(250).fadeIn(200);
			var src=$(this).attr('src');
			
			if(src=='http://localhost/prj_2/images/heart_on.svg'){
				$(this).attr('src','http://localhost/prj_2/images/heart_off.png');
				<%-- <%
				mpDAO.deleteInterest(userId, prodNum);
				%> --%>
			}
			if(src=='http://localhost/prj_2/images/heart_off.png'){
				$(this).attr('src','http://localhost/prj_2/images/heart_on.svg');
				<%-- <%
				mpDAO.insertInterest(prodNum, userId);
				%> --%>
			}//end else
		});//click
		
		$("#prdImg").click(function() {
			location.href="http://localhost/prj_2/cis/product_info_login.jsp";
		});//click
		
	});//ready


</script>
</head>

<body>
<div class="wrap">

<div class="header">
	<c:import url="http://localhost/prj_2/lmh/header.jsp"/>
</div><!-- header-->
   
   
<div id="container">

<div>
<h2>관심목록</h2>
	<div>
		<div class="grid">
		<c:forEach varStatus="i" begin="1" end="<%= interest.size() %>" step="1">
			<div class="likedItem">
				<div class="itemBox">
				<img src="<%= prodImg %>" class="ThumbNail" id="prdImg">
					<div class="ThumbNailType__ItemInfoBox-sc-1invua-7 fDnSDy">
						<div><!-- info -->
						<div class="ThumbNailTitle">&lt;<%= prodName %>&gt; ...</div>
						<div class="price"><%= price %></div>
						</div>
					</div><img src="http://localhost/prj_2/images/heart_on.svg" class="heart_on" id="heart">
					<div class="SellStateImg__Wrapper-sc-15fv3xr-0 fNGdVx"></div>
				</div>
			</div>
		</c:forEach>
		</div>
	</div>
</div><!-- container -->
     
<div class="footer">
	<c:import url="http://localhost/prj_2/lmh/footer.jsp"/>
</div><!-- footer-->

</div>
</div>
</body>
</html>