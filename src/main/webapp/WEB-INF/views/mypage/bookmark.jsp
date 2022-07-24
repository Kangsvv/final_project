<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>My cafe</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    
    <style>
      :root {  
          font-size: 10px;  
       }  
      * {
        color: white;
      }
      *,
      *::before,
      *::after {
        box-sizing: border-box;
      }

      body {
        font-family: 'Open Sans', Arial, sans-serif;
        min-height: 100vh;
        background-color: #222;
        color: #262626;
        padding-bottom: 3rem;
      }

      
      .container {
        max-width: 93.5rem;
        margin: 0 auto;
        padding: 0 2rem;
        
      }

      .btn {
        display: inline-block;
        font: inherit;
        background: none;
        border: none;
        color: inherit;
        padding: 0;
        cursor: pointer;
      }
      .btn:hover {
        background: #373737;
      }

      .btn:focus {
        outline: 0.5rem auto #4d90fe;
      }

      .visually-hidden {
        position: absolute !important;
        height: 1px;
        width: 1px;
        overflow: hidden;
        clip: rect(1px, 1px, 1px, 1px);
      }

      /* Profile Section */

      .profile {
        padding: 5rem 0;
      }

      .profile::after {
        content: '';
        display: block;
        clear: both;
      }

      .profile-image {
        float: left;
        border-radius: 70%;
    	width: 200px;
    	height: 200px;
        display: flex;
        justify-content: center;
        align-items: center;
        margin-right: 3rem;
      	overflow:hidden;
      }
		
		
      .profile-image img {
         
        width:100%;
		height:100%;
		object-fit:cover;
      }

      .profile-user-settings,
      .profile-stats,
      .profile-bio {
        float: left;
        width: calc(66.666% - 2rem);
      }

      .profile-user-settings {
        margin-top: 1.1rem;
      }

      .profile-user-name {
        display: inline-block;
        font-size: 3.2rem;
        font-weight: 300;
      }

      .profile-edit-btn {
        font-size: 1.4rem;
        line-height: 1.8;
        border: 0.1rem solid #dbdbdb;
        border-radius: 0.3rem;
        padding: 0 2.4rem;
        margin-left: 2rem;
      }

      .profile-settings-btn {
        font-size: 2rem;
        margin-left: 1rem;
      }

      .profile-stats {
        margin-top: 2.3rem;
      }

      .profile-stats li {
        display: inline-block;
        font-size: 1.6rem;
        line-height: 1.5;
        margin-right: 4rem;
        cursor: pointer;
      }

      .profile-stats li:last-of-type {
        margin-right: 0;
      }

      .profile-bio {
        font-size: 1.6rem;
        font-weight: 400;
        line-height: 1.5;
        margin-top: 2.3rem;
      }

      .profile-real-name,
      .profile-stat-count,
      .profile-edit-btn {
        font-weight: 600;
      }

      /* Gallery Section */

      .gallery {
        display: flex;
        flex-wrap: wrap;
        margin: -1rem -1rem;
        padding-bottom: 3rem;
      }

      .gallery-item {
        position: relative;
        flex: 1 0 22rem;
        margin: 1rem;
        color: #fff;
        cursor: pointer;
      }

      .gallery-item:hover .gallery-item-info,
      .gallery-item:focus .gallery-item-info {
        display: flex;
        justify-content: center;
        align-items: center;
        position: absolute;
        top: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.3);
      }

      .gallery-item-info {
        display: none;
      }

      .gallery-item-info li {
        display: inline-block;
        font-size: 1.7rem;
        font-weight: 600;
      }

      .gallery-item-likes {
        margin-right: 2.2rem;
      }

      .gallery-item-type {
        position: absolute;
        top: 1rem;
        right: 1rem;
        font-size: 2.5rem;
        text-shadow: 0.2rem 0.2rem 0.2rem rgba(0, 0, 0, 0.1);
      }

      .fa-clone,
      .fa-comment {
        transform: rotateY(180deg);
      }

      .gallery-image {
        width: 100%;
        height: 100%;
        object-fit: cover;
      }

      /* Loader */

      .loader {
        width: 5rem;
        height: 5rem;
        border: 0.6rem solid #999;
        border-bottom-color: transparent;
        border-radius: 50%;
        margin: 0 auto;
        animation: loader 500ms linear infinite;
      }

      /* Media Query */

      @media screen and (max-width: 40rem) {
        .profile {
          display: flex;
          flex-wrap: wrap;
          padding: 4rem 0;
        }

        .profile::after {
          display: none;
        }

        .profile-image,
        .profile-user-settings,
        .profile-bio,
        .profile-stats {
          float: none;
          width: auto;
        }

        .profile-image img {
          width: 7.7rem;
        }

        .profile-user-settings {
          flex-basis: calc(100% - 10.7rem);
          display: flex;
          flex-wrap: wrap;
          margin-top: 1rem;
        }

        .profile-user-name {
          font-size: 2.2rem;
        }

        .profile-edit-btn {
          order: 1;
          padding: 0;
          text-align: center;
          margin-top: 1rem;
        }

        .profile-edit-btn {
          margin-left: 0;
        }

        .profile-bio {
          font-size: 1.4rem;
          margin-top: 1.5rem;
        }

        .profile-edit-btn,
        .profile-bio,
        .profile-stats {
          flex-basis: 100%;
        }

        .profile-stats {
          order: 1;
          margin-top: 1.5rem;
        }

        .profile-stats ul {
          display: flex;
          text-align: center;
          padding: 1.2rem 0;
          border-top: 0.1rem solid #dadada;
          border-bottom: 0.1rem solid #dadada;
        }

        .profile-stats li {
          font-size: 1.4rem;
          flex: 1;
          margin: 0;
        }

        .profile-stat-count {
          display: block;
        }
      }

      /* Spinner Animation */

      @keyframes loader {
        to {
          transform: rotate(360deg);
        }
      }

      /*

The following code will only run if your browser supports CSS grid.

Remove or comment-out the code block below to see how the browser will fall-back to flexbox & floated styling. 

*/

      @supports (display: grid) {
        .profile {
          display: grid;
          grid-template-columns: 1fr 2fr;
          grid-template-rows: repeat(3, auto);
          grid-column-gap: 3rem;
          align-items: center;
        }

        .profile-image {
          grid-row: 1 / -1;
        }

        .gallery {
          display: grid;
          grid-template-columns: repeat(auto-fit, minmax(22rem, 1fr));
          grid-gap: 2rem;
        }

        .profile-image,
        .profile-user-settings,
        .profile-stats,
        .profile-bio,
        .gallery-item,
        .gallery {
          width: auto;
          margin: 0;
        }

        @media (max-width: 40rem) {
          .profile {
            grid-template-columns: auto 1fr;
            grid-row-gap: 1.5rem;
          }

          .profile-image {
            grid-row: 1 / 2;
          }

          .profile-user-settings {
            display: grid;
            grid-template-columns: auto 1fr;
            grid-gap: 1rem;
          }

          .profile-edit-btn,
          .profile-stats,
          .profile-bio {
            grid-column: 1 / -1;
          }

          .profile-user-settings,
          .profile-edit-btn,
          .profile-settings-btn,
          .profile-bio,
          .profile-stats {
            margin: 0;
          }
        }
      }
      a {
      color:white;
        text-decoration-line: none;
        
      } 
      
      .gallery-item{
      	min-height:300px;
      	height: 300px;
      	overflow: hidden;
      }
      
      .lightbox img {
       width: 100%;
       height:100%;
       border-radius: 0;
       position: relative;
   }
      /* 일단 다른곳에서 가져온 style */
      
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
            .feedImg{
      	height:350px;
      	overflow: hidden;
      	border : 1px solid #222;
      	border-radius: 3px;
      }
      .feedImg img{
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
      .feedImg:hover img{
      -webkit-transform:scale(1.2);
	-moz-transform:scale(1.2);
	-ms-transform:scale(1.2);	
	-o-transform:scale(1.2);
	transform:scale(1.2);
	opacity:0.7;

      }
      
    </style>
  </head>
  
  <!-- header -->
  <%@ include file="header.jsp"%>
  <!-- header -->
  
  <body background-color="#222">
	
    <header>
      <div class="container">
        <div class="profile" >
    <c:if test="${dto.mem_img != null}">     <!-- 만약에 이미지값이 null일 경우 그냥 뿌리기 -->
          <div class="profile-image" >
           <img src="/resources/mypage/${dto.mem_img }" />
          </div>
	</c:if>
	<c:if test="${dto.mem_img == null}">      <!-- 만약에 이미지값이 null이 아니면 저장된 이미지 뿌리기 -->
          <div class="profile-image" >
           <img src="https://cdn-icons-png.flaticon.com/512/76/76769.png" />
          </div>
	</c:if>
          <div class="profile-user-settings">
            <h1 class="profile-user-name">${dto.mem_name }</h1>
            
	<c:if test="${dto.mem_id == loginID}"> <!-- 본인만 수정가능한 버튼 생성 -->
            <button class="btn profile-edit-btn" id="editprofile">
              Edit Profile
            </button>

            <button class="btn profile-edit-btn"
            	onclick="location.href='/cafein/messagebox' ">message</button>
    </c:if>        	

            <button
              class="btn profile-settings-btn"
              aria-label="profile settings"
            >
              <i class="fas fa-cog" aria-hidden="true"></i>
            </button>
          </div>

          <div class="profile-stats">
            <ul>
              <li>
                <a href="/mypage/mypage"
                  ><span class="profile-stat-count"> MY FEED </span></a> <!-- ${countfeed } -->
              </li>
   <c:if test="${dto.mem_level == 1}"> <!-- 사장일 경우만 가게 게시물 출력 -->
              <li>
                <a href="/mypage/mycafe"
                  ><span class="profile-stat-count" > MY CAFE-IN </span></a> <!-- ${countcafein } -->
              </li>
   </c:if>           
              <li>
                <a href="/mypage/bookmark"
                  ><span class="profile-stat-count" style=" text-decoration: underline; text-underline-position: under;"> MARK FEED </span> </a><!-- ${countbookmark } -->
              </li>
            </ul>
          </div>
          <!-- End of profile section -->

        </div>
        <!-- End of profile section -->
      </div>
      <!-- End of container -->
    </header>
    
<!-- ---------------사진 출력되는 부분---------------------- -->

    <main>
      <div class="container">
        <div class="gallery">
          
	<!-- -------------------------------------------------- -->
	
	<div class="tz-gallery">

            <div class="contents">
             	<div class="row">
		 		    <c:forEach var="i" items="${imglist }">
		                <div class="col-sm-6 col-lg-4  feedImg">
		                    <a class="lightbox" href="/feed/selectBySeq?cafefeed_seq=${i.cafefeed_seq }">
		                        <img src="/feed/${i.sys_name }">
		                    </a>
		                </div>
		            </c:forEach>
				</div>
            </div>
    
        </div>
   
	<!-- -------------------------------------------------- -->

          
        </div>
        <!-- End of gallery -->
      </div>
      <!-- End of container -->
    </main>


    <script>
    	$("#editprofile").on("click",function(){
    		location.href = "/mypage/mypageEdit";
    	})
    </script>
  </body>
</html>
