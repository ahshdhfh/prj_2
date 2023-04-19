<%@page import="prj_2.MainProdVO"%>
<%@page import="java.util.List"%>
<%@page import="prj_2.MainProdDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="header import "
%>

<%
String id=""; 
id = (String)session.getAttribute("id"); 
%>

 <% if ( !"".equals(id) ){ %> 
 
 


<script type="text/javascript">
 function validateSearchInput() {
	    var searchInput = document.querySelector('.search');
	    if (searchInput.value.trim() === '') {
	        alert('검색어를 입력하세요.');
	        searchInput.focus();
	        return false;
	    } else {
	        var mainProdSearchDAO = new MainProdSearchDAO();
	        mainProdSearchDAO.selectProd(searchInput.value, function(result) {
	            location.href = 'http://localhost/prj_2/lmh/buy.jsp?search=' + encodeURIComponent(searchInput.value);
	        });
	        return false;
	    }
	}
 
 
 
 
/*  
 $(function(){
		$("#btn").click(function(){
			var jsonParam={  empno:$("#empno").val() };
			
			
			$.ajax({
				url : "jsonobj.jsp",
				data : jsonParam,
				type : "POST",
				dataType : "JSON",
				error : function( xhr ){
					alert( "서버에서 문제가 발생하였습니다" ); //사용자에게 보여줌
					console.log( "에러코드 : " +xhr.status); //개발자가봄
				},
				success : function( jsonObj ){
					//JSONObject Parsing 문법 : 객체명.이름
					if( jsonObj.searchFlag ) {
						var createTr="<tr><td>" +
						jsonObj.empno+"</td><td>"+
						jsonObj.ename+"</td><td>"+
						jsonObj.job+"</td><td>"+
						jsonObj.sal+"</td><td>"+
						jsonObj.deptno+"</td><td>"+
						jsonObj.hiredate+"</td></tr>";

						$("#empTab:last").append(createTr);
						$("#empno").val("");
						
					}else{
						var msg = $("#empno").val() + "번 사원은 존재하지 않습니다";
						if($("#empno").val() == ""){
							msg="사원번호를 입력해야 하는 부분";
						}//end if
						
						$("#empWarn").html( msg );
						
						for(var i=0; i < 6; i++){
						$("#empWarn").fadeOut(500).fadeIn(500).fadeOut(500);
					}//end for
					}//end else
				}
			}); //ajax
		}); //click
	});//ready */
 
 
</script>


<%
MainProdDAO MainProdDAO = new MainProdDAO();
List<MainProdVO> MainProdlist = MainProdDAO.SearchData(request.getParameter("search"));

pageContext.setAttribute("prodSearch", MainProdlist);
%>


      <!-- 검색창폼 -->
<form action="/search" method="get" onSubmit="return validateSearchInput()">

    <!-- 로고 -->
   <a href="http://localhost/prj_2/lmh/main.jsp"><img class="logo" src="http://localhost/prj_2/images/logo.png"></a>


   <div class="search_area"><!--  검색창   -->
   <input type="search"  class="search" placeholder="물품을 검색해 보세요" > <!--list 검색가능   -->
   </div>
   </form><!-- search-->
       
       
       
       <div class="join_member"> 
          <a href="http://localhost/prj_2/ldk/membership_term.jsp"  class="a_join_member"">회원가입</a>
       </div>

       <div class="login">
         <a href="http://localhost/prj_2/lmh/login.jsp" class="a_login" >로그인</a>
       </div>

  

  
  
  <% } else {%>
              
       <form action="/search" method="get" onSubmit="return validateSearchInput()">
       <a href="http://localhost/prj_2/lmh/main.jsp"><img class="logo" src="http://localhost/prj_2/images/logo.png"></a>

       <div class="search_area">
       <input type="search" class="search" placeholder="물품을 검색해 보세요"> <!--list 검색가능  -->
       </div><!-- search-->
       </form>
  
  
  
 <div class="div_select_login"> 
         <select class="select_login" onchange="window.location.href=this.value">
             <option value="이름"  hidden><%=id %>님</option>
             <option value="http://211.63.89.134/prj_2/kbk/mypage.jsp" >나의 마켓</option>
             <option value="http://211.63.89.152/prj_2/cis/sell_page.jsp">상품 등록</option>
             <option value="http://211.63.89.134/prj_2/kbk/EditInfoPassword.jsp">개인정보수정</option>
         </select> 
       </div>
       

       <div class="logout">
         <a href="http://localhost/prj_2/lmh/logout.jsp" class="a_login" >로그아웃</a>
       </div>
       

 <% } %>
    
 