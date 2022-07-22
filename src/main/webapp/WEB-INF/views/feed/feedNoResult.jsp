<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 결과</title>
<!-- jstl  -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Bootstrap ver 5.1  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<style>
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
 body{
    background-color: #222;
  }
#btn{
    text-align: right;
}
/*board UI출력부분----------------------------*/
.tz-gallery {
    padding: 40px;
    padding-top:0px;
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


</style>
<body>

<!------------------------------------------------------------header----------------------------------------------------->
            <jsp:include page="header.jsp"/>
<c:if test="${loginID != null}" >
<%@ include file="/WEB-INF/views/letter.jsp"%>
</c:if>
<!-----------------------------------------------검색 DIV------------------------------------------->
 <div id="con1">
 	 <form action="/feed/search">
       <div class="row">
          <div class="col-3"></div>
          <div class="col-6 d-none d-md-block searchdiv"style="padding:0px;">
             <input class="search" type="text" name="search" placeholder="제목으로 검색해보세요.">
          </div>
          <div class="col-6 d-md-none searchdiv"style="padding:0px;">
             <input class="search" type="text" name="search2" placeholder="제목으로 검색">
          </div>
          
          <div class="col-3">
          <button class="searchbtn" type="submit" style="padding:0px;"><img class="search2" style="padding:0px; margin-top:5px;"src="/resources/img/search.png"></button>
          </div>
      </div>
      </form>
       <div class="row">
           <div class="col-6">
<!--               <select class="select"> -->
<!--                 <option>최신순</option> -->
<!--                 <option>조회순</option> -->
<!--                 <option>추천순</option> -->
<!--               </select> -->
           </div>
          
          <c:if test="${loginMember.memLevel == 0 || loginMember.memLevel == 2 }">
	          <div class="col-6">
	             <button class="writebtn" type="button"><img class="write" src="/resources/img/write.png"></button>
	          </div>
      	  </c:if>
         </div>
          

  <!-------------------------------------------------------인스타 Board------------------------------------------------->

          <div class="tz-gallery">

            <div class="contents">
             	<div class="row">
		 		    <a>검색결과가 없습니다.</a>
				</div>
    
            </div>
    
        </div>
</div>
         <!-------------------------------------------------------Footer------------------------------------------------->
  <%@ include file="footer.jsp"%>
<script>
	$(".writebtn").on("click", function(){
		location.href = "/feed/goFeedWrite";
	})
</script>
</body>
</html>