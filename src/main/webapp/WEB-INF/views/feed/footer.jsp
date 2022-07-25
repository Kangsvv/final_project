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
<style>
/*-----------------------------------------Footer부분----------------------------*/
/* footer 부분 */
#foot{
    border-top: 1px solid gray;

    
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

.footer2 a{
	text-decoration-line: none;
	color:white;
}

</style>
<body>
   <!-------------------------------------------------------Footer------------------------------------------------->
 
   <div class="col-12 d-none d-md-block" style="background-color:black">
    <div id="foot" align=center>
       <div class="container">
          <div class="row">
             <div class="col-4 footer2" style="font-size:20px;"><a href="#">CAFEIN</a></div>
             <div class="col-2 footer2"><a href="#">회사소개</a></div>
             <div class="col-2 footer2"><a href="#">이용약관</a></div>
             <div class="col-2 footer2"><a href="#">1:1 문의</a></div>
             <div class="col-2 footer2"><a>©2022 CAFEIN</a></div>
          </div>
       </div>
    </div>
  </div>

    
</body>
</html>