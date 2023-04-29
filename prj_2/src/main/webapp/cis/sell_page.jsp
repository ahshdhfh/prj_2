<%@page import="java.sql.SQLException"%>
<%@page import="prj_2.ProductInsertVO"%>
<%@page import="prj_2.InsertProdDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강남콩마켓</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj_2/lmh/main.css">
<style type="text/css">

#label-input-img{
width:180px;
height:180px;
}

/* 상품 이미지 */
 #input_img{
border: 1px solid #333;
width:180px;
height:180px;
margin-left:20px;
margin-top:-20px;
text-align:center;
}
.square {
width:180px;
height:180px;
border: 1px solid #333;
cursor: pointer;
margin-left:130px;
margin-top:-20px;
text-align:center;
}
#caution{
font-size:1.5pt;
color:#0055FF;
line-height:15pt;
margin-left:130px;
margin-top:20px
}

/* 제목 */
#input_title{
width:500px;
height:30px;
border-radius: 5px;
margin-left:20px;
padding:2px;
}

#select_category{
width:150px;
height:40px;
margin-left:20px;
border-radius: 5px;
}

#input_price{
width:170px;
height:25px;
border-radius: 5px;
margin-left:20px;
padding:2px;
}

#share-check{
margin-left:20px;
}

#input_explain{
width:600px;
border-radius: 5px;
resize:vertical;
padding:10px;
}

#input_location{
width:440px;
height:35px;
border-radius: 5px;
padding:2px;
}

#cancel-button{
width:180px;
height:65px;
border: none;
border-radius: 5px;
background-color: #E0E0E0;
color: #8B6FBD;
font-size: 22px;
font-weight: bold;
margin-right:10px
}
.profile_img{width:120px;height:120px;border-radius:50%;}

#complete_button{
width: 180px;
height : 65px;
border: none;
border-radius: 5px;
background-color: #8B6FBD;
color: white;
font-size: 22px;
font-weight: bold;
margin-left:10px
}


.button-check{
text-align:center;
}

.hr_footer{
border: 1px solid #EAEBEE;
}


</style>
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
<script type="text/javascript">

const imageFiles = [];
function changeProfileImage() {
	document.getElementById('imgCnt').innerHTML=0;
    var imgCntElem = document.getElementById('imgCnt');//span
    const inputElem = document.getElementById('prod_img');//file
    const imgElem = document.getElementById('prodImg');//<img>
    const MAX_IMAGES = 6;
		 	 
    	
    // Check the number of selected files
    if (inputElem.files.length + parseInt(imgCntElem.innerText) > MAX_IMAGES) {
      alert("이미지는 최대 6장까지 업로드 가능합니다.");
      inputElem.value = '';
      return;
    }

    // Update the image count
    imgCntElem.innerText = inputElem.files.length + parseInt(imgCntElem.innerText);

    // Read and display each image
    Array.from(inputElem.files).forEach(file => {
      if (!file.type.startsWith('image/')) {
        return;
      }

      const reader = new FileReader();
      reader.onload = function(e) {
        imgElem.src = e.target.result;
      };
      reader.readAsDataURL(file);
    });
 // Read and store each image file

    Array.from(inputElem.files).forEach(file => {
      if (!file.type.startsWith('image/')) {//이미지파일이 아니라면 리턴
        return;
      }
      imageFiles.push(file);//배열에 file 넣기
    });
    
  }

$(function(){
	$("#complete_button").click(function(){
		
		/* 상품 이미지 */
 		if($("#input_img").val()==""){
			alert("이미지를 넣어주세요."); 
			$("#input_img").focus();
			return;	
		}//end if 
		 
		/* 상품 제목 */
		if($("#input_title").val()==""){
			alert("제목을 입력해주세요"); 
			$("#input_title").focus();
			return;
		}//end if
		
		/* 카테고리 */
		if($("#select_category").val()==""){
			alert("카테고리를 설정해주세요");
			$("#select_category").focus(); 
			return;
		}//end if
		
		/* 가격 */
		if($("#input_price").val()==""){
			alert("가격을 설정해주세요(나눔하기 체크 시 0원으로 입력됩니다!)");
			$("#input_price").focus();
			return;
		}//end if
		
		/* 자세한 설명 */
		if($("#input_explain").val()==""){
			alert("상품에 대한 설명을 적어주세요.");
			$("#input_explain").focus();
			return;
		}//end if
		
		/* 거래희망장소 */
		if($("#input_location").val()==""){
			alert("거래장소를 설정해주세요.");
			$("#input_location").focus();
			return;
		}//end if
		//이미지 파일 갯수 히든으로 보내기
		$("#imgFileCnt").val($("#imgCnt").text() );
		
		var imgNames=[];//파일 이름 저장하기위한 배열
		var files=$('#prod_img')[0].files//input file
		
		for(var i=0; i<files.length;i++){//들어간 파일의 수만큼 반복
			imgNames[i]="http://localhost/prj_2/images/"+$("#prod_img").get(0).files[i].name;//사진 이름 배열에 넣기
		}
		var formData = new FormData($('#form')[0]);//submit할 formData 객체 부르기(매개변수에 form태그 이름)
		formData.append("imgNames", imgNames);//파일 이미지 배열 넣어주기
		//for (let i = 0; i < imageFiles.length; i++) { 
		//	  formData.append("imgFile", imageFiles[i]);
		//	}
			  //formData.append("imgCnt", imgCntElem.innerText);//이미지 수 넣기
		                 
		// XMLHttpRequest 객체 생성
		var xhr = new XMLHttpRequest();

		// AJAX 요청 설정
		xhr.open('POST', 'sell_page_process.jsp');
		xhr.onload = function() {
		  // AJAX 요청이 성공적으로 완료되었을 때의 처리
		  console.log(xhr.responseText);
		};
		xhr.onerror = function() {
		  // AJAX 요청이 실패했을 때의 처리
		  console.error('An error occurred while submitting the form.');
		};
		
		// AJAX 요청 전송
		xhr.send(formData);
		
		alert("성공적으로 등록되었습니다!");
		location.href="../lmh/main.jsp";
	});//click
});//ready





/* 이미지 파일 업로드 기능 */


/* 제목 입력 시 옆에서 문자 카운트  */
  function countTextLength() {
    var inputText = document.getElementById("input_title").value; // 입력된 텍스트 값 가져오기
    var textLength = inputText.length; // 텍스트 길이 계산
    var countElement = document.getElementById("text-count"); // 글자 수를 표시할 요소 가져오기
    countElement.innerHTML = textLength + "/30"; // 글자 수 표시
  }

  // 페이지가 로드될 때, 초기화 함수를 호출하여 초기 상태를 설정합니다.
  window.onload = function() {
    countTextLength();
  };


/* 나눔하기 체크 시 가격 0원으로 설정 *//* 작동 안됨, 마저 수정 필요  */


</script>
</head>



<body>
<div class="wrap">

  <div class="header">
      <%@ include file="../lmh/header.jsp" %>
      
      
  </div>
<%
LoginSessionVO lpVO = (LoginSessionVO)session.getAttribute("loginData");      
if(lpVO==null){
	response.sendRedirect("../lmh/login.jsp");
}
	

ProductInsertVO piVO=null;
int prodNum=0;
if(request.getParameter("prodNum")!=null){//수정버튼으로 들어왔을때!
	prodNum=Integer.parseInt(request.getParameter("prodNum"));
	InsertProdDAO ipDAO = new InsertProdDAO();
	try{
		
	piVO=ipDAO.setSelectPrd(prodNum);//set할 값 가져오기
	}catch(SQLException se){
		se.printStackTrace();
	}
	
}//end if
//가져올 값 초기화 설정
String prodName="";
String categoryNumber="";
String price="";
String textOfPrd="";
String placeTraction="";

String userId = lpVO.getUserId();
String actAreaNum = String.valueOf(lpVO.getActAreaNum());
if(piVO!=null){
	prodName=piVO.getProdName();
	price=String.valueOf( piVO.getPrice());
	categoryNumber=String.valueOf(piVO.getCategoryNumber());
	textOfPrd= piVO.getTextOfPrd();
	placeTraction=piVO.getPlaceTraction();
}
%>
   
 <br/>
 <br/>
 <br/>
 <!-- 상품 등록 페이지 내용부분 -->  
<div style="font-size:30pt;"><strong>기본 정보</strong></div>
<hr>
<br/>
<form id="form" name="form" action="http://localhost/prj_2/cis/sell_page_process.jsp" method="post" enctype="multipart/form-data">
  <div>상품이미지(<span id="imgCnt">0</span>/6)</div>
  <div class="" id="inputImg" >
    <img src="" id="prodImg" name="prodImg" class="profile_img">
    <input type="file" id="prod_img" name="prod_img" accept="image/*" onchange="changeProfileImage()" multiple>
    <input type="hidden" id="imgFileCnt" name="imgFileCnt" value=""/>
  </div>
<pre id="caution">
* 상품 이미지는 600x600에 최적화 되어 있습니다.
- 상품 이미지는 PC에서는 1:1, 모바일에서는 1:1.23 비율로 보여집니다.
- 이미지는 상품 등록 시 정사각형으로 잘려서 등록됩니다.
- 이미지를 클릭할 경우 원본 이미지를 확인할 수 있습니다.
- 이미지를 클릭 후 이동하여 등록순서를 변경할 수 있습니다.
- 큰 이미지일 경우 이미지가 깨지는 경우가 발생할 수 있습니다.
최대 지원 사이즈인 640 X 640으로 리사이즈 해서 올려주세요.(개당 이미지 최대 10M)
</pre>
<br/>
<hr>
<br/>


<div>
  <label for="input_title"> 제목*</label>
	<input type="hidden" name="hidden" value="<%=prodNum%>"/>
	<input type="hidden" name="userId" value="<%=userId%>"/>
	<input type="hidden" name="actAreaNum" value="<%=actAreaNum%>"/>
  	<input type="text"  id="input_title" oninput="countTextLength()" maxlength="30"  name="prodName"  value="<%=prodName%>" >
  <span id="text-count">0/30</span>
</div>
<br/>
<hr>
<br/>
<div>
<label>카테고리*</label>   
	<select id="select_category" name="categoryNumber">
  		<option value="1" ${categoryNumber == 1 ? 'selected' : ''}>자전거</option>
  		<option value="2" ${categoryNumber == 2 ? 'selected' : ''}>의류</option>
  		<option value="3" ${categoryNumber == 3 ? 'selected' : ''}>용품</option>
  		<option value="4" ${categoryNumber == 4 ? 'selected' : ''}>부품</option>
	</select>
</div>
<br/>
<hr>
<br/>
<div>

<label for="input_price">가격*</label>
<input type="number" id="input_price" placeholder="숫자만 입력해주세요"   name="price" value="<%=price%>">원
<input type="checkbox" name="share" id="share-check" 
	onclick="if(this.checked) document.getElementById('input_price').value='0'; else document.getElementById('input_price').value='';">나눔하기
<!-- 나눔하기 체크 시 가격을 0원으로 띄우는 기능 -->
<!-- 숫자 이외에 문자열 입력 안되게 하는 것 구현 안됨 -->
</div>
<br/>
<hr>
<br/>
<div >
<label style="font-size:20pt">자세한 설명*</label>
</div>
<br/>
<textarea id="input_explain" style="font-size:12pt" name="textOfPrd" ><%=textOfPrd%></textarea>
<br/>
<br/>
<br/>
<br/>
<hr>

<br/>
<div>
<label >거래희망장소*</label>  
<select id="input_location" name="placeTraction">
		<option value="동선택" selected="selected">동선택</option>
		<option value=1 >압구정동</option>
		<option value=2>신사동</option>
		<option value=3>청담동</option>
		<option value=4>논현동</option>
		<option value=5>삼성동</option>
		<option value=6>역삼동</option>
		<option value=7>대치동</option>
		<option value=8>도곡동</option>
		<option value=9>개포동</option>
		<option value=10>일원동</option>
		<option value=11>수서동</option>
		<option value=12>자곡동</option>
		<option value=13>율현동</option>
		<option value=14>세곡동</option>
	</select>
</div>
<br/>
<br/>
<hr>
<br/>
<br/>
<br/>
<br/>

<!-- 취소/작성완료 버튼 -->
<div class="button-check">
<input type="button"id="cancel-button"value="취소"onclick="javascript:history.back();">
<input type="button"id="complete_button"value="작성완료">
<!-- onclick="location.href='http://localhost/prj_2/cis/product_info_login.jsp'" -->
</div>
</form>
<br/>
<br/>
<br/>
<br/>
<!-- footer 부분 -->
   <div class="footer">
      <c:import url="http://localhost/prj_2/lmh/footer.jsp" />
   </div><!-- footer-->
   
   
</div> <!--wrap  -->


</body>
</html>