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
	var id = obj.id.value;

	if(validateId(id)){//유효성검증통과
		obj.submit();
	}else{
		alert("아이디는 영문 소문자와 숫자의 조합으로만 4~15글자 내로 설정할 수 있습니다.");
		obj.id.focus();
		return;
	}//end else
	

}//useId

function sendId(id){
	//자식창 에서 부모창으로 값 전달 
	// opener - 부모창 : opener.window.document.폼이름.control명.value=값 
	opener.window.document.frm.userId.value=id;
	//자식창 닫기
	self.close();
}

function validateId(id){
	var regex = /^[a-z0-9]{4,15}$/;
	return regex.test(id);
}
</script>
</head>
<body>
<div id="wrap">

<div id="idSub">
	<div id="inputId">
	<form name="frm" action="popup_id.jsp" method="post">
	<label style="font-size: 20px">아이디</label>
	<input type="text" id="id" name="id" class="inputBox" autofocus="autofocus"
	value="" placeholder="아이디">
	<input type="button" value="중복확인" id="btn" class="btnBorder">
	</form>
	</div>
	
	<%
	String id=request.getParameter("id");
	if("POST".equals(request.getMethod())){
		
		UserDAO userDAO = new UserDAO();
		try{
		boolean resultFlag = userDAO.idDup(id);
%>
			<div id="divResult">
				<%if(resultFlag){ //검색된 아이디가 없는 상황 ( 아이디 사용가능) %>
					입력하신 <span  id="showId" style="font-weight: bold; color:#0142BA; font-size: 20px " ><%=id %></span>는 사용 가능합니다.<br>
					사용하시겠습니까? <a href="javascript:sendId('<%=id%>')">사용</a>
				<%}else{ //검색된 아이디가 있는 상황 (아이디 사용불가) %>
					입력하신 <span style="font-weight: bold; color:#E43C2F; font-size: 20px " ><%=id %></span>는 사용 불가능합니다.<br>
					다른 아이디를 입력해 보세요.
				<%}//end else %>
			</div>
	
	<%
		}catch(SQLException se){
		%>
			se.printStackTrace();
		아이디 중복확인 중 문제가 발생했습니다.
		<br>잠시 후 다시 시도해주세요
		<% 
		}//end catch
		}
		%>
	
</div>

</div>
</body>
