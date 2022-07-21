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
	<!--  sweet alert  -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>
<style>
  

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
input:disabled {
  background:white;
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

#btn button{
  width: 150px;
  height: 50px;
  background-color: #760c0c;
  color: white;
  border-radius:5px;
}
#btn button:hover{
	opacity: 0.8;
  background-color: #760c0c;
  color: white;
}
.parkingRaido{
  line-height: 70px;
}
/*-------------------------------------------------------------*/


</style>
<body>
     <!------------------------------------------------------------header----------------------------------------------------->
    
          <div id="header"><jsp:include page="header.jsp"/> </div>
<!---------------------------------------------------------------------------------------------------------------------->
<form action="/cafein/update" method="post" enctype="multipart/form-data" >
<div class="container">


<div class="row" id="contents">
  <div class="col-12" id="text">CAFE UPDATE</div>
  <input type="hidden" name=seq value=${fdto.cafein_seq }>
</div>
<div class="row" style="margin-top: 5%;margin-bottom: 5%;">
  <div class="col-12 col-sm-6" id="file"><img id="preview" src="/resources/cafein/${fdto.sys_name }" />

    <label for="ex_file">업로드</label>
    <input type="file" name="file" id="ex_file"  onchange="readURL(this);">
   
</div>
  <div class="col-12 col-sm-6" id="table">
  
 
<table>
  <tr>
    <td class="tableTitle">카페이름 : </td>
    <td><input type="text" placeholder="카페명" name="name" id="name" value=${dto.name }></td>
  </tr>
  <tr>
    <td class="tableTitle">주소 : </td>
    <td>
   <input type="hidden" name="zipcode" id="zipcode"  />
   <input type="text" name="address1" id="address1" value="${dto.address1 }" disabled>
	<button type="button" onclick="execDaumPostcode()" class="btn btn-success" id="zipcode_find" >
								찾기</button></td>
  </tr>
  <tr>
    <td class="tableTitle">상세주소 : </td>
    <td><input type="text" placeholder="상세주소" name="address2" id="address2" value="${dto.address2 }"></td>
  </tr>
  <tr>
    <td class="tableTitle">휴무일 : </td>
    <td><input type="checkbox" value="월" name="dayarr" class="day" id="day1"><label>월</label>
      <input type="checkbox" value="화" name="dayarr" class="day" id="day2"><label>화</label>
      <input type="checkbox" value="수" name="dayarr" class="day" id="day3"><label>수</label>
      <input type="checkbox" value="목" name="dayarr" class="day" id="day4"><label>목</label>
      <input type="checkbox" value="금" name="dayarr" class="day" id="day5"><label>금</label>
      <input type="checkbox" value="토" name="dayarr" class="day" id="day6"><label>토</label>
      <input type="checkbox" value="일" name="dayarr" class="day" id="day7"><label>일</label>
      <input type="checkbox" value="공휴일" name="dayarr" class="day" id="day8"><label>공휴일</label>
      <input type="checkbox" value="연중무휴" name="dayarr" class="allnot" id="allnot"><label>연중무휴</label>
      </td>
   
  </tr>
  <tr>
    <td class="tableTitle">오픈시간 : </td>
    <td>
      <select id='openarr1' name="openarr">
        <option value='' selected>오전/오후</option>
        <option value='am'>am</option>
        <option value='pm'>pm</option>
      </select>
      <select id='openarr2' name="openarr">
        <option value='' selected>시</option>
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
      <select id='openarr3' name="openarr">
        <option value='' selected>분</option>
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
      <select id='finisharr1' name="finisharr">
        <option value='' selected>오전/오후</option>
        <option value='am'>am</option>
        <option value='pm'>pm</option>
      </select>
      <select id='finisharr2' name="finisharr">
        <option value='' selected>시</option>
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
      <select id='finisharr3' name="finisharr">
        <option value='' selected>분</option>
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
 <div class="col-12" id="btn" style="text-align:center;margin-bottom: 5%;">
  <button id="update">수정 완료</button>
  <a href="/cafein/goCafein?page=1"><button type="button">뒤로가기</button></a>
  </div>
</div>
 </div>
  </form>

 <div id="footer"><jsp:include page="footer.jsp"/> </div>
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
						}else {
							addr = data.jibunAddress;
						}

						document.getElementById("zipcode").value = data.zonecode;
						document.getElementById("address1").value = addr;
						document.getElementById("address2").focus();
					},
				}).open();
	}var beforeStr = "02-123-4567";
	var afterStr = beforeStr.split('-');
 //--------------------------------요일 체크박스 체크 --------------------------------------
 var arr = "${dto.day}";
    arr = arr.split('/');
    var arrLen = arr.length;

    var chk = $('input:checkbox[name=dayarr]');

    for (var i = 0; i < arrLen; i++) { // arr
        var arrVal = arr[i]; // arr의 값 = i : 0, arrVal : 2
        chk.filter('[value=' + arrVal + ']').prop('checked', true); // arrVal 값 2, 4, 5에 의해 checkbox의 value의 값 2, 4, 5를 checked 처리
    }
//-------------------------------체크---------------------------------------------
$(".day").change(function(){
	if($(this).is(":checked")){
		console.log("체크됐음");
		$("#allnot").prop("checked",false);
	}else{
		console.log("체크해제");
	}
})
$("#allnot").change(function(){
	if($(this).is(":checked")){
		$(".day").prop("checked",false);
	}
})
 //-------------------------------오픈시간 select------------------------------------
    var arr = "${dto.open}";
    arr = arr.split(':');
    var arrLen = arr.length;
   
    $("#openarr1").val(arr[0]).prop("selected", true);
    $("#openarr2").val(arr[1]).prop("selected", true);
    $("#openarr3").val(arr[2]).prop("selected", true);
    
//-------------------------------마감시간 select------------------------------------    
    var arr = "${dto.finish}";
    arr = arr.split(':');
    var arrLen = arr.length;
   
 
    $("#finisharr1").val(arr[0]).prop("selected", true);
    $("#finisharr2").val(arr[1]).prop("selected", true);
    $("#finisharr3").val(arr[2]).prop("selected", true);
    
//-----------------------------시간설정
//------------------------------주차장 유무 radio값체크------------------------------
   $("[name=parking]").filter("[value=${dto.parking}]").prop("checked",true)

  

 //---------------------------------공백시 return false--------------------------------
 
 $("#update").on("click",function(){
	 $("#address1").removeAttr("disabled");
	 
	 if($("#name").val() == ''){
		 Swal.fire({
             icon: 'warning',
             title: '확인해주세요.',
             text: '카페이름을 입력해주세요',
         });
		 return false;
	 }
	 else if($("#address1").val() == '' || $("#address2").val() == ''){
		 Swal.fire({
             icon: 'warning',
             title: '확인해주세요.',
             text: '주소를 입력해주세요.',
         });
	
		 return false;
	 }
	 else if($("input:checkbox[name='dayarr']").is(":checked") == false){
		 Swal.fire({
             icon: 'warning',
             title: '확인해주세요.',
             text: '휴무일을 체크해주세요',
         });
		 return false;
	 }
	 else if(!$('#openarr1 > option:selected').val()||!$('#openarr2 > option:selected').val()||!$('#openarr3 > option:selected').val()){
		 Swal.fire({
             icon: 'warning',
             title: '확인해주세요.',
             text: '오픈시간을 선택해주세요.',
         });
		
		 return false;
	 }
	 else if(!$('#finisharr1 > option:selected').val()||!$('#finisharr2 > option:selected').val()||!$('#finisharr3 > option:selected').val()){
		 Swal.fire({
             icon: 'warning',
             title: '확인해주세요.',
             text: '마감시간을 선택해주세요.',
         });
		
		 return false;
	 }
	 else if($("input[name='parking']:checked").is(":checked") == false){
		 Swal.fire({
             icon: 'warning',
             title: '확인해주세요.',
             text: '주차장유무를 체크해주세요.',
         });
		
	
		 return false;
	 }
	 else if(!$("#ex_file").val()){
		 Swal.fire({
             icon: 'warning',
             title: '확인해주세요.',
             text: '원래 사진을 다시 첨부하시거나 다른사진을 첨부해주세요.',
         });
		
		 return false;
	 }
	 else if($('#openarr1 > option:selected').val() == $('#finisharr1 > option:selected').val() && 
			 $('#openarr2 > option:selected').val() == $('#finisharr2 > option:selected').val() &&
			 $('#openarr3 > option:selected').val() == $('#finisharr3 > option:selected').val()
			 ){
		 Swal.fire({
             icon: 'warning',
             title: '확인해주세요.',
             text: '오픈/마감시간이 같습니다.다시 선택해주세요.',
         });
		 return false;
	 }
	 else if($('#openarr1 > option:selected').val() == $('#finisharr1 > option:selected').val() &&
			 $('#openarr2 > option:selected').val() > $('#finisharr2 > option:selected').val() ){
		 alert("시간을 다시 선택해주세요.")
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
 
 
   </script>
   
   
    


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
    document.getElementById('preview').src = "/resources/cafein/${fdto.sys_name }";
  }
}
      </script>    
</body>
</html>