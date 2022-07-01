<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!--    <script src="https://kit.fontawesome.com/247b201f79.js" crossorigin="anonymous"></script> -->
   
   <style>
  /*HEADer부분----------------------------*/
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
   
   body {
   		
        background-color: #222;
        position: relative;
        margin: auto;
        padding: 0 1rem;
        font-family: var(--body-font);
        color: white;
        font-size: var(--normal-font-size);
        transition: .5s;
      }
      #container{
         padding-top: 30%;
      }
      #carouselExampleControls{
         margin : auto;
         width:65%;
      }
      .carousel-item img{
         height: 500px;
      }
      span{
         color: white;
      }
      #title{
         font-size:10px;
      }
      #nickname{
         font-size:5px;
      }
      .carousel-inner {
          position: relative;
          width: 100%;
          overflow: hidden;
      }
      .carousel-item {
          position: relative;
          display: none;
          float: left;
          width: 100%;
          margin-right: -100%;
          -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
          transition: transform .6s ease-in-out;
      }
      .carousel-item-next, .carousel-item-prev, .carousel-item.active {
          display: block;
      }
      .card img {
          height: 350px;
          object-fit: cover;
      }

        #conMenu {
            height: 50px;
             margin: 40px;
           
        }


       #heart{
           width: 87%;
           padding-top: 20px;
           padding-left: 20px;
           flex-wrap: nowrap; 
       } 
       #ht{
         float: left;
      }       
      #imgbox1{
      	
      }
        #ht2{
        float: left;  
        text-align: right;
       
        vertical-align: right; 

      } 
      
       #count{
           padding-top: 5px;
            width: 87%;
           text-align: center;
           padding-left:20px;
       }
       #jjimcol{
           font-size: 27px;
           color: #b1b1b1;
           text-align: center;
           padding: 0px;
           max-width: 56px;
           min-width: 56px; 
           float: right;   
       }
       #goodcol{
           font-size: 27px;
           color: #b1b1b1;
           text-align: center;
           padding: 0px;
           max-width: 56px;
           min-width: 56px; 
           float: left;
           text-align: center;
           
       }
       #likecnt{
           padding: 0px;
           max-width: 56px;
           min-width: 56px;
       }
       #jjimcnt{
           padding: 0px;
           max-width: 56px;
           min-width: 56px;
       }


        .padding{
            padding-bottom:10px ;

        }
         .writer{
            font-weight: bold;
        }

       .id{
       overflow:hidden;
       text-overflow:ellipsis;
       white-space:nowrap;
       
       }


         #title{
            font-size: 15px;
           
        }
        .bookmark{
         text-align: right;
         padding:0px;
        }
        #contents-container{
			border-bottom: 2px 5px white;
        }
        .contentsBox{
        	text-align: center;
        	font-size: 20px;
        }
        #followButton{
        	padding:10px;
        	border:none;
        	border-radius: 10px;
        	background-color:#760c0c;
        	color : white;
        	font-weight:bold;
        }
        #clickEventsBox{
        	margin:40px;
        	border-top: 2px solid white;
        	border-bottom: 2px solid white;
        	padding:10px;
        	margin-top:5px;
        }
        #bookmark{
        	text-align:right;
        }
        .heartBtn{
        	padding-right:10px;
        }
   </style>
</head>
<body>
	     <!------------------------------------------------------------header----------------------------------------------------->
    
     <div class="Allcontainer">
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">CAFEIN</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                  <a class="nav-link" href="#">HOME</a>
                  <a class="nav-link" href="#">FEED</a>
                  <a class="nav-link" href="#">CAFE-IN</a>
                  <a class="nav-link" href="#">NOTICE</a>
                </div>
              </div>
              <button>Login</button>
              <button>Signup</button>
            </div>
        
         
        
          </nav>
	
   <!-- --------------------contentsHeader--------------------------- -->
   
   
   <div id="contentsHeader">
      <div class="row border-bottom border-2 rounded h-100" id="conMenu">
                   <div class="col-12 col-md-12 ellipsis "  style="padding-left:7px" id="title">다들 하이요!!</div>
                    <div class="row">
                        <div class="col-3 col-md-3 ellipsis id" style="padding-left:8px;">hihiyoyo</div>
                        <div class="col-9"><i class="fa-solid fa-calendar"></i>&nbsp;2022.06.29</div>
                    	
                        <div class="col-3 " style="padding-left:8px;"><i class="fa-solid fa-eye"></i>&nbsp;&nbsp;10</div>
                        <div class="col-6 like"><i class="fa-solid fa-heart"></i>&nbsp;3000</div>
                        <div class="col-3 bookmark"><button id="followButton">Follow</button></div>

                     </div>
                </div>
   			</div>
   <div class="container">
      <div class="row">
      <!-- Main Contents Container -->
         <div class="col-12 contents-container">
         	<div class="imgbox1">
	         	<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
	              <div class="carousel-inner">
	                <div class="carousel-item active">
	                  <img src="/resources/img/cafe1.jpg" class="d-block w-100 h-100" alt="...">
	                </div>
	                <div class="carousel-item">
	                  <img src="/resources/img/cafe2.jpg" class="d-block w-100 h-100" alt="...">
	                </div>
	                <div class="carousel-item">
	                  <img src="/resources/img/cafe3.jpg" class="d-block w-100 h-100" alt="...">
	                </div>
	              </div>
	              <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
	                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	                <span class="visually-hidden">Previous</span>
	              </button>
	              <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
	                <span class="carousel-control-next-icon" aria-hidden="true"></span>
	                <span class="visually-hidden">Next</span>
	              </button>
	            </div>
            </div>
            <div class="row" id="clickEventsBox">
	            <div class="col-6">
	            	<span class="heartBtn"><i class="fa-regular fa-heart fa-xl buttonIcon"></i></span>
	            	<span><i class="fa-regular fa-comment fa-xl buttonIcon"></i></span>
	            </div>
	            <div id="bookmark" class="col-6">
	            	<i class="fa-solid fa-bookmark fa-xl buttonIcon"></i>
	            </div>
            </div>
            <div class="contentsBox">
            	화이팅!
            </div>
         </div>
       </div>
     </div>
   </div>
       <!-------------------------------------------------------Footer------------------------------------------------->
 
    <div class="col-12 d-none d-md-block">
      <div id="foot" align=center>
         <div class="footcontainer">
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

   

</body>
</html>