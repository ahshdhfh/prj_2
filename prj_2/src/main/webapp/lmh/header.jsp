<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="header import "
%>



  <div class="header">
       <!-- <div class="logo"> -->
       <a href="http://localhost/prj_2/lmh/main_logout.jsp"><img class="logo" src="http://localhost/prj_2/images/logo.png"></a>
      <!--  </div> -->
       
       
       <form action="/search" method="get">
       <div class="search_area">
       <input type="search" class="search" placeholder="물품을 검색해 보세요">
       </div><!-- search-->
       </form>
       
       <div class="join_member"> 
          <a href="http://localhost/prj_2/이단군/membership_term.jsp"  class="a_join_member"">회원가입</a>
       </div>

       <div class="login">
         <a href="http://localhost/prj_2/lmh/login.jsp" class="a_login" >로그인</a>
       </div>
  </div><!-- header-->
   
 