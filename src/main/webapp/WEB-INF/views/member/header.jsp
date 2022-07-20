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
    <!-- Bootstrap ver 5.1  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>




</head>
<style>
  <style>
  /*HEADer부분----------------------------*/

/*------------------------ 헤더 부분 스타일 ------------------------ */
   .loginbox{
      flex:auto;
      float:left;
      min-width:150px;
      text-align:right;
   }
      .search{
         color:black;
         background-color: gray;
         border-radius: 8px;
         height:50px;
         padding:5px;
         padding-left:15px;
         font-weight : bold;
         border:0 solid black;
         display:block;
         width:100%;
         
      }
      input:focus {outline:none;}
      input::placeholder {
      color: #ccc;
      }
      .write{
         width:40px;
      }
      .search2{
         width:40px;
         bottom:30px;
         float: left;
      }
      .writebtn{
          background-color:transparent;
         float: right;
         margin-right:5%;
         margin-bottom:2%;
      }
      .searchbtn{
         background-color:transparent;
      }
      .select option, #select{
         color:black;
         background-color:#ccc;
          text-align: center;
      }
      .select{
         height:30px;
         margin-left:5%;
         border-radius: 8px;
         margin-top:10px;
         width:100px;
         border:none;
      }
      
      button{
        border:none;
      }
      #login,#signup{
         color:white;
      }
      #login:hover,#signup:hover{
         color:black;
      }
/* container */

#con1{
   margin-left: 12%;
   margin-right: 12%;
}

    nav {
   background-color: black;
   color: white;
   padding-left:10%;
   padding-right:10%;
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


</style>
<body style="background-color: #222;">
     <!------------------------------------------------------------header----------------------------------------------------->
     
     <nav class="navbar navbar-expand-lg" style="margin-bottom:50px;">
     <div class="container">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">CAFEIN</a>
        <button style="border:2px solid white;" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
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
      </div>
    </nav> 
</body>
</html>