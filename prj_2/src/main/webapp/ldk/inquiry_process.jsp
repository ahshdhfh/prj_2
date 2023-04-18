<%@page import="prj_2.FindPassVO"%>
<%@page import="prj_2.UserDAO"%>
<%@page import="prj_2.FindIdVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
//post방식이므로 캐릭터셋 변경
if(request.getMethod()=="GET"){response.sendRedirect("http://localhost/prj_2/lmh/main.jsp");}//비정상적인 접근 차단

String userId = request.getParameter("userId");//아이디 값 할당
String userName=request.getParameter("userName");//이름 값 할당
String email=request.getParameter("email")+"@"+request.getParameter("email2");//이메일 값 할당

UserDAO userDAO = new UserDAO();

if(userId==null){//아이디가 없는경우 - 아이디찾기
	
	FindIdVO fiVO = new FindIdVO();
	fiVO.setUserName(userName);//이름넣기
	fiVO.setEmail(email);//이메일 넣기
	String result=userDAO.selectFindId(fiVO);//결과 값 할당
	if("".equals(result)){//실패했다면??
		out.println("<script type=\"text/javascript\">");
		out.println("alert('가입 기록이 없습니다. 이름 및 아이디를 다시 한번 확인해주세요');");
		out.println("history.back();");
		out.println("</script>");
	}else{//찾아온값을 알려주자.
		response.sendRedirect("succ_id_inquiry.jsp?userId="+result);//파라메터로 아이디 포함시켜서 보내기
	}//end else
	
}
if(userId!=null){//비밀번호 찾기
	FindPassVO fpVO = new FindPassVO();
	fpVO.setUserId(userId);	
	fpVO.setUserName(userName);
	fpVO.setEmail(email);
	

	
	String result = userDAO.selectFindPass(fpVO);
	if("실패".equals(result)){//실패했다면??
		out.println("<script type=\"text/javascript\">");
		out.println("alert('비밀번호 찾기에 실패했습니다. 다시 시도해주세요');");
		out.println("history.back();");
		out.println("</script>");
	}else{
		out.println("<script type=\"text/javascript\">");
		out.println("alert('인증 성공!!! 비밀번호 재설정 페이지로 이동합니다.');");
		out.println("location.href='http://localhost/prj_2/kbk/editPasswordOnly.jsp';");
		out.println("</script>");
		
	}
}
%>