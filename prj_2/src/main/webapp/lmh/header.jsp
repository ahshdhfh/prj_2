<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="header import "
%>

<%
String id=""; 
id = (String)session.getAttribute("id"); 
%>

 <% if ( !"".equals(id) ){ %> 

<div class="header">
        <form action="/search" method="get"> <!-- 검색창 -->
       <a href="http://localhost/prj_2/lmh/main.jsp"><img class="logo" src="http://localhost/prj_2/images/logo.png"></a>

       
       

       <div class="search_area">
       <input type="search" class="search" placeholder="물품을 검색해 보세요"> <!--list 검색가능   -->
       </div><!-- search-->
       </form>
       
       <div class="join_member"> 
          <a href="http://localhost/prj_2/ldk/membership_term.jsp"  class="a_join_member"">회원가입</a>
       </div>

       <div class="login">
         <a href="http://localhost/prj_2/lmh/login.jsp" class="a_login" >로그인</a>
       </div>

 </div> 
  
  <% } else {%>
  <div class="header">
     <form action="/search" method="get"> <!-- 검색창 -->
       <a href="http://localhost/prj_2/lmh/main.jsp"><img class="logo" src="http://localhost/prj_2/images/logo.png"></a>

       <div class="search_area">
       <input type="search" class="search" placeholder="물품을 검색해 보세요"> <!--list 검색가능   -->
       </div><!-- search-->
       </form>
  
 <div class="div_select_login"> 
         <select class="select_login" onchange="window.location.href=this.value">
             <option value="이름"  hidden><%=id %>님</option>
             <option value="http://211.63.89.134/prj_2/김보경/mypage.jsp" >나의 마켓</option>
             <option value="http://211.63.89.152/prj_2/조익상/sell_page.jsp">상품 등록</option>
             <option value="http://211.63.89.134/prj_2/김보경/EditInfoPassword.jsp">개인정보수정</option>
         </select> 
       </div>
       

       <div class="logout">
         <a href="http://localhost/prj_2/lmh/logout.jsp" class="a_login" >로그아웃</a>
       </div>
       
       </div>
 <% } %>
    
 