<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!-- Bootstrap ver 5.1  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<!-- 지도 api -->
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<style>
  /*------------------------ 헤더 부분 스타일 ------------------------ */


      #login,#signup{
         color:white;
      }
      #login:hover,#signup:hover{
         color:black;
      }
/* container */


 body{
    background-color: #222;
  }
    nav {
   background-color: #222;
   color: white;

   border-bottom: 1px solid gray;
}
nav a{
    color: white;
}
.navbar-nav{
   min-width:450px;
}
.navbar-nav a{
    color: white;
    border-radius: 5px;
    margin-right: 20px;
}
.navbar-nav a:hover{
    color: black;
    background-color: white;
    border-radius: 5px;
    text-decoration-line: none;
}
#btn{
    text-align: right;
}
nav button{
    background-color: rgba(0, 0, 0, 0.128);
    border-radius: 5px;
    color: white;
}

nav button:hover{
    border-radius: 5px;
    color: black;
    background-color: white;
}
/*board UI출력부분----------------------------*/


/*---------------------기능 구현 후 Hover 예정------------------*/

/*---------------------중간 입력란부분--------------------------*/
#contents{
  text-align: center;
  color: white;
  border-radius: 5px;
}
#text{
  color: white;
  border-bottom: 1px solid white;
  text-align: center;
  font-size: 50px;
  margin-top: 100px;
}

#file{
  border-radius: 5px;
  width: 300px;
  height: 300px;
  color: black;
  text-align: center;
  margin: auto;
  margin-bottom: 9%;
}
#preview{
  border: 1px solid white;
  width: 300px;
  height: 300px;
  color:white;
  text-align: center;
  margin: auto;
}
#file label {
  display: inline-block;
  padding: .5em .75em;
  color: #fff;
  font-size: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #5cb85c;
  cursor: pointer;
  border: 1px solid #4cae4c;
  border-radius: .25em;
  -webkit-transition: background-color 0.2s;
  transition: background-color 0.2s;
}

#file label:hover {
  background-color: #6ed36e;
}

#file label:active {
  background-color: #367c36;
}

#file input[type="file"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
#file img{
  width: 300px;
  height: 300px;
}
#my-button{
  width: 150px;
  height: 50px;
  margin-top: 40%;
}
#table{
  margin-top: 3%;
  color: white;
  margin: auto;
  margin-bottom: 9%;
}
input[type=text] {
	width: 300px;
	height: 40px;
	border-radius: 5px;
}
label{
  color: white;
}
.tableTitle{
  min-width: 76px;
}
#btn{
  text-align: center;
  margin-bottom: 5%;
}
#btn button{
  width: 150px;
  height: 50px;
  background-color: #760c0c;
  color: white;
}
#btn button:hover{
  background-color: #760c0c;
  color: white;
}

/*-------------------------------------------------------------*/
/* footer 부분 */
#foot{
    border-top: 1px solid gray;
    background-color: rgba(32, 31, 31, 0.532);
    
}
/* rgba(32, 31, 31, 0.532) */

.footer2{
    line-height: 20px;
    margin-top: 20px;
    margin-bottom: 20px ;
    font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 700;
   font-size: 14px;
   line-height: 20px;
   color: #FFFFFF;
}
.parkingRaido{
  line-height: 70px;
}
</style>
<body>
     <!------------------------------------------------------------header----------------------------------------------------->
    
     <div class="container">
      <nav class="navbar navbar-expand-lg" style="margin-bottom:50px;">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">CAFEIN</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon">▼</span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
              <a class="nav-link" href="#">HOME</a>
              <a class="nav-link" href="#">FEED</a>
              <a class="nav-link" href="#">CAFE-IN</a>
              <a class="nav-link" href="#">NOTICE</a>
              <li class="nav-item d-lg-none"><a class="nav-link mx-0 mx-md-0 mx-lg-3" href="/Member/loginView.jsp" id="board">Login</a></li>
          <li class="nav-item d-lg-none"><a class="nav-link mx-0 mx-md-0 mx-lg-3" href="/Member/joinView.jsp" id="board">Signup</a></li>
            </div>
          </div>
          <button id="login" type="button"
                class="mx-1 d-none d-lg-inline btn navbar-btn">Login</button>
                <button id="signup" type="button"
                class="mx-1 d-none d-lg-inline btn navbar-btn">Signup</button>
        </div>
      </nav>
          
<!---------------------------------------------------------------------------------------------------------------------->
<form action="/cafein/cafein_insert" method="post" enctype="multipart/form-data" >


<div class="row" id="contents">
  <div class="col-12" id="text">Cafe Update</div>
</div>
<div class="row" style="margin-top: 5%;margin-bottom: 5%;">
  <div class="col-12 col-sm-6" id="file"><img id="preview" />
    <label for="ex_file">업로드</label>
    <input type="file" name="file" id="ex_file" value="파일첨부" onchange="readURL(this);">
   
</div>
  <div class="col-12 col-sm-6" id="table">
  
 
<table>
  <tr>
    <td class="tableTitle">카페이름 : </td>
    <td><input type="text" placeholder="카페명" name="name" id="name"></td>
  </tr>
  <tr>
    <td class="tableTitle">주소 : </td>
    <td>
   <input type="hidden" name="zipcode" id="zipcode"  />
   <input type="text" name="address1" id="address1" id="address1">
	<button type="button" onclick="execDaumPostcode()" class="btn btn-success" id="zipcode_find">
								찾기</button></td>
  </tr>
  <tr>
    <td class="tableTitle">상세주소 : </td>
    <td><input type="text" placeholder="상세주소" name="address2" id="address2"></td>
  </tr>
  <tr>
    <td class="tableTitle">휴무일 : </td>
    <td><input type="checkbox" value="월" name="dayarr" class="day"><label>월</label>
      <input type="checkbox" value="화" name="dayarr" class="day"><label>화</label>
      <input type="checkbox" value="수" name="dayarr" class="day"><label>수</label>
      <input type="checkbox" value="목" name="dayarr" class="day"><label>목</label>
      <input type="checkbox" value="금" name="dayarr" class="day"><label>금</label>
      <input type="checkbox" value="토" name="dayarr" class="day"><label>토</label>
      <input type="checkbox" value="일" name="dayarr" class="day"><label>일</label>
      <input type="checkbox" value="공휴일" name="dayarr" class="day"><label>공휴일</label>
      <input type="checkbox" value="연중무휴" name="dayarr" class="day"><label>연중무휴</label>
      </td>
  </tr>
  <tr>
    <td class="tableTitle">오픈시간 : </td>
    <td>
      <select name="openarr">
        <option value='' selected>-- 선택 --</option>
        <option value='am'>am</option>
        <option value='pm'>pm</option>
      </select>
      <select name="openarr">
        <option value='' selected>-- 선택 --</option>
        <option value='1'>1</option>
        <option value='2'>2</option>
        <option value='3'>3</option>
        <option value='4'>4</option>
        <option value='5'>5</option>
        <option value='6'>6</option>
        <option value='7'>7</option>
        <option value='8'>8</option>
        <option value='9'>9</option>
        <option value='10'>10</option>
        <option value='11'>11</option>
        <option value='12'>12</option>
      </select>
      <select name="openarr">
        <option value='' selected>-- 선택 --</option>
        <option value='00'>00</option>
        <option value='10'>10</option>
        <option value='20'>20</option>
        <option value='30'>30</option>
        <option value='40'>40</option>
        <option value='50'>50</option>
      </select>
      
    </td>
  </tr>
  <tr>
    <td class="tableTitle">마감시간 : </td>
    <td>
      <select name="finisharr">
        <option value='' selected>-- 선택 --</option>
        <option value='am'>am</option>
        <option value='pm'>pm</option>
      </select>
      <select name="finisharr">
        <option value='' selected>-- 선택 --</option>
        <option value='1'>1</option>
        <option value='2'>2</option>
        <option value='3'>3</option>
        <option value='4'>4</option>
        <option value='5'>5</option>
        <option value='6'>6</option>
        <option value='7'>7</option>
        <option value='8'>8</option>
        <option value='9'>9</option>
        <option value='10'>10</option>
        <option value='11'>11</option>
        <option value='12'>12</option>
      </select>
      <select name="finisharr">
        <option value='' selected>-- 선택 --</option>
        <option value='00'>00</option>
        <option value='10'>10</option>
        <option value='20'>20</option>
        <option value='30'>30</option>
        <option value='40'>40</option>
        <option value='50'>50</option>
      </select>
      
    </td>
  </tr>
  <tr>
    <td class="tableTitle">주차장 : </td>
    <td class="parkingRaido">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="parking" value="O">O&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="radio" name="parking" value="X">X&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
  </tr>
  <tr>
   
  </tr>
</table>

</div>

</div> 
<!---------------------------------상세설명------------------------------->
<div class="row">
  <div class="col-12">

  </div>
</div>


<div class="row">
  <div class="col-12" id="btn"><button id="add">등록</button>
  <a href="/cafein/goCafein"><button type="button">취소</button></a></div>
</div>
       </form>
   <!----------------------------------------------------- script------------------------------------------------ -->
   <script>
 //---------------------------------------우편번호-------------------------------
	function execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						var addr = "";

						if (data.userSelectedType === "R") {
							addr = data.roadAddress;
						}

						document.getElementById("zipcode").value = data.zonecode;
						document.getElementById("address1").value = addr;
						document.getElementById("address2").focus();
					},
				}).open();
	}
 
 //---------------------------------공백시 return false--------------------------------
 
 $("#add").on("click",function(){
	 if($("#name").val() == ''){
		 alert("카페이름을 입력해주세요");
		 return false;
	 }
	 else if($("#address1").val() == '' || $("#address2").val() == ''){
		 alert("주소를 입력해주세요.");
		 return false;
	 }
	 else if($("input[name='parking']:checked").val()== ''){
		 alert("주차장유무를 체크해주세요.")
		 return false;
	 }
	 else if($("input[name='dayarr']:checked").val()== ''){
		 alert("휴무일을 체크해주세요.")
		 return false;
	 }
	 else if($("input[name='openarr']:checked").val()== ''){
		 alert("오픈시간을 선택해주세요.")
		 return false;
	 }
	 else if($("input[name='finisharr']:checked").val()== ''){
		 alert("마감시간을 선택해주세요.")
		 return false;
	 }
	 // file
     let fileVal = $("#ex_file").val();
     
     let maxSize = 10 * 1024 * 1024; // 10MB
     let fileSize = $("#ex_file")[0].files[0].size;
    // 파일 확장자 체크
    if (fileVal != ""){
        	let ext = fileVal.split('.').pop().toLowerCase();
        	
        	if($.inArray(ext, ['jpg', 'jpeg', 'png']) == -1){
        		alert('jpg, jpeg, png 파일만 업로드 할 수 있습니다.');
        		
        		return false;
        		
        	}
        	
        }
 })
 // -------------------------파일 업로드 시, 검수 ( 가로 X 세로 사이즈 체크 ) ------------------------
	
 
   </script>
   
   
    <!-------------------------------------------------------Footer------------------------------------------------->
 
    <div class="col-12 d-none d-md-block">
  <div id="foot" align=center>
     <div class="container">
        <div class="row">
          <div class="col-4" id="footicon"> </div>
           <div class="col-2 footer2">회사소개</div>
           <div class="col-2 footer2">이용약관</div>
           <div class="col-2 footer2">1:1 문의</div>
           <div class="col-2 footer2">©2022 CAFEIN</div>
        </div>
     </div>
  </div>
</div>
</div>

      <script>
       function onClickUpload() {
            let myInput = document.getElementById("my-input");
            myInput.click();
        }
        function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e) {
      document.getElementById('preview').src = e.target.result;
    };
    
    reader.readAsDataURL(input.files[0]);
  } else {
    document.getElementById('preview').src = "";
  }
}
      </script>    
</body>
</html>