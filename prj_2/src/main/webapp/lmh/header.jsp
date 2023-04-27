<%@page import="prj_2.LoginSessionVO"%>
<%@page import="prj_2.UserDAO"%>
<%@page import="prj_2.MainProdVO"%>
<%@page import="java.util.List"%>
<%@page import="prj_2.MainProdDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="header import"
    session="true"
%>
<%
request.setCharacterEncoding("UTF-8");
String nickName=""; 

LoginSessionVO lsVO = (LoginSessionVO)session.getAttribute("loginData");
/* System.out.println("send 후 세션값 : "+(String)session.getAttribute("nickName")); */
/* nickName = (String)request.getAttribute("nickName");
System.out.println(nickName); */
%>
<script type="text/javascript">
 function validateSearchInput(){
	    var searchInput = document.querySelector('.search');
	    if (searchInput.value.trim() === '') {
	        alert('검색어를 입력하세요.');
	        searchInput.focus();
	        return false;
	   		 } else {
	   			 var encodedSearchInput = encodeURIComponent(searchInput.value);
	   	window.location.href = 'http://localhost/prj_2/lmh/buy.jsp?category=0&dong=0&searchInput='+encodedSearchInput;
	        return false;   	
	   		 }//end else
	}//validateSearchInput
</script>

<!--로고 이미지 시작 -->
   <a href="http://localhost/prj_2/lmh/main.jsp"><img class="logo" src="http://localhost/prj_2/images/logo.png"></a>
<!--로고 이미지 끝 -->

<!-- 검색창폼 -->
   <form action="http://localhost/prj_2/lmh/buy.jsp" method="get" onSubmit="return validateSearchInput()" name="frmheader" id="">
    <!-- 로고 -->
   <div class="search_area"><!--  검색창   -->
   <input type="search"  class="search" name="searchInput1" placeholder="물품을 검색해 보세요" /> 
   </div>
</form><!-- search-->

 <% if ( lsVO == null  ){  %>
           
       <div class="join_member"> 
          <a href="http://localhost/prj_2/ldk/membership_term.jsp" class="a_join_member">회원가입</a>
       </div>

       <div class="login">
         <a href="http://localhost/prj_2/lmh/login.jsp" class="a_login" >로그인</a>
       </div>
  
  <% } else {
  %>
             
 <div class="div_select_login"> 
         <select class="select_login">
             <option value="이름" ><%= lsVO.getNickName() %>님</option>
             <option value="http://211.63.89.134/prj_2/kbk/mypage.jsp" >나의 마켓</option>
             <option value="http://211.63.89.152/prj_2/cis/sell_page.jsp">상품 등록</option>
             <option value="http://211.63.89.134/prj_2/kbk/EditInfoPassword.jsp">개인정보수정</option>
         </select> 
       </div>
       
       <div class="logout">
         <a href="http://localhost/prj_2/lmh/logout.jsp" class="a_login" >로그아웃</a>
       </div>
       
   
 <% } %>
    
 