<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<title>FAQ</title>

<style>

  /*HEADer부분----------------------------*/
  body{
    background-color: black;
  }
    nav {
   background-color: black;
   color: white;
   border-radius: 5px;
  
}
nav a{
    color: white;
}
.navbar-nav a{
    color: white;
    border-radius: 5px;
    margin-right: 20px;
    text-align: center;
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
.navbar-toggler{
    background-color: white;
    color: black;
}
button{
    background-color: rgba(0, 0, 0, 0.128);
    border-radius: 5px;
    color: white;
}

button:hover{
    border-radius: 5px;
    color: black;
    background-color: white;
}
/*board UI출력부분----------------------------*/
.tz-gallery {
    padding: 40px;
}

/* Override bootstrap column paddings */
	.tz-gallery .row > div {
	    padding: 2px;
	}
	
	.tz-gallery .lightbox img {
	    width: 100%;
	    border-radius: 0;
	    position: relative;
	}
		.container h1 {
		    text-align: center;
		    margin-top: 50px;
		    font-family: 'Droid Sans', sans-serif;
		    font-weight: bold;
		}

/*---------------------기능 구현 후 Hover 예정------------------*/


/*---------------------------------------HEADer부분----------------------------*/
  body{
    background-color: black;
  }
    nav {
   background-color: black;
   color: white;
   border-radius: 5px;
  
}
nav a{
    color: white;
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
.navbar-toggler{
    background-color: white;
    color: black;
}
button{
    background-color: rgba(0, 0, 0, 0.128);
    border-radius: 5px;
    color: white;
}

button:hover{
    border-radius: 5px;
    color: black;
    background-color: white;
}

.main{
	color: white;
}

/*-----------------------------------------Footer부분----------------------------*/
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

/* 헤더 푸터 완료 */
 
 
* {
  margin:0px;
  padding:0px;
  text-align:center;
}

.container{
  padding-bottom: 3%;
}

#Box {
  text-align: center;
  width: 80%;
  height: 700px;
  margin: auto;
  margin-bottom:3%;
  padding: 2%;
  background-color: white;
  border-radius: 10%;
}

html, body{
  height:100%;
  font-family: 'Open Sans Condensed', sans-serif;
  background: #000;
}

h2, h4 {
  letter-spacing:4px;
  text-align:center;
  text-transform:uppercase;
}

h2 {
  font-weight:300;
  font-size:2.5em;
  color: #CCC;
}

h4 {
  font-weight:300;
  color: #CCC;
}

.title {
  color: black;
  margin: 2%;
  font-size: 40px;
  font-weight: bold;
}

* {
	box-sizing: border-box;
}

.que:first-child {
	border-top: 1px solid black;
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


@import url('https://fonts.googleapis.com/icon?family=Material+Icons');

.dropdown{
  position : relative;
  display : inline-block;
}

.dropbtn_icon{
  font-family : 'Material Icons';
}
.dropbtn{
  border : 1px solid white;;
  border-radius : 4px;
  background-color: black;
  font-weight: 400;
  color : white;
  padding : 12px;
  width :200px;
  text-align: left;
  cursor : pointer;
  font-size: 20px;
}
.dropdown-content{
  display : none;
  position : absolute;
  z-index : 1; /*다른 요소들보다 앞에 배치*/
  font-weight: 400;
  background-color: white;
  min-width : 200px;
}

.dropdown-content a{
  display : block;
  text-decoration : none;
  color : white;
  font-size: 12px;
  padding : 12px 20px;
}

.dropdown-content a:hover{
  background-color : #ececec
}

.dropdown:hover .dropdown-content {
  display: block;
}
@import url('https://fonts.googleapis.com/icon?family=Material+Icons');

.dropdown{
  position : relative;
  display : inline-block;
}

.dropbtn_icon{
  font-family : 'Material Icons';
}
.dropbtn{
  border : 1px solid black;
  border-radius : 4px;
  background-color: black;
  font-weight: 400;
  color : white;
  padding : 12px;
  width :100px;
  text-align: left;
  cursor : pointer;
  font-size : 12px;
}
.dropdown-content{
  display : none;
  position : absolute;
  z-index : 1; /*다른 요소들보다 앞에 배치*/
  font-weight: 400;
  background-color: white;
  width : 100%;
  border-radius: 5%;
}

.dropdown-content a{
  display : block;
  text-decoration : none;
  color : black;
  background-color:white;
  font-size: 12px;
  padding : 12px 20px;
  margin: 0%;
}

.dropdown-content a:hover{
  background-color : #760c0c;
  color: white;
}

.dropdown:hover .dropdown-content {
  display: block;
}

@-webkit-keyframes flipout {
  0% {-webkit-transform: translate(0px, 0px) scale(1);}
  30% {-webkit-transform: translate(0px, -30px) scale(0.98);}
  100% {-webkit-transform: translate(0px, 0px) scale(0.9);}
}

@-o-keyframes flipout {
  0% {-o-transform: translate(0px, 0px) scale(1);}
  30% {-o-transform: translate(0px, -30px) scale(0.98);}
  100% {-o-transform: translate(0px, 0px) scale(0.9);}
}

@-moz-keyframes flipout {
  0% {-moz-transform: translate(0px, 0px) scale(1);}
  30% {-moz-transform: translate(0px, -30px) scale(0.98);}
  100% {-moz-transform: translate(0px, 0px) scale(0.9);}
}

@keyframes flipout {
  0% {transform: translate(0px, 0px) scale(1);}
  30% {transform: translate(0px, -30px) scale(0.98);}
  100% {transform: translate(0px, 0px) scale(0.9);}
}

@-webkit-keyframes flipin {
  0% {-webkit-transform: translate(0px, 0px) scale(0.9);}
  30% {-webkit-transform: translate(0px, -30px) scale(0.98);}
  100% {-webkit-transform: translate(0px, 0px) scale(1);}
}

@-o-keyframes flipin {
  0% {-o-transform: translate(0px, 0px) scale(0.9);}
  30% {-o-transform: translate(0px, -30px) scale(0.98);}
  100% {-o-transform: translate(0px, 0px) scale(1);}
}

@-moz-keyframes flipin {
  0% {-moz-transform: translate(0px, 0px) scale(0.9);}
  30% {-moz-transform: translate(0px, -30px) scale(0.98);}
  100% {-moz-transform: translate(0px, 0px) scale(1);}
}

@keyframes flipin {
  0% {transform: translate(0px, 0px) scale(0.9);}
  30% {transform: translate(0px, -30px) scale(0.98);}
  100% {transform: translate(0px, 0px) scale(1);}
}

</style>
</head>
<body>

<!------------------------------------------------------------header----------------------------------------------------->
    
     <div class="container">
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">CAFEIN</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                  <a class="nav-link" href="#" style="padding-top: 3.3%;">HOME</a>
                  <a class="nav-link" href="#" style="padding-top: 3.3%;">FEED</a>
                  <a class="nav-link" href="#" style="padding-top: 3.3%;">CAFE-IN</a>
                   <div class="dropdown">
					 <button class="dropbtn" style="font-size: 16.5px; text-align: center;">NOTICE</button>
				   <div class="dropdown-content">
					  <a href="#">이벤트 및 공지사항</a> <a href="#">1:1 문의</a>
					</div>
						</div>
					</div>
              </div>
            </div>
        
            <button>Login</button>
            <button>Signup</button>
        
          </nav>
<div class="tz-gallery">
  <div class="row">

         <h1 class="main">Notice Main</h1>
<!------------------------------------------------------------header----------------------------------------------------->
          
    <div id="Box">
    
    <div class="title">FAQ</div>
    	
	<div id="Accordion_wrap">
		<div class="que">
			<span>사장 게시판은 일반회원은 작성할 수 없나요?</span>
		</div>
		<div class="anw">
			<span>사장 게시판의 경우 사장 회원으로 가입한 회원님만 이용이 가능합니다.</span>
		</div>
		<div class="que">
			<span>일반 게시판은 사장님 회원도 사용할 수 있나요?</span>
		</div>
		<div class="anw">
			<span>This is second answer.</span>
		</div>
		<div class="que">
			<span>문제 혹은 궁금한게 있다면 어디로 가야 하나요?</span>
		</div>
		<div class="anw">
			<span>답변을 고민중.....</span>
		</div>
		<div class="que">
			<span>아이디 / 비밀번호를 잊어 버렸어요..ㅠ</span>
		</div>
		<div class="anw">
			<span>답변을 고민중.....</span>
		</div>
	</div>
</div>

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

<!-------------------------------------------------------Footer------------------------------------------------->

	<script>
		$(".que").click(function() {
			$(this).next(".anw").stop().slideToggle(300);
			$(this).toggleClass('on').siblings().removeClass('on');
			$(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
		});
	</script>

</body>
</html>