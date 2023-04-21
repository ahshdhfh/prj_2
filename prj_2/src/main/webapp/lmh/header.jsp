<%@page import="prj_2.LoginSessionVO"%>
<%@page import="prj_2.UserDAO"%>
<%@page import="prj_2.MainProdVO"%>
<%@page import="java.util.List"%>
<%@page import="prj_2.MainProdDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="header import "
    session="true"
%>


<%
request.setCharacterEncoding("UTF-8");
String nickName=""; 

LoginSessionVO lVO = (LoginSessionVO)session.getAttribute("loginData");
/* System.out.println("send 후 세션값 : "+(String)session.getAttribute("nickName")); */
/* nickName = (String)request.getAttribute("nickName");
System.out.println(nickName); */

%>

 <% if ( lVO == null  ){   	System.out.print("if");%> 
 



<script type="text/javascript">
 function validateSearchInput() {
	    var searchInput = document.querySelector('.search');
	    if (searchInput.value.trim() === '') {
	        alert('검색어를 입력하세요.');
	        searchInput.focus();
	        return false;
	    } else {
	            location.href = 'http://localhost/prj_2/lmh/buy.jsp?search=' + encodeURIComponent(searchInput.value);
	        return false;
	    	
	    }

	    }
	}
 
 
 
</script>


<%
MainProdDAO MainProdDAO = new MainProdDAO();
List<MainProdVO> MainProdlist = MainProdDAO.SearchData(request.getParameter("search"));

pageContext.setAttribute("prodSearch", MainProdlist);
%>


      <!-- 검색창폼 -->
<form action="http://localhost/prj_2/lmh/buy.jsp" method="get" onSubmit="return validateSearchInput()">
	<!-- <input type="hidden" name="category" value="0"> -->
    <!-- 로고 -->
   <a href="http://localhost/prj_2/lmh/main.jsp"><img class="logo" src="http://localhost/prj_2/images/logo.png"></a>


   <div class="search_area"><!--  검색창   -->
   <input type="search"  class="search" name="searchInput" placeholder="물품을 검색해 보세요" > <!--list 검색가능   -->
   <input type="hidden"  name="category" value="0"> <!--list 검색가능   -->
   </div>

       
       
       
       <div class="join_member"> 
          <a href="http://localhost/prj_2/ldk/membership_term.jsp"  class="a_join_member"">회원가입</a>
       </div>

       <div class="login">
         <a href="http://localhost/prj_2/lmh/login.jsp" class="a_login" >로그인</a>
       </div>




  
  
  <% } else {
  	System.out.print("else");
  %>
              

       <a href="http://localhost/prj_2/lmh/main.jsp"><img class="logo" src="http://localhost/prj_2/images/logo.png"></a>



       <div class="search_area">
       <input type="search" class="search" placeholder="물품을 검색해 보세요"> <!--list 검색가능  -->
       </div><!-- search-->
  

  
 <div class="div_select_login"> 
         <select class="select_login" onchange="window.location.href=this.value">
             <option value="이름" ><%= lVO.getNickName() %>님</option>
             <option value="http://211.63.89.134/prj_2/kbk/mypage.jsp" >나의 마켓</option>
             <option value="http://211.63.89.152/prj_2/cis/sell_page.jsp">상품 등록</option>
             <option value="http://211.63.89.134/prj_2/kbk/EditInfoPassword.jsp">개인정보수정</option>
         </select> 
       </div>
       

       <div class="logout">
         <a href="http://localhost/prj_2/lmh/logout.jsp" class="a_login" >로그아웃</a>
       </div>
       
   </form><!-- search-->
   
 <% } %>
    
 