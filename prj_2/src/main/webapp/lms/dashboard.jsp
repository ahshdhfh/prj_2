<%@page import="prj_2.TotalMemberCntVO"%>
<%@page import="prj_2.MemberCntVO"%>
<%@page import="prj_2.CategoryCntVO"%>
<%@page import="java.util.List"%>
<%@page import="prj_2.DashBoardDAO"%>
<%@page import="prj_2.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lms/main_v20230217.css">
<link rel="stylesheet" href="http://localhost/prj_2/lms/font-awesome/css/font-awesome.min.css">
<style type="text/css">

/* 화면구성  */
#wrap { width: 1200px; height: 1050px; margin: 0px auto;  }
#header { width: 200px; height: 1050px; float: left; background-color: #9B59B6   }
#container { width: 988px; height: 1050px;  float: right;   }
#con_header { height: 60px;   }
#con_main {height: 990px;  position: relative;  }

/* 메뉴 */
.col_tit {font-size: 20px; color: #000000; padding-bottom: 10px;}
.menu { }
.menu li {position: relative;}
.menu li a {
    font-size: 16px; text-transform: uppercase;
    color: black;
    font-weight:bold;
    border-bottom: 1px solid #dbdbdb;
    padding: 10px; display: block;
    transition: box-shadow 0.34s ease, background 0.34s ease;
}
.menu li a i {
    position: absolute; right: 10px; top: 15px;
}
.menu li a:hover {
    box-shadow: inset 180px 0 0 0 rgba(143, 39, 164,0.7);
    color: #fff;
    background: rgba(143, 39, 164,0.9);
}

/* 거래현황  그래프   */
#chart1{ position: absolute; top:200px; left: 30px; border: 1px solid #333; width: 440px; height: 240px  }


/* 오늘의 수치  */
#day_info { width: 950px; height: 130px;  position: absolute; top: 20px; left: 10px; font-weight: bold;  }
.day_info_set { width: 130px; height: 100px;  float: left; margin-left: 60px; }

/* 가로차트 */
#control { position: relative; top:500px; left:30px; width: 440px; border: 1px solid #333;  }

#temp1 {width: 440px; height: 250px; position: absolute; top: 200px; left: 520px; border: 1px solid #333; }
#temp2 {width: 440px; height: 180px; position: absolute; top: 500px; left: 520px; border: 1px solid #333; }
#temp3 {width: 440px; height: 180px; position: absolute; top: 750px; left: 520px; border: 1px solid #333; }



</style>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<!-- jQeury CDN 시작  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQeury CDN 끝  -->
	<%
	DashBoardDAO dDAO=new DashBoardDAO();
 	CategoryCntVO cVO=dDAO.categoryCnt();
 	Integer[] result=dDAO.tradingStatus();
 	Integer[] dongCnt=dDAO.dongCnt();
 	List<MemberCntVO> list=dDAO.newAndWithdrawallCnt();
 	List<TotalMemberCntVO> montotal= dDAO.monthTotalCnt();
	%>
<script type="text/javascript">
(function( $ ) {
    "use strict";
    $(function() {
        function animated_contents() {
            $(".zt-skill-bar > div ").each(function (i) {
                var $this  = $(this),
                    skills = $this.data('width');
 
                $this.css({'width' : skills + '%'});
 
            });
        }
        
        if(jQuery().appear) {
            $('.zt-skill-bar').appear().on('appear', function() {
                animated_contents();
            });
        } else {
            animated_contents();
        }
    });
}(jQuery));

/* 원형차트 */

google.charts.load("current", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
	var cycleCnt=<%=cVO.getCycleCnt()%>;
	var clothCnt=<%=cVO.getClothCnt()%>;
	var partsCnt=<%=cVO.getPartsCnt()%>;
	var suppliesCnt=<%=cVO.getSuppliesCnt()%>;
	
  var data = google.visualization.arrayToDataTable([
    ['Task', 'Hours per Day'],
    ['자전거',cycleCnt],
    ['의류',clothCnt],
    ['용품',partsCnt],
    ['부품',suppliesCnt],
  ]);

  var options = {
    title: '카테고리 별 상품 수',
    is3D: true,
  };

  var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
  chart.draw(data, options);
}
/*  원형차트 */



</script>
<script type="text/javascript">
/* 선 그래프  temp2 */

google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
	var ndcount=0;
  var data = google.visualization.arrayToDataTable([
    ['Month', '신규회원', '탈퇴회원'],
	<%for( MemberCntVO mcVO : list) {%>
    ['<%=mcVO.getMonth()%>',  <%=mcVO.getNewMember()%>,<%=mcVO.getWthdrMember()%>],
	<%}%>
  ]);
  var options = {
    title: '신규&탈퇴 회원',
    curveType: 'function',
    legend: { position: 'bottom' }
  };

  var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

  chart.draw(data, options);
}

/* 선 그래프  temp2 */
</script>
<script type="text/javascript">
/* 총회원 수   */

google.charts.load('current', {packages: ['corechart', 'line']});
google.charts.setOnLoadCallback(drawBasic);

function drawBasic() {

      var data = new google.visualization.DataTable();
      data.addColumn('number', 'X');
      data.addColumn('number', '총회원수');

      data.addRows([
    	<%for( TotalMemberCntVO tVO : montotal) {%>
        [<%=tVO.getMonth()%>, <%=tVO.getCount()%>],
        <%}%>
      ]);

      var options = {
        hAxis: {
          title: 'month'
        },
        vAxis: {
          title: '총회원수'
        }
      };

      var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

      chart.draw(data, options);
    }

/* 총회원 수   */
</script>

<script type="text/javascript">
/* 상품거래현황  */
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawBasic);

function drawBasic() {

       var data = google.visualization.arrayToDataTable([
         ['6일전', '거래현황', { role: 'style' }],
         ['6일전',<%=result[0]%>, '#9B59B6 '],            // RGB value
         ['5일전',<%=result[1]%>, '#9B59B6 '],            // English color name
         ['4일전',<%=result[2]%>, '#9B59B6 '],
         ['3일전',<%=result[3]%>, '#9B59B6 '],
         ['2일전',<%=result[4]%>, '#9B59B6 '],
         ['1일전',<%=result[5]%>, '#9B59B6 ']

      ]);

      var options = {
        title: '상품 거래현황',
        hAxis: {
          title: 'Day',
          viewWindow: {
            min: [7, 30, 0],
            max: [17, 30, 0]
          }
        },
        vAxis: {
          title: '수'
        }
      };

      var chart = new google.visualization.ColumnChart(
        document.getElementById('chart_div1'));

      chart.draw(data, options);
    }
/* 상품거래현황  */   
</script>
<script type="text/javascript">
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawBasic);

function drawBasic() {

      var data = google.visualization.arrayToDataTable([
        ['City', '동별상품수',{ role: 'style' }],
        ['개포동', <%=dongCnt[0]%>, '#9B59B6 '],
        ['논현동', <%=dongCnt[1]%>, '#9B59B6 '],
        ['대치동',<%=dongCnt[2]%>, '#9B59B6 '],
        ['도곡동', <%=dongCnt[3]%>, '#9B59B6 '],
        ['삼성동', <%=dongCnt[4]%>, '#9B59B6 '],
        ['세곡동', <%=dongCnt[5]%>, '#9B59B6 '],
        ['수서동', <%=dongCnt[6]%>, '#9B59B6 '],
        ['신사동', <%=dongCnt[7]%>, '#9B59B6 '],
        ['압구정동', <%=dongCnt[8]%>, '#9B59B6 '],
        ['역삼동', <%=dongCnt[9]%>, '#9B59B6 '],
        ['율현동', <%=dongCnt[10]%>, '#9B59B6 '],
        ['일원동', <%=dongCnt[11]%>, '#9B59B6 '],
        ['청담동', <%=dongCnt[12]%>, '#9B59B6 '],
        ['자곡동', <%=dongCnt[13]%>, '#9B59B6 ']
      ]);

      var options = {
        title: '강남구 동별 상품현황',
        chartArea: {width: '50%'},
        height:'430',
        hAxis: {
          title: 'Total Population',
          minValue: 0
        },
        vAxis: {
          title: '동'
        }
      };

      var chart = new google.visualization.BarChart(document.getElementById('chart_div3'));

      chart.draw(data, options);
    }
</script>

</head>
<body>
<div id="wrap" > <!-- wrap( w: 800 x h:950 ) -->
		<div id="header"><!-- header(w: 200 x h : 1400 ) --> 
		<div>
		<a href="http://localhost/prj_2/lms/dashboard.jsp"><img src="http://localhost/prj_2/images/logo.png" width="150"></a>
		</div>
		<br>
		 <h4 class="col_tit">Menu</h4>
		       <div class="menu">
               		<ul>
                              <li><a href="http://localhost/prj_2/lms/dashboard.jsp"><i class="fa fa-th-large" aria-hidden="true" style="position: absolute; left: 1px; top: 10px;" ></i>&ensp;Dashboard <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                              <li><a href="http://localhost/prj_2/lms/member_manage.jsp"><i class="fa fa-user" aria-hidden="true" style="position: absolute; left: 1px; top: 10px;" ></i>&ensp;회원관리 <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                              <li><a href="http://localhost/prj_2/lms/prod_manage.jsp"><i class="fa fa-cart-plus" aria-hidden="true" style="position: absolute; left: 1px; top: 10px;" ></i>&ensp;상품관리 <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                              <li><a href="http://localhost/prj_2/lms/comm_manage.jsp"><i class="fa fa-commenting-o" aria-hidden="true" style="position: absolute; left: 1px; top: 10px;" ></i>&ensp;댓글관리 <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                              <li><a href="http://localhost/prj_2/lms/adminlogin.jsp"><i class="fa fa-sign-out" aria-hidden="true" style="position: absolute; left: 1px; top: 10px;" ></i>&ensp;로그아웃 <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                  	</ul>
                </div>
		</div>
		<div id="container"><!-- container(w: 800 x h : 600 ) -->
			<div id="con_header" >
			<div class="dash">
			<br>
			<h1>Dashboard</h1>
			<hr>
			</div>
			</div>
			<div id="con_main">
			
				<div id="chart1">	
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <div id="chart_div1"></div>
				</div>
		
		<div id="day_info">
			<%
				int totalMember=dDAO.memberCnt();
				int totalLoginCnt=dDAO.totalVisit();
				int newMemberCnt=dDAO.newMemberCnt();
				int newAndWithdrawallCnt=dDAO.withdrawalMembers();
				int tradingStatusCnt=dDAO.tradingStatusCnt();
			%>
			<div class="day_info_set" style="background-color:#2C3E50; color: white;">오늘 총 로그인 수<br><br><br><span style="font-size: 25px;">&ensp;&ensp;&ensp;<%=totalLoginCnt %></span></div>
			<div class="day_info_set" style="background-color:#2C3E50; color: white;">총 회원 수<br><br><br><span style="font-size: 25px;">&ensp;&ensp;&ensp;<%=totalMember %></span></div>
			<div class="day_info_set" style="background-color:#3498DB; color: white;">신규가입 회원 수<br><br><br><span style="font-size: 25px;">&ensp;&ensp;&ensp;<%=newMemberCnt %></span></div>
			<div class="day_info_set" style="background-color:#E74C3C; color: white; ">오늘 탈퇴한 회원 수<br><br><br><span style="font-size: 25px;">&ensp;&ensp;&ensp;<%=newAndWithdrawallCnt %></span></div>
			<div class="day_info_set" style="background-color:#E0E0E0; ">오늘 거래완료 수<br><br><br><span style="font-size: 25px;">&ensp;&ensp;&ensp;<%=tradingStatusCnt %></span></div>
		</div>
		
		<!-- 가로차트  -->
		<div id="control">
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <div id="chart_div3"></div>
		</div>
		<!-- 가로차트  -->
			
		<div id="temp1">
			<div id="piechart_3d" style="width: 440px; height: 250px;"></div>
		</div>
		<div id="temp2">
		<div id="curve_chart" style="width: 440px; height: 180px"></div>
		</div>		
		<div id="temp3">
		<div id="chart_div" style="width: 400px; height: 180px"></div>
		</div>			
			 
			</div>
		</div>
</div>
</body>
</html>