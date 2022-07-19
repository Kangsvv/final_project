<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<!-- Bootstrap ver 5.1  -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
 
 
<title>Insert title here</title>
</head>
<style>
    nav{
  
  width: 100%;
  background-color: #131418;
  box-shadow: 0 3px 20px rgba(0, 0, 0, 0.2);
  /* display: flex; */
  /* position: fixed; */
  z-index: 10;
}
#btn{
  
  background-color: #131418;
  
}
/*Styling logo*/
.logo {
  padding: 1vh 1vw;
  text-align: center;
  font-size: 40px;
  margin-bottom: 2%;
}
#logo img{
 height: 100px;
 width: 100px;
}
.logo img {
  height: 5rem;
  width: 5rem;
}

/*Styling Links*/
.nav-links{
  display: flex;
  list-style: none; 
  /* width: 88vw; */
  height: 80px;
  padding: 0 0.7vw;
  justify-content: space-evenly;
  align-items: center;
  text-transform: uppercase;
}
.nav-links li a{
  text-decoration: none;
  margin: 0 0.7vw;
  font-size: 20px;
  color: white;
}
.nav-links li a:hover {
  color: white;
}

.nav-links li {
  position: relative;
  color: white;
  opacity: 1;
}
.nav-links li a::before {
  content: "";
  display: block;
  height: 3px;
  width: 0%;
  background-color: #760c0c;
  position: absolute;
  transition: all ease-in-out 250ms;
  margin: 0 0 0 10%;
}
.nav-links li a:hover::before{
  width: 80%;
  opacity: 1;
}

/*Styling Buttons*/
#btn button{
  color: white;
  background-color: #222;
  border-radius: 2em;
  padding: 0.1rem 0.8rem;
  font-size: 1rem;
  cursor: pointer;
}
#btn button:hover {
   color: #131418;
  background-color: #f2f5f7;
  border:1.5px solid #f2f5f7;
  transition: all ease-in-out 350ms;
}
.fade:not(.show) {
  opacity: 1;
}
/*Styling Hamburger Icon*/
.hamburger div{
  width: 30px;
  height:3px;
  background: #f2f5f7;
  margin: 5px;
  transition: all 0.3s ease;
 
}
.hamburger{

  display: none;
}

/*Stying for small screens*/
@media screen and (max-width: 800px){
  nav{
      position: fixed;
      z-index: 3;
      opacity: 1;
      height: 70px;
  }
  .hamburger{
      display:block;
      position: absolute;
      cursor: pointer;
      right: 5%;
      top: 50%;
      transform: translate(-5%, -50%);
      z-index: 2;
      transition: all 0.7s ease;
      opacity: 1;
  }
  .nav-links{
      position: fixed;
      background: #131418;
      color: white;
      height: 100vh;
      width: 100%;
      flex-direction: column;
      clip-path: circle(50px at 90% -20%);
      -webkit-clip-path: circle(50px at 90% -10%);
      transition: all 1s ease-out;
      pointer-events: none;
      opacity: 1;
  }
  .nav-links.open{
      clip-path: circle(1000px at 90% -10%);
      -webkit-clip-path: circle(1000px at 90% -10%);
      pointer-events: all;
      color: white;
      opacity: 1;
  }
  .nav-links li{
      opacity: 1;
  }
  .nav-links li:nth-child(1){
      transition: all 0.5s ease 0.2s;
      opacity: 1;
  }
 .nav-links li:nth-child(2){
      transition: all 0.5s ease 0.4s;
      opacity: 1;
  }
  .nav-links li:nth-child(3){
      transition: all 0.5s ease 0.6s;
      opacity: 1;
  }
  .nav-links li:nth-child(4){
      transition: all 0.5s ease 0.7s;
      opacity: 1;
  }
  .nav-links li:nth-child(5){
      transition: all 0.5s ease 0.8s;
      opacity: 1;
  }
  .nav-links li:nth-child(6){
      transition: all 0.5s ease 0.9s;
      opacity: 1;
      margin: 0;
  }
  .nav-links li:nth-child(7){
      transition: all 0.5s ease 1s;
      opacity: 1;
      margin: 0;
  }

  li.fade{
      opacity: 1;
  }

}
.container{
  margin-top: 5%;
  margin-bottom: 5%;
}
/*Animating Hamburger Icon on Click*/
.toggle .line1{
  transform: rotate(-45deg) translate(-5px,6px);
}
.toggle .line2{
  transition: all 0.7s ease;
  width:0;
}
.toggle .line3{
  transform: rotate(45deg) translate(-5px,-6px);

}
body{
    background-color: #222;
}
html,body {
  font-family: Helvetica, Arial, sans-serif;
  margin: 0;
}
.panel-faq-container {
  margin-bottom: -16px;
}
.panel-faq-title {
  color: black;
  cursor: pointer;
}
.panel-faq-answer {
  height: 0;
  overflow: hidden;
  /* 변화가 시작되는 쪽에다가 transition 적용해준다 0 -> 300px 
  왜? 닫기 버튼을 누를 때 변화가 티남 */
  transition: all 1s;
}
#btn-all-close {
  margin-bottom: 10px;
  background-color: #760c0c;
  border: none;
  color: #fff;
  cursor: pointer;
  padding: 10px 25px;
  float: right;
}
#btn-all-close:hover {
  background-color: #760c0c;
  color: #fff;
  opacity: 0.5;
  transition: all 0.35s;
}
.active {
  display: block;
  /* 높이를 정해줘야지만 transition이 적용됨 */
  height: 300px;
}
table{
    border-top-left-radius: 10px;
    border-radius: 10px;
    border: 1px solid black;
    background-color: white;
}
td, th,tr {
    border-radius: 10px;
border-left: 1px solid black;
}
tr {
border-bottom : 1px solid black;
}
/*-------------------------------------모달--------------------------------------*/
.modal-content{
  background-color: rgb(86, 81, 81);

}
#box {
      text-align: center;
      margin :auto;
      height: 550px;
      width: 400px;
      background: black;
      border-radius: 20px;
      -webkit-box-shadow: 8px 8px 9px 0px rgba(50, 50, 50, 0.75);
      -moz-box-shadow:    8px 8px 9px 0px rgba(50, 50, 50, 0.75);
      box-shadow:         8px 8px 9px 0px rgba(50, 50, 50, 0.75);
      vertical-align: middle;
      color:white;
      margin-top: 5%;
      margin-bottom: 5%;
    }
    
    h1 {
      text-align:center;
      color: white;
      padding-top: 7px;

    }
    
    #top {
      
      
      height: 50px;
      background: black;
      border-radius: 20px 20px 0px 0px;
      padding-bottom:5px;
      
    }
    
    #form {
      
      text-align:center;
      
    }
    input[type=text] {
    width: 300px;
    height: 40px;
    border-radius: 5px;
}
    textarea {
      
      height:300px;
      width: 300px;
      border-radius: 20px;
      min-height: 300px;
      max-height: 300px;
      text-align:center;
      
    }
    
   text {
     width: 100%;
    }
    
    #button {
      
      width: 150px;
      height: 35px;
      background-color: #69FA72;
      border-radius: 5px;
      font-family: 'Henny Penny', cursive;
      color: white;
      font-size: 20px;
      margin-top: 10px;
      
    }

/*-----------------------------------------Footer부분----------------------------*/
/* footer 부분 */
#foot{
  position: absolute;
  height: 60px;
  width: 100%;
  padding: 0 25px;
  line-height: 60px;
  background-color: #222;
  color: white;
 
/* rgba(32, 31, 31, 0.532) */
}
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
</style>

<body>
  <div id="btn" style="text-align: right;">
    <button class="button" id="login">Login</button>
        <button class="button" id="join">Join</button>
</div>
<nav>
  
    <div class="hamburger">
        <div class="line1"></div>
        <div class="line2"></div>
        <div class="line3"></div>
    </div>
    <ul class="nav-links" style="color: white;">
        <li id="logo"><img src="logo.png"></li>
        <li><a  href="#">Home</a></li>
        <li><a href="#">FEED</a></li>
        <li><a href="#">CAFE-IN</a></li>
        <li><a href="#">NOTICE</a></li>
    </ul>

    
</nav>
<script src="nav.js"></script>
    <div class="container">
        <div class="row">

            <div class="col-12">
                <h3 style="text-align: center; padding-top: 50px;color: white;">쪽지함</h3>
            </div>
        <div class="col-12" >
            <button id="btn-all-close">모든쪽지닫기</button>
        </div>
        <div class="row">
          <div class="col-12">
        <table class="table table-hover">
          
          <thead class="thead-light text-center">
            <tr>
            <th scope="col">번호</th>
              <th>제목</th>
              <th>보낸사람</th>
              <th>날짜</th>
              <th>카페링크</th>
            </tr>
          </thead>
          <c:forEach var="mdto" items="${mdto}">
          <c:set var="i" value="${i+1}" />
          <tbody class="text-center">
          	
            <tr>
              <td>${i} </td>
              <td class="text-left" width="50%">
                <div class="panel-faq-container">
                  <p class="panel-faq-title">${mdto.title}</p>
                  <div class="panel-faq-answer">
                  <h3>------------------------------------------------------------------</h3>
                  <br>
                   ${mdto.contents}
                   <br>
                   <br>
                   <br>
                   <div style="text-align:right;"><button type="button" id="answer" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">답장</button></div>
                  </div>
                </div>
              </td>
              <td>${mdto.cafe}</td>
              <td>${mdto.write_date}</td>
              <td>
              <a class="lightbox" href="/cafein/selectBySeq?cafein_seq=${mdto.cafein_seq }">cafein</a>
			  </td>
			  
            </tr>
             <input type="hidden" name="seq"  value="${mdto.message_seq }">
          
          </tbody>
            <!--------------------------쪽지모달창------------------------->
 <form action="/cafein/message" id="send">
 <div class="modal fade send" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="color: white;">Message</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
        <div  class="modal-body" id = "box">
          <div id = "top">
            
  
              제목:&nbsp; <br>  
            <input type = "text" name="title" id = "title" placeholder = "제목을 입력해주세요" required/><br><br>
              받는사람:&nbsp;  ${dto.writer}&nbsp;(${dto.name}&nbsp;사장님) 
             <br>  
             <br>
              <textarea placeholder = "내용을 입력해주세요" name="contents" required /></textarea><br>
            <input type="hidden" name="receiver" value="${dto.writer}">
            <input type="hidden" name="receiver_email" value="${dto.email}">
            <input type="hidden" name="seq" value="${dto.seq} ">
            <input type="hidden" name="cafe" value="${dto.name}사장님">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        <button  class="btn btn-success" id="message">전송</button> 
           </form>
          </div>
          
        </div>
      </div>
<!--       <div class="modal-footer" style="background-color: rgb(86, 81, 81);;"> -->
<!--         <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button> -->
<!--         <button type="button" class="btn btn-success" id="message">전송</button>  -->
<!--       </div> -->
    </div>
  </div>
        </c:forEach>
        </table>
      </div>
    </div>
      </div>
    </div>
 
    <!-------------------------------------------------------Footer------------------------------------------------->
 
    <div class="col-12 d-none d-md-block" >
      <div id="foot" align=center>
         
            <div id="footer" class="row" style=" border-top: 1px solid gray;">
              <div class="col-4" id="footicon"> </div>
               <div class="col-2 footer2">회사소개</div>
               <div class="col-2 footer2">이용약관</div>
               <div class="col-2 footer2">1:1 문의</div>
               <div class="col-2 footer2">©2022 CAFEIN</div>
            </div>
         
      </div>
    </div>

</body>



<script>
//------------------------답장할사람 찾기----------------------
console.log($("#answer").parent().parent().parent().parent().parent());


  const hamburger = document.querySelector(".hamburger");
const navLinks = document.querySelector(".nav-links");
const links = document.querySelectorAll(".nav-links li");

hamburger.addEventListener('click', ()=>{
   //Animate Links
    navLinks.classList.toggle("open");

    links.forEach(link => {
        link.classList.toggle("fade");
    });
  
    //Hamburger Animation
    hamburger.classList.toggle("toggle");
});

    window.onload = () => {
  // panel-faq-container
  const panelFaqContainer = document.querySelectorAll(".panel-faq-container"); // NodeList 객체
  
  // panel-faq-answer
  let panelFaqAnswer = document.querySelectorAll(".panel-faq-answer");

  // btn-all-close
  const btnAllClose = document.querySelector("#btn-all-close");
  
  // 반복문 순회하면서 해당 FAQ제목 클릭시 콜백 처리
  for( let i=0; i < panelFaqContainer.length; i++ ) {
    panelFaqContainer[i].addEventListener('click', function() { // 클릭시 처리할 일
      // FAQ 제목 클릭시 -> 본문이 보이게끔 -> active 클래스 추가
      panelFaqAnswer[i].classList.toggle('active');
    });
  };
  
  btnAllClose.addEventListener('click', function() {
    // 버튼 클릭시 처리할 일  
    for(let i=0; i < panelFaqAnswer.length; i++) {
        panelFaqAnswer[i].classList.remove('active');
    };
  });
}

  
</script>
</html>