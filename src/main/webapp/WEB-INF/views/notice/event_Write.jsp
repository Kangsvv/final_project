<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap ver 5.1  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
</head>
<style>
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

/* 드록 박스 관련 스타일 */
.que:first-child {
   border-top: 1px solid #222;
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

#box li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 8px 8px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: white;
    color: black;
}

li.dropdown {
    display: inline-block;
}

</style>
<body>
<!--  ------------------------------------------------------------header-----------------------------------------------------  -->

      <nav class="navbar navbar-expand-lg">
         <div class="container-fluid">
            <a class="navbar-brand" href="#">CAFEIN</a>
            <button class="navbar-toggler" type="button"
               data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
               aria-controls="navbarNavAltMarkup" aria-expanded="false"
               aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
               <div class="navbar-nav">
                  <a class="nav-link" href="#">HOME</a> 
                  <a class="nav-link" href="#">FEED</a>
                  <a class="nav-link" href="#">CAFE-IN</a>
                  <div class="dropdown">
                     <a href="javascript:void(0)" class="dropbtn" onclick="myFunction()">NOTICE</a>
                     <div class="dropdown-content" id="myDropdown">
                        <a href="/notice/FAQ">FAQ</a> <a href="/notice/event_selectAll">이벤트 및 공지사항</a> <a href="#">1:1 문의</a>
                     </div>
                  </div>
               </div>
            </div>

         <button id="login" type="button"
                    class="mx-1 d-none d-lg-inline btn navbar-btn">Login</button>
                    <button id="signup" type="button"
                    class="mx-1 d-none d-lg-inline btn navbar-btn">Signup</button>
        </div>
      </nav>
      
      
<!-------------------------------------------------------Main------------------------------------------------->
<div class="container" id="main">
   <div class="col-12" style="margin-bottom:40px;">
      <a style="color: white; font-size: 40px;">Event</a>
    </div>
    <form action="event_insert">
			<div id="notice" align=center style="color: #ededed; width: 100%; height: 80%;">
            <div id="row1" style="font-size : 25px; width: 100%; padding-bottom: 1%; border-bottom: 2px solid gray;" align=left>
            <input type=text name=title id=title placeholder="제목 (최대 33자)" style="width:97%;" maxlength="33">
            </div>
            <div id="row3" style="font-size : 15px; width: 100%; height: 600px; margin-top: 2%; border-bottom: 2px solid gray; overflow: hidden;" align=left>
            <textarea class="row col-12 eventbox"
				style="word-break: break-all; white-space: pre-line; padding: 2%; overflow: auto;" disabled>${dto.contents }</textarea>
            </div>
            <div id="row4" style="width: 100%; margin-top: 25px; margin-bottom: 25px;" align=right>
            	<p class="textCount"><span>0</span> / 1300</p>
                <a href="/notice/event_selectAll"><button class="btn" type="button">뒤로</button></a>
                <button type="submit" class="btn" style="margin-left:10px;">등록</button>
            </div>
        </div>
    </form>
</div>
 <!-------------------------------------------------------Footer------------------------------------------------->
    <div class="col-12 d-none d-md-block">
  <div id="foot" align=center>
     <div class="container">
        <div class="row">
          <div class="col-4" id="footicon"> </div>
           <div class="col-2 footer2"><a href="#">회사소개</a></div>
           <div class="col-2 footer2"><a href="#">이용약관</a></div>
           <div class="col-2 footer2"><a href="#">1:1 문의</a></div>
           <div class="col-2 footer2"><a href="#">©2022 CAFEIN</a></div>
        </div>
     </div>
  </div>
</div>

<script>

//글 입력시
$("#contents").keyup(function(e) {
	let content = $(this).val();
	
	// 글자수 계산
	if (content.length == 0 || content == ''){
		$(".textCount").text("0자 /1300자");
	} else {
		$(".textCount").text(content.length + "자 /1300자");
		
	}
	
	// 글자수 제한
	 	if($(this).val().length > 1300) {
    	$(this).val($(this).val().substring(0, 1300));
    	alert("1300자까지 입력 가능합니다")
		 }
});

$(".cbtn").click(function() {
	location.href = "/notice/event";
})




</script>
          
</body>
</html>