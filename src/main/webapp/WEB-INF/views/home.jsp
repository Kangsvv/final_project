<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<style>
  @import url('https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700');

* {
  margin:0px;
  padding:0px;
  text-align:center;
}

img {
  width: 180px; 
  height: 320px;
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
  padding-top:1em;
  color: #CCC;
}

h2:hover {
  color: white;
  cursor: pointer;
}

h4 {
  font-weight:300;
  padding:2em;
  color: #CCC;
}

h5 {
  letter-spacing:3px;
  font-weight:300;
  color: #CCC;
}

.range {
  -webkit-box-sizing:border-box;
  -moz-box-sizing:   border-box;
  box-sizing:        border-box;
  max-width:900px;
  margin:0 auto 5em auto;
  padding: 0em;
}

.box {
  position: relative;
  width: 180px;
  height: 0px;
  left: 7.5%;
  margin: 0.5%;
  padding-bottom: 353px;
  float: left;
  opacity: 0.65;
}

.flip,
.bar {
  position: absolute;
}

.flip {
  top:0px;
  left:0px;
  width:100%;
  height:100%;
  overflow:hidden;
  background:rgba(255,255,255,0.5);
  cursor: pointer;
  -webkit-animation:flipout 0.5s ease forwards;
  -moz-animation:   flipout 0.5s ease forwards;
  -o-animation:     flipout 0.5s ease forwards;
  animation:        flipout 0.5s ease forwards;
}

.bar {
  bottom:0px;
  left:0px;
  width:100%;
  background: white;
}

.bar h3 {
  font-size:1.5rem;
  font-weight:300;
  text-transform:uppercase;
  letter-spacing:3px;
}

.box:hover {
   opacity: 1; 
}

.box:hover > .flip {
  background: rgba(255,255,255,0.8);
  -webkit-animation:flipin 0.5s ease forwards;
  -moz-animation:   flipin 0.5s ease forwards;
  -o-animation:     flipin 0.5s ease forwards;
  animation:        flipin 0.5s ease forwards;
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
#feed{
  text-align: center;
  color: white;
  font-size: 30px;
  margin-top: 3%;
  
}

.container{
  text-align: center;
  overflow: hidden;
}

</style>
<body>
  
  <h2> CAFEIN </h2>
<h4>감성카페를 손쉽게 찾아보세요~ </h4>
<div class="container">
<article class="range">
  
  <section class="box" id="box1">
    <figure class="flip">
      <a href="https://www.facebook.com/cafelakulaku" target="_blank"><img src="https://2.bp.blogspot.com/-ywv6LaSnjgE/Uh9GGzWaFbI/AAAAAAAAA64/fLVMc7_xFAU/s1600/where.jpg" /></a>
      <figcaption class="bar">
        <h3>FEED</h3>
       </figcaption>
    </figure>
  </section>
  
  <section class="box" id="box2">
    <figure class="flip">
      <img src="https://2.bp.blogspot.com/-lNmcHj4MqOM/Uh9GFylK6vI/AAAAAAAAA6g/v3JuP6rfWKU/s1600/coffee.jpg" />
      <figcaption class="bar">
        <h3>CAFE-IN</h3>
       </figcaption>
    </figure>
  </section>
  
  <section class="box" id="box3">
    <figure class="flip">
      <img src="https://1.bp.blogspot.com/-BfbEpyEtmgk/Uh9GGNwLN6I/AAAAAAAAA6k/gxHsPPGjIcc/s1600/cake.jpg" />
      <figcaption class="bar">
        <h3>COFFEE TEST</h3>
       </figcaption>
    </figure>
  </section>
  
    <section class="box" id="box4">
    <figure class="flip">
      <img src="https://2.bp.blogspot.com/-XD5AjJLD0Qs/Uh9GGA_yXQI/AAAAAAAAA6s/uZNjG-XOAYw/s1600/contact.jpg" />
      <figcaption class="bar">
        <h3>NOTICE</h3>
       </figcaption>
    </figure>
  </section>
</article>
</div>


<div id="feed">
  나의 FEED를 올려 예쁜카페를 다같이 공유해보세요~~ 
</div>

</body>
</html>