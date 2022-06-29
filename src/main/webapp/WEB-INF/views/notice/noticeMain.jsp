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
  background-image:url("D:\final_project\src\main\webapp\resources\img");
  margin: auto;
  padding: 5%;
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
	font-size: 14px;
	border-bottom: 1px solid #dddddd;
}

.que::before {
	display: inline-block;
	content: 'Q';
	font-size: 14px;
	color: #006633;
	margin-right: 5px;
}

.que.on>span {
	font-weight: bold;
	color: #006633;
}

.anw {
	display: none;
	overflow: hidden;
	font-size: 14px;
	background-color: #f4f4f2;
	padding: 27px 0;
}

.anw::before {
	display: inline-block;
	content: 'A';
	font-size: 14px;
	font-weight: bold;
	color: #666;
	margin-right: 5px;
}
</style>
</head>
<body>

<h2> CAFEIN </h2>
<h4>감성카페를 손쉽게 찾아보세요~ </h4>
<div class="container">
    <div id="Box">
    
	<h1>FAQ</h1>
	
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

	<script>
		$(".que").click(function() {
			$(this).next(".anw").stop().slideToggle(300);
			$(this).toggleClass('on').siblings().removeClass('on');
			$(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
		});
	</script>

</body>
</html>