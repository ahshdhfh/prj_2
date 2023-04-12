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
#header { width: 200px; height: 1050px; float: left;   }
#container { width: 988px; height: 1050px;  float: right;   }
#con_header { height: 60px;   }
#con_main {height: 990px;  position: relative;  }

/* 메뉴 */
.col_tit {font-size: 20px; color: #8F27A4; padding-bottom: 10px;}
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
#chart1{ position: absolute; top:200px; left: 30px; border: 1px solid #333; width: 440px;  }
.graph_wrap {max-width: 400px;margin: 0 auto;padding:20px;}
.graph_wrap .tit {font-size: 16px;font-weight: 500;color: #333333;}
.graph {position: relative;height: 185px;margin-top: 15px;}
.graph .y-axis {position: absolute;width: 100%;height: 100%;z-index: 1;}
.graph .y-axis > li {position: relative;width:calc(100% - 20px);height: calc(100% / 8);margin-left: 20px;border-top: 1px solid #8c8c8c;text-align: left;}
.graph .y-axis > li span {position: absolute;top: -7px;left: -20px;font-size: 12px;line-height: 1;}
.graph .x-axis {position: absolute;display: flex;bottom: -8px;left: 20px;width: calc(100% - 20px);justify-content: space-around;text-align: center;z-index: 2;}
.graph .x-axis > li {font-size: 12px;}
.graph .bar {display: flex;position: absolute;left: 20px;bottom: 16px;width: calc(100% - 20px);height: calc(100% - 16px);justify-content: space-around;align-items: flex-end;text-align: center;z-index: 3;}
.graph .bar > li {flex-grow:1;margin: 0 10px;}
.graph .bar > li span {display: inline-block;max-width: 80px;width: 100%;height: 100%;background: #8F27A4;}
.graph .bar:before {content:'';position: absolute;top: -2px;left: 3px;height: calc(100% + 4px);width: 1px;background: #8c8c8c;}

/* 오늘의 수치  */
#day_info { width: 950px; height: 130px;  position: absolute; top: 20px; left: 10px; font-weight: bold;  }
.day_info_set { width: 130px; height: 100px;  float: left; margin-left: 60px; }

/* 가로차트 */
#control { position: relative; top:500px; left:30px; width: 440px; border: 1px solid #333;  }

    .zt-skill-bar {
        color: #fff;
        font-size: 11px;
        line-height: 20px;
        height: 25px;
        margin-bottom: 5px;
 
        background-color: rgba(0,0,0,0.1);
 
        -webkit-border-radius: 2px;
           -moz-border-radius: 2px;
            -ms-border-radius: 2px;
                border-radius: 2px;
 
    }
 
    .zt-skill-bar * {
        webkit-transition: all 0.5s ease;
          -moz-transition: all 0.5s ease;
           -ms-transition: all 0.5s ease;
            -o-transition: all 0.5s ease;
               transition: all 0.5s ease;
    }
 
    .zt-skill-bar div {
        background-color: #8F27A4;
        position: relative;
        padding-left: 25px;
        width: 0;
 
        -webkit-border-radius: 2px;
           -moz-border-radius: 2px;
           -ms-border-radius: 2px;
                border-radius: 2px;
    }
 
    .zt-skill-bar span {
        display: block;
        position: absolute;
        right: 0;
        top: 0;
        height: 100%;
        padding: 0 5px 0 10px;
        background-color: #1a1a1a;
 
        -webkit-border-radius: 0 2px 2px 0;
           -moz-border-radius: 0 2px 2px 0;
            -ms-border-radius: 0 2px 2px 0;
                border-radius: 0 2px 2px 0;
    }
 
    .zt-skill-bar span:before {
        content: "";
        position: absolute;
        width: 6px;
        height: 6px;
        top: 50%;
        left: -3px;
        margin-top: -3px;
        background-color: #1a1a1a;
 
        -webkit-transform: rotate(45deg);
           -moz-transform: rotate(45deg);
            -ms-transform: rotate(45deg);
                transform: rotate(45deg);
    }


#temp1 {width: 440px; height: 250px; position: absolute; top: 200px; left: 520px; border: 1px solid #333; }
#temp2 {width: 440px; height: 180px; position: absolute; top: 500px; left: 520px; border: 1px solid #333; }
#temp3 {width: 440px; height: 180px; position: absolute; top: 750px; left: 520px; border: 1px solid #333; }



</style>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<!-- jQeury CDN 시작  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQeury CDN 끝  -->
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
  var data = google.visualization.arrayToDataTable([
    ['Task', 'Hours per Day'],
    ['자전거',     200],
    ['의류',      240],
    ['용품',  500],
    ['부품', 600],
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
  var data = google.visualization.arrayToDataTable([
    ['Year', '신규회원', '탈퇴회원'],
    ['2004',  1000,      400],
    ['2005',  1170,      460],
    ['2006',  660,       1120],
    ['2007',  1030,      540]
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
        [0, 0],   [1, 10],  [2, 23],  [3, 17],  [4, 18],  [5, 9],
        [6, 11],  [7, 27],  [8, 33],  [9, 40],  [10, 32], [11, 35],
        [12, 30], [13, 40], [14, 42], [15, 47], [16, 44], [17, 48],
        [18, 52], [19, 54], [20, 42], [21, 55], [22, 56], [23, 57],
        [24, 60], [25, 50], [26, 52], [27, 51], [28, 49], [29, 53],
        [30, 55], [31, 60], [32, 61], [33, 59], [34, 62], [35, 65],
        [36, 62], [37, 58], [38, 55], [39, 61], [40, 64], [41, 65],
        [42, 63], [43, 66], [44, 67], [45, 69], [46, 69], [47, 70],
        [48, 72], [49, 68], [50, 66], [51, 65], [52, 67], [53, 70],
        [54, 71], [55, 72], [56, 73], [57, 75], [58, 70], [59, 68],
        [60, 64], [61, 60], [62, 65], [63, 67], [64, 68], [65, 69],
        [66, 70], [67, 72], [68, 75], [69, 80]
      ]);

      var options = {
        hAxis: {
          title: 'day'
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
</head>
<body>
<div id="wrap" > <!-- wrap( w: 800 x h:950 ) -->
		<div id="header"><!-- header(w: 200 x h : 1400 ) --> 
		<div>
		<a href="http://localhost/prj_2/lms/dashboard.jsp"><img src="http://localhost/prj_2/lms/images/logo.PNG" width="150"></a>
		</div>
		<br>
		 <h4 class="col_tit"><i class="fa fa-bars" aria-hidden="true"></i>Menu</h4>
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
	<div class="graph_wrap">
  <strong class="tit">거래현황</strong>
  <div class="graph">
    <!-- 기준 -->
    <ul class="y-axis">
      <li><span>35</span></li>
      <li><span>30</span></li>
      <li><span>25</span></li>
      <li><span>20</span></li>
      <li><span>15</span></li>
      <li><span>10</span></li>
      <li><span>5</span></li>
      <li><span>0</span></li>
    </ul>

    <!-- 목록 -->
    <ul class="x-axis">
      <li><span>6일전</span></li>
      <li><span>5일전</span></li>
      <li><span>4일전</span></li>
      <li><span>3일전</span></li>
      <li><span>2일전</span></li>
      <li><span>1일전</span></li>
    </ul>

    <!-- 바 그래프 (백분율 만큼 heigh값) -->
    <ul class="bar">
      <li style="height:100%;"><span></span></li>
      <li style="height:70%;"><span></span></li>
      <li style="height:30%;"><span></span></li>
      <li style="height:30%;"><span></span></li>
      <li style="height:30%;"><span></span></li>
      <li style="height:30%;"><span></span></li>
    </ul>
  </div>
</div>
</div>
		
		<div id="day_info">
			<div class="day_info_set" style="background-color:#2C3E50; color: white;">오늘 총 방문 수<br><br><br><span style="font-size: 25px;">&ensp;&ensp;&ensp;100</span></div>
			<div class="day_info_set" style="background-color:#2C3E50; color: white;">총 회원 수<br><br><br><span style="font-size: 25px;">&ensp;&ensp;&ensp;100</span></div>
			<div class="day_info_set" style="background-color:#3498DB; color: white;">신규가입 회원 수<br><br><br><span style="font-size: 25px;">&ensp;&ensp;&ensp;100</span></div>
			<div class="day_info_set" style="background-color:#E74C3C; color: white; ">오늝 탈퇴한 회원 수<br><br><br><span style="font-size: 25px;">&ensp;&ensp;&ensp;100</span></div>
			<div class="day_info_set" style="background-color:#E0E0E0; ">거래완료 수<br><br><br><span style="font-size: 25px;">&ensp;&ensp;&ensp;100</span></div>
		</div>
		
		<!-- 가로차트  -->
		<div id="control">
<div class="zt-span6 last">
<h3><strong>지역별 상품 수</strong></h3>
<div class="zt-skill-bar"><div data-width="88" style="">개포동<span>88%</span></div></div>
<div class="zt-skill-bar"><div data-width="92" style="">논현동<span>92%</span></div></div>
<div class="zt-skill-bar"><div data-width="20" style="">대치동<span>20%</span></div></div>
<div class="zt-skill-bar"><div data-width="42" style="">도곡동<span>42%</span></div></div>
<div class="zt-skill-bar"><div data-width="32" style="">삼성동<span>32%</span></div></div>
<div class="zt-skill-bar"><div data-width="42" style="">세곡동<span>42%</span></div></div>
<div class="zt-skill-bar"><div data-width="22" style="">수서동<span>22%</span></div></div>
<div class="zt-skill-bar"><div data-width="55" style="">신사동<span>55%</span></div></div>
<div class="zt-skill-bar"><div data-width="82" style="">압구정동<span>82%</span></div></div>
<div class="zt-skill-bar"><div data-width="82" style="">역삼동<span>82%</span></div></div>
<div class="zt-skill-bar"><div data-width="82" style="">율현동<span>82%</span></div></div>
<div class="zt-skill-bar"><div data-width="82" style="">일원동<span>82%</span></div></div>
<div class="zt-skill-bar"><div data-width="85" style="">자곡동<span>85%</span></div></div>
<div class="zt-skill-bar"><div data-width="79" style="">청담동<span>79%</span></div></div></div>
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