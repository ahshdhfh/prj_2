<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매상품</title>

<link rel="stylesheet" type="text/css" href="http://211.63.89.134/html_prj/project/main.css">
<style type="text/css">

#container{position: relative; width: 1200px; height: 500px; margin: 0px auto;}
#div{position: absolute; margin: auto; width:1200px}
table {
    width: 60%;
    border-collapse: collapse;
    margin: 50px auto;
  }
  td {
    text-align:center;
    border-bottom: 1px solid #444444;
    padding: 10px;
    height: 15px;
  }
  tr{
    border-bottom: 1px solid #444444;
    text-align: left;
  }
  th:first-child, td:first-child {
    border-left: none;
  }
  .bcolor{
  background-color: #B17CC6; color: #FFFFFF;
  }
  .status{
  width:80px;height: 25px; border: none;color:#5E5E5E;cursor: pointer;
  }
</style>
</head>




<body>
<div class="wrap">

  <div class="header">
       <div class="logo"></div>
       
       <div class="search_area">
       <input type="text" class="search" placeholder="물품을 검색해 보세요">
       </div><!-- search-->
       
       <div class="div_select_login"> 
          <select class="select_login" name="이미현 님" >
             <option value="나의 마켓">나의 마켓</option>
             <option value="나의 마켓">나의 마켓</option>
             <option value="상품 등록">상품 등록</option>
             <option value="개인정보수정">개인정보수정</option>
         </select>
       </div>
       

       <div class="logout">
         <a href="http://211.63.89.143/html_prj/project/main_logout.jsp" class="a_login" >로그아웃</a>
       </div>
  </div><!-- header-->
   
   
<div id="container">
<div id="div">
	<table>
	<tr>
	<th colspan="4"><h2>판매상품</h2></th>
	</tr>
	<tr class="bcolor">
	<td>상품번호</td>
	<td>상품명</td>
	<td>거래날짜</td>
	<td>상태</td>
	</tr>
	<tr>
	<td>20000</td>
	<td>xxxx</td>
	<td>2023.01.01</td>
	<td><select class="status">
		<option>판매중</option> 
		<option>거래 완료</option> 
		</select>
	</td>
	</tr>
	<tr>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	</tr>
	<tr>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	</tr>
	</table>

</div>
</div><!-- container -->
     
      <div class="footer">
      <hr class="hr_footer">
      
      <div class="footer_text">
        대표 김용현, 황도연 | 사업자번호 375-87-00088<br>
        직업정보제공사업 신고번호 2016-서울서초-0051<br>
        주소 서울특별시 구로구 디지털로 30길 28, 609호 (당근서비스)<br>
        전화 1544-9796 | 고객문의 cs@daangnservice.com<br>
       </div>
       
      <div class="inquiry1">
        <a href="#void"  class="a_footer">제휴문의</a>
       </div> 
       
        <div class="inquiry2">
        <a href="#void"  class="a_footer">광고문의</a>
       </div> 
       
       <div class="inquiry3">
        <a href="#void"  class="a_footer">PR문의</a>
       </div> 
       
        <div class="inquiry4">
        <a href="#void"  class="a_footer">IR문의</a>
       </div> 
   
       <div class="inquiry5">
        <a href="#void"  class="a_footer">이용약관</a>
       </div> 
       
       <div class="inquiry6">
        <a href="#void"  class="a_footer">개인정보처리방침</a>
       </div> 
       
       <div class="inquiry7">
        <a href="#void"  class="a_footer">이용자보호</a>
       </div> 
       
       <div class="inquiry8">
        <a href="#void"  class="a_footer">비전과계획</a>
       </div>
   </div><!-- footer-->

</div><!-- wrap -->
</body>
</html>