<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>


</head>
<style type="text/css">
@font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

* {
	font-family: 'GmarketSansMedium';
}
/*------------------------ 헤더 부분 스타일 ------------------------ */
.loginbox {
	flex: auto;
	float: left;
	min-width: 150px;
	text-align: right;
}

.search {
	color: black;
	background-color: gray;
	border-radius: 8px;
	height: 50px;
	padding: 5px;
	padding-left: 15px;
	font-weight: bold;
	border: 0 solid black;
	display: block;
	width: 100%;
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

.search2 {
	width: 40px;
	bottom: 30px;
	float: left;
}

.writebtn {
	background-color: transparent;
	float: right;
	margin-right: 5%;
	margin-bottom: 2%;
}

.searchbtn {
	background-color: transparent;
}

.select option, #select {
	color: black;
	background-color: #ccc;
	text-align: center;
}

.select {
	height: 30px;
	margin-left: 5%;
	border-radius: 8px;
	margin-top: 10px;
	width: 100px;
	border: none;
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
/* container */
#con1 {
	margin-left: 12%;
	margin-right: 12%;
}

nav {
	background-color: black;
	color: white;
	padding-left: 10%;
	padding-right: 10%;
	border-bottom: 1px solid gray;
}

nav a {
	color: white;
	
}

.navbar-nav {
	min-width: 450px;
	margin-left: 5%;
}

.navbar-nav a {
	color: white;
	border-radius: 5px;
 
}

.navbar-nav li {
	margin-left: 5%;
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

.logo {
	width: 100px;
}

li .dropdown-item {
	color: black;
	margin-bottom: 14px;
	text-align: left;
	padding-left:5px;
}


li .dropdown-item:hover {
	color: white;
	background-color:black;
	margin-bottom: 14px;
	text-align: left;
}

</style>
<body style="background-color: #222;">
     <!------------------------------------------------------------header----------------------------------------------------->
     
     <nav class="navbar navbar-expand-lg" style="margin-bottom:50px;">
      <div class="container-fluid">
      <a href="/"><img src="/img/logo4.png" class="logo"></a>
        <button style="border:2px solid white;" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon">▼</span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="/">HOME</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/feed/goFeed?page=1">FEED</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/cafein/goCafein?page=1">CAFE-IN</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            NOTICE
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li style="margin:0px;"><a class="dropdown-item" href="/notice/FAQ">FAQ</a></li>
            <li style="margin:0px;"><a class="dropdown-item" href="/notice/event_selectAll">이벤트 및 공지사항</a></li>
            <li style="margin:0px;"><a class="dropdown-item" href="/question/question_list">1:1문의</a></li>
          </ul>
        </li>
      </ul>
             <c:choose>
				<c:when test="${empty loginID}">
		<ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item d-lg-none"><a class="nav-link mx-0 mx-md-0 mx-lg-3" href="/Member/login.jsp" id="board">Login</a></li>
        	<li class="nav-item d-lg-none"><a class="nav-link mx-0 mx-md-0 mx-lg-3" href="/Member/signUp.jsp" id="board">Signup</a></li>
          </ul>
          </c:when>
         <c:otherwise>
         <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item d-lg-none"><a class="nav-link mx-0 mx-md-0 mx-lg-3" href="/mypage/mypage" id="board">myPage</a></li>
          <li class="nav-item d-lg-none"><a class="nav-link mx-0 mx-md-0 mx-lg-3" href="/member/logout" id="board">logout</a></li>
         </ul>
         </c:otherwise>          
          </c:choose>
          </div>
        </div>
        <c:choose>
		<c:when test="${empty loginID}">
		     <button id="login" type="button"
              class="mx-1 d-none d-lg-inline btn navbar-btn" onclick="location.href='/member/login' ">Login</button>
        	 <button id="signup" type="button"
              class="mx-1 d-none d-lg-inline btn navbar-btn" onclick="location.href='/member/signUp' ">Signup</button>
	    </c:when>
	    <c:otherwise>
	    	 <button id="login" type="button"
              class="mx-1 d-none d-lg-inline btn navbar-btn"  onclick="location.href='/mypage/mypage' ">myPage</button>
	    	 <button id="login" type="button"
              class="mx-1 d-none d-lg-inline btn navbar-btn" onclick="location.href='/member/logout' ">logout</button>
	    </c:otherwise>
    </c:choose>
        
        
      </div>
    </nav> 
</body>
<script>
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
$("#navbarDropdownMenuLink").on("click",function(){
	$("#navbarDropdownMenuLink").css({
		"color": "white",
		"background-color" : "black"
	});
})
</script>
</html>