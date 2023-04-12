<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/* 
id=asdf
&pass1=asdfasdf
&pass2=asdfasdf
&name=%EC%9D%B4%EB%8B%A8%EA%B5%B0
&birthDate=2000-01-13
&email=asdf
&email2=google
&nick=%EC%9D%B4%EB%8B%A8%EA%B5%B0
&gender=%EB%82%A8%EC%9E%90
&zipcode=06035
&addr=%EC%84%9C%EC%9A%B8+%EA%B0%95%EB%82%A8%EA%B5%AC+%EA%B0%80%EB%A1%9C%EC%88%98%EA%B8%B8+5
&addr2=a
&actLocalNum=%EC%95%95%EA%B5%AC%EC%A0%95%EB%8F%99
&tel1=010
&tel2=12345678 */
String id = request.getParameter("id");//이름
String pass1 = request.getParameter("pass1");//비번
String pass2 = request.getParameter("pass2");//비번확인
String name = request.getParameter("name");//이름
String birthDate = request.getParameter("birthDate");//생년월일
String email = request.getParameter("email");//이메일

String email2 = request.getParameter("email2");//도메인
if(email2.equals("직접입력")){//직접입력시 입력한 내용으로 email2 재설정
	email2 = request.getParameter("email3");//직접입력 도메인
}
String nick = request.getParameter("nick");//닉네임
String gender = request.getParameter("gender");//성별
String zipcode = request.getParameter("zipcode");//성별
String addr = request.getParameter("addr");//주소
String addr2 = request.getParameter("addr2");//상세주소
String actLocalNum = request.getParameter("actLocalNum");//이름
String tel1 = request.getParameter("tel1");//이름
String tel2 = request.getParameter("tel2");//이름
response.sendRedirect("http://localhost/prj_2/ldk/succ_join.jsp");
%>
<%-- <script type="text/javascript">

function validateId(id){
	var regex = /^[a-z0-9]{4,15}$/;
	return regex.test(id);
}//validateId

if(!validate(<%=id%>)){
	alert("id를 확인하세요!")
	history.back();
}else{
	location.href="http://211.63.89.142/html_prj/project/succ_join.jsp"
}

</script> --%>



