<%@page import="java.sql.SQLException"%>
<%@page import="prj_2.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"  href="http://localhost/prj_2/ldk/main.css"/>
<style type="text/css">
#wrap{ width: 510px;height: 310px; margin: 0px auto;}
#idSub{ background: #FFF url('http://localhost/prj_2/images/id_background.png');
	width: 502px;height: 303px; position: relative;}
#inputId{ position: absolute;width:320px; top:105px; left: 80px}	
#divResult{ position: absolute;top:200px;left:80px }
</style>
<script type="text/javascript">
window.onload=function(){
	document.getElementById("btn").addEventListener("click",useId);
}
function useId(){
	var obj=document.frm;
	var nickName = obj.nickName.value;

	if(validateId(nickName)){//유효성검증통과
		obj.submit();
	}else{
		alert("닉네임은 한글만 사용하여 2~8글자 이내로 설정해주세요.");
		obj.nickName.focus();
		return;
	}//end else
	

}//useId

function sendId(nickName){
	//자식창 에서 부모창으로 값 전달 
	// opener - 부모창 : opener.window.document.폼이름.control명.value=값 
	opener.window.document.frm.nickName.value=nickName;
	//자식창 닫기
	self.close();
}

function validateId(nickName){
	var regex = /^[가-힣]{2,6}$/;
	return regex.test(nickName);
}
</script>
</head>
<body>
<div id="wrap">

<div id="idSub">
	<div id="inputId">
	<form name="frm" action="popup_nick.jsp" method="post">
	<label style="font-size: 20px">닉네임</label>
	<input type="text" id="nickName" name="nickName" class="inputBox" autofocus="autofocus"
	value="" placeholder="닉네임">
	<input type="button" value="중복확인" id="btn" class="btnBorder">
	</form>
	</div>
	
	<%
	request.setCharacterEncoding("UTF-8");
	String nickName=request.getParameter("nickName");
	System.out.println("파라메터에서 가져온값 : "+nickName);
	if("POST".equals(request.getMethod())){
		
		UserDAO userDAO = new UserDAO();
		try{
		boolean resultFlag = userDAO.nickDup(nickName);
%>
			<div id="divResult">
				<%if(resultFlag){ //검색된 아이디가 없는 상황 ( 아이디 사용가능) %>
					입력하신 <span  id="showId" style="font-weight: bold; color:#0142BA; font-size: 20px " ><%=nickName %></span>는 사용 가능합니다.<br>
					사용하시겠습니까? <a href="javascript:sendId('<%=nickName%>')">사용</a>
				<%}else{ //검색된 아이디가 있는 상황 (아이디 사용불가) %>
					입력하신 <span style="font-weight: bold; color:#E43C2F; font-size: 20px " ><%=nickName %></span>는 사용 불가능합니다.<br>
					다른 닉네임을 입력해 보세요.
				<%}//end else %>
			</div>
	
	<%
		}catch(SQLException se){
		%>
			se.printStackTrace();
		닉네임 중복확인 중 문제가 발생했습니다.
		<br>잠시 후 다시 시도해주세요
		<% 
		}//end catch
		}
		%>
	
</div>

</div>
</body>
