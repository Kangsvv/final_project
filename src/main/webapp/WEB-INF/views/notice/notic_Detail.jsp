<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
   crossorigin="anonymous">
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
   integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
   crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<title>Event Detail</title>

<style>
body {
	background-color: #222;
}

.container h1 {
	text-align: center;
	margin-top: 50px;
	font-family: 'Droid Sans', sans-serif;
	font-weight: bold;
	color: white;
}

/*---------------------기능 구현 후 Hover 예정------------------*/

/*------------------------ 헤더 부분 스타일 ------------------------ */
nav {
	background-color: black;
	padding-left: 10%;
	padding-right: 10%;
	border-bottom: 1px solid gray;
}

nav a {
	color: white;
}

.navbar-nav {
	min-width: 450px;
}

.navbar-nav a {
	color: white;
	border-radius: 5px;
	margin-right: 20px;
}

.navbar-nav a:hover {
	color: black;
	background-color: white;
	border-radius: 5px;
	text-decoration-line: none;
}

#btn {
	text-align: right;
}

nav button {
	background-color: rgba(0, 0, 0, 0.128);
	border-radius: 5px;
	color: white;
}

nav button:hover {
	border-radius: 5px;
	color: black;
	background-color: white;
}

.loginbox {
	flex: auto;
	float: left;
	min-width: 150px;
	text-align: right;
}

input:focus {
	outline: none;
}

input::placeholder {
	color: #ccc;
}

.write {
	width: 40px;
}

button {
	border: none;
}

#login, #signup {
	color: white;
}

#login:hover, #signup:hover {
	color: black;
}

/*-----------------------------------------Footer부분----------------------------*/
/* footer 부분 */
#foot {
	border-top: 1px solid gray;
	background-color: black;
	margin-bottom: 0px;
}

.footer2 {
	line-height: 20px;
	margin-top: 20px;
	margin-bottom: 20px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 14px;
	line-height: 20px;
	color: #FFFFFF;
}

.footer2 a {
	text-decoration: none;
	color: white;
}
/* 헤더 푸터 완료 */

#Box {
  text-align: center;
  height: 800px;
  margin-left:24%;
  margin-right:24%;
  margin-bottom:3%;
  padding: 2%;
}

#Noticecontainer {
	margin: auto;
	background-color: white;
	width: 100%;
	height: 800px;
	padding: 5%;
	border-radius: 10%;
}

.titlebox {
	border: none;
	padding: 0%;
	margin: auto;
	text-align: center;
}

.title_head {
	color: white;
	background-color: black;
	border: none;
	text-align: center;
	height: 30px;
	padding-top: 0.25%;
}

.noticbtn {
	margin-bottom: 1%;
}

.nbtn {
	color: black;
	font-size: 20px;
}

.cbtn {
	background-color: #760c0c;
	border: none;
	border-radius: 15%;
	color: white;
	font-size: smaller;
	width: 9%;
	height: 35px;
	margin-top: 1%;
	padding: 0.5%;
}

.noticbox {
	background-color: white;
	border-bottom: 1px solid #222;
	text-align: center;
	height: 30px;
	padding-top: 0.25%;
	margin: auto;
}

.notice1 {
	text-align: left;
}

.create {
	margin-top: 1%;
	text-align: right;
}

/* 드록 박스 관련 스타일 */
.que:first-child {
   border-top: 1px solid #222;
}

.que {
   position: relative;
   padding: 17px 0;
   cursor: pointer;
   font-size: 16px;
   border-bottom: 1px solid #dddddd;
}

.que::before {
   display: inline-block;
   content: 'Q';
   font-size: 16px;
   color: #760c0c;
   margin-right: 5px;
}

.que.on>span {
   font-weight: bold;
   color: #760c0c;
}

.anw {
   display: none;
   overflow: hidden;
   font-size: 13px;
   background-color: #f4f4f2;
   padding: 27px 0;
}

.anw::before {
   display: inline-block;
   content: 'A';
   font-size: 15px;
   font-weight: bold;
   color: #666;
   margin-right: 5px;
}

#box li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 8px 8px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: white;
    color: black;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    border-radius: 4%;
}

.dropdown-content a {
    font-size :13px;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
    margin: 0%;
}

.dropdown-content a:hover {
   background-color: #760c0c;
   color: white;
}

.show {display:block;}

</style>

</head>
<body>

<!--  ------------------------------------------------------------header-----------------------------------------------------  -->

      <nav class="navbar navbar-expand-lg">
         <div class="container-fluid">
            <a class="navbar-brand" href="#">CAFEIN</a>
            <button class="navbar-toggler" type="button"
               data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
               aria-controls="navbarNavAltMarkup" aria-expanded="false"
               aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
               <div class="navbar-nav">
                  <a class="nav-link" href="#">HOME</a> 
                  <a class="nav-link" href="#">FEED</a>
                  <a class="nav-link" href="#">CAFE-IN</a>
                  <div class="dropdown">
                     <a href="javascript:void(0)" class="dropbtn" onclick="myFunction()">NOTICE</a>
                     <div class="dropdown-content" id="myDropdown">
                        <a href="/notice/FAQ">FAQ</a> <a href="/notice/event_selectAll">이벤트 및 공지사항</a> <a href="#">1:1 문의</a>
                     </div>
                  </div>
               </div>
            </div>

         <button id="login" type="button"
                    class="mx-1 d-none d-lg-inline btn navbar-btn">Login</button>
                    <button id="signup" type="button"
                    class="mx-1 d-none d-lg-inline btn navbar-btn">Signup</button>
        </div>
      </nav>
      
<!-- ------------------------------------------------------------header----------------------------------------------------- -->

<br>
      <h1 class="main" style="color:white; text-align: center;">${dto.title }</h1>
      <div style="border-bottom: 3px solid white; width: 50%; margin: auto; padding-top: 1%; margin-bottom: 2%;"></div>

	<div id="Box">

		<div id="Noticecontainer">

			<div class="row col-12 conbox">
				<div class="col-1 con_head">${dto.writer }</div>
				<div class="col-7 con_head">
					<fmt:formatDate pattern="yy-MM-dd" value="${dto.write_date}" />
				</div>
				<div class="col-2 con_head">조회수</div>
			</div>

			<div class="row col-12 noticbox">
				<div class="col-1 notice" style="word-break:break-all; white-space: pre-line; padding: 2%;">${dto.contents }</div>
			</div>

			<div class="row">
				<div class="col-12 create">
					<input type="button" class="upbtn" value="수정">
					<input type="button" class="delbtn" value="삭제">
				</div>
			</div>
		</div>
	</div>

	<!-------------------------------------------------------Footer------------------------------------------------->
	<div class="col-12 d-none d-md-block">
		<div id="foot" align=center>
			<div class="container">
				<div class="row">
					<div class="col-4" id="footicon">
						<a href="#"
							style="color: white; padding-top: 20px; text-decoration-line: none;">CAFEIN</a>
					</div>
					<div class="col-2 footer2">
						<a href="#">회사소개</a>
					</div>
					<div class="col-2 footer2">
						<a href="#">이용약관</a>
					</div>
					<div class="col-2 footer2">
						<a href="#">1:1 문의</a>
					</div>
					<div class="col-2 footer2">
						<a href="#">©2022 CAFEIN</a>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-------------------------------------------------------Footer------------------------------------------------->

<script>
$(".que").click(function() {
   $(this).next(".anw").stop().slideToggle(300);
   $(this).toggleClass('on').siblings().removeClass('on');
   $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
});

function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

window.onclick = function(e) {
     if (!e.target.matches('.dropbtn')) {

       var dropdowns = document.getElementsByClassName("dropdown-content");
       for (var d = 0; d < dropdowns.length; d++) {
         var openDropdown = dropdowns[d];
         if (openDropdown.classList.contains('show')) {
           openDropdown.classList.remove('show');
         }
      }
   }         
}

$(".delbtn").click(function(){
	let result = confirm("정말 삭제하시겠습니까?")
	if(result){
		alert("삭제가 완료되었습니다.")
		location.href = "/notice/notic_delete?seq=${dto.seq}";
	}else{
		
	}
	
})

</script>

</body>
