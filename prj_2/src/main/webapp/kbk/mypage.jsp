<%@page import="org.apache.catalina.ha.backend.Sender"%>
<%@page import="prj_2.LoginSessionVO"%>
<%@page import="prj_2.UserDAO"%>
<%@page import="prj_2.ModifyProfileVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session="true"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/kbk/main.css">
<style type="text/css">

#container{position: relative; height:500px}

#infoLeft{width: 380px;height: 500px;position: absolute; top:0px; left:20px;padding:40px 20px 0px 20px;text-align:right;}
.profile_img{width:120px;height:120px;border-radius:50%;}
.nickname{font-size:18px;font-weight:700;margin-top:15px;}
.myinfo{font-size:17px;margin-top:15px;}
.profileEdit{cursor:pointer;display:flex;-webkit-box-pack:center;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;height:27px;font-size:13px;color:#757575;border:1px solid #757575;width:100px;margin-left: 250px; margin-top: 20px;}
#infoRight{width: 500px;height: 400px;position: absolute; top:0px; left:450px; border-left: solid 1px #000000; padding: 50px}
.wrap .contents-wrap .order-status-wrap {
    margin-bottom: 39px;
}
.status-list {
    display: -webkit-box;
    display: -ms-flexbox;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    display: -webkit-flex;
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
    -webkit-justify-content: space-between;
    border-top: 1px solid #000;
    border-bottom: 1px solid #ccc;
}

.item {
    -webkit-box-flex: 1;
    -ms-flex: 1;
    flex: 1;
    position: relative;
    padding: 10px 10px 30px;
    text-align: center;
    list-style-type: none;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
.titles{font-size:18px;font-weight:700;margin-top:50px;}

.table2 {
    width: 100%;
    border-top: 1px solid #444444;
    margin-top: 20px;
    border-collapse: collapse;
    text-align: center;
  }
  .tr2 {
    border-bottom: 1px solid #444444;
  }
  .td2{
    padding: 10px;
  }
  #heart{margin-top: 27px}
  
  a{color: #000000;}
</style>
<script type="text/javascript">

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

	String sessionId=lsVO.getUserId();
	
	 UserDAO uDAO=new UserDAO();
	 
	ModifyProfileVO mpVO=uDAO.setProfile(sessionId);
	String img=mpVO.getUserImg();
	String nickname=mpVO.getNickName();
	String intro=mpVO.getPersonalIntro();
	
	
	if(intro==null){
		intro="안녕하세요";
	}
%>  
	<div id="container">

	<div id="infoLeft">
		<div><img src="C:/Users/user/git/prj_2/prj_2/src/main/webapp/kbk/upload/<%= img %>" onerror="this.onerror=null; this.src='http://localhost/prj_2/kbk/upload/profile.png';" class="profile_img"> </div>
		<div class="nickname"><%= nickname %>님 </div>
		<div class="myinfo"><%= intro %></div>
		<div class="profileEdit"><a href="http://localhost/prj_2/kbk/edit_profile.jsp">프로필수정</a></div>
		<div class="profileEdit"><a href="http://localhost/prj_2/kbk/edit_info_password.jsp">회원정보수정</a></div>
	</div>
	
	<div id="infoRight">
	<div class="titles">나의 거래</div>
	<div class="order-status-wrap">
	<ul class="status-list">
		<li class="item">
			<a href="http://localhost/prj_2/kbk/wishlist.jsp" >
			<img src="http://localhost/prj_2/images/wishlist.png" width="100px" id="heart">
			<br>
			<span>관심목록</span>
			</a>
		</li>
		<li class="item">
			<br>
			<a href="http://localhost/prj_2/kbk/history.jsp">
			<img src="http://localhost/prj_2/images/complete.png" width="100px">
<br>
			<span>구매내역</span>
			</a>
		</li>
		<li class="item">
			<br>
			<a href="http://localhost/prj_2/kbk/on_sale.jsp">
			<img src="http://localhost/prj_2/images/shoplist.png" width="100px">
<br>
			<span>판매상품</span>
			</a>
		</li>
	</ul>
</div>
	<div>
		<div class="titles">나의 동네생활</div>
			<table class="table2">
				<tr class="tr2">
					<td><img src="http://localhost/prj_2/images/comment.png" width="50px"></td>
					<td><a href="http://localhost/prj_2/kbk/comment.jsp" >나의 댓글</a></td>
					<td>|</td>
					<td><img src="http://localhost/prj_2/images/receipt.png" width="50px"></td>
					<td><a href="http://localhost/prj_2/kbk/sold.jsp" >판매완료</a></td>
				</tr>
			</table>
		</div>
	</div>
</div><!-- container -->
     
<div class="footer">
	<c:import url="http://localhost/prj_2/lmh/footer.jsp"/>
</div><!-- footer-->
</div>

</body>
</html>