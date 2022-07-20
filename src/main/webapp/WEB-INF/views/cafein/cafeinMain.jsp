<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<!-- jstl  -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- j쿼리 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--  Bootstrap ver 5.1  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
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
      }
      .select{
         height:30px;
         margin-left:5%;
         border-radius: 8px;
         margin-top:10px;
         width:100px;
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
      
      .cafeinimg{
      	height:300px;
      	overflow: hidden;
      }
      .cafeinimg img{
      width: 100%;
      height: 100%;
      -webkit-transform:scale(1);
	-moz-transform:scale(1);
	-ms-transform:scale(1);	
	-o-transform:scale(1);	
	transform:scale(1);
	-webkit-transition:.3s;
	-moz-transition:.3s;
	-ms-transition:.3s;
	-o-transition:.3s;
	transition:.3s;
      }
      .cafeinimg:hover img{
      -webkit-transform:scale(1.2);
	-moz-transform:scale(1.2);
	-ms-transform:scale(1.2);	
	-o-transform:scale(1.2);
	transform:scale(1.2);
	opacity:0.7;

      }

</style>
<body style="background-color:#222;">
     <!------------------------------------------------------------header----------------------------------------------------->
<div id="header"><jsp:include page="header.jsp"/> </div>
<!-----------------------------------------------검색 DIV------------------------------------------->
 <div id="con1">
     
       <div class="row">
       	<c:choose>
            <c:when test="${ mdto.mem_level == 1 || mdto.mem_level == 2 }">
          <div class="col-12">
             <button class="writebtn" type="button"><img class="write" src="/resources/img/write.png"></button>
          </div>
          </c:when>
          </c:choose>
          
<!-------------------------------------------------------인스타 Board------------------------------------------------->
	
          <div class="tz-gallery">
			<div class="contents">
            <div class="row">
    
                
                <c:forEach var="i" items="${list}">
                <div class="col-sm-6 col-md-4 cafeinimg">
                    <a class="lightbox" href="/cafein/selectBySeq?cafein_seq=${i.cafein_seq }">
                        <img src="/cafein/${i.sys_name }">
                   
                    </a>
                </div>
                </c:forEach>
               
                
    
            </div>
    
        </div>
</div>          
          
      
         </div>
         </div>
         
          <script>
          $(".writebtn").on("click",function(){
        	  location.href="/cafein/writeCafein";
          })
          
          	let page = 2;  //페이징과 같은 방식이라고 생각하면 된다.
//          getFeedList(page);
//          page++;
      
         $(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
              if($(window).scrollTop() >= $(document).height() - $(window).height()){
            	 getFeedList(page);
            	 console.log(page);
                 page++;   
              } 
         });
   

    function getFeedList(pape){
      let page = pape;
      
      $.ajax({
          url : '/cafein/cafein_imglist',
          type : 'POST',
          data : {page : page},
          async: false,
          dataType : 'json'
     }).done(function(resp){
    	 console.log(resp);
    	let cDiv = $("<div class='row'>");
    	for(let i=0; i < resp.length; i++){
    		 
    	 	let contentsDiv = $("<div class='col-sm-6 col-md-4 cafeinimg'><a class='lightbox' href='/cafein/selectBySeq?cafein_seq="+resp[i].cafein_seq+"'><img src='/cafein/"+ resp[i].sys_name +"'>");
    	 
    	 	cDiv.append(contentsDiv);
    	 }
    	$(".contents").append(cDiv);
	 	cDiv.hide();
	 	cDiv.fadeIn(800);
    	 
    });
    }
          </script>

 <div id="footer"> <jsp:include page="footer.jsp"/></div> 


          
</body>
</html>