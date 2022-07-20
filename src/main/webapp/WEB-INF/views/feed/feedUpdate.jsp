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
     /* footer 부분 */

#foot{
    border-top: 1px solid gray;
    background-color: black;
    
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
.footer2 a{
   text-decoration : none;
   color:white;
   }

/*------------------------ 헤더 부분 스타일 ------------------------ */
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
       #row4 .btn{
         font-family: 'Noto Sans KR';
         font-style: normal;
         font-weight: 700;
            height: 45px;
            line-height: 30px;
            font-weight: bold;
            background-color: #760c0c;
            color: #FFFFFF;
            border-radius: 12px;
            width:120px;
            border: none;
            margin-left:10px;
         }
         #title,#contents{
            background-color:#222;
            border:none;
         }
         
         textarea:focus {
		    outline: none;
		}
		#file{
		  border-radius: 5px;
		  width: 300px;
		  height: 300px;
		  color: black;
		  text-align: center;
		  margin: auto;
		  margin-bottom: 9%;
		}
		#preview{
		  border: 1px solid white;
		  width: 300px;
		  height: 300px;
		  color:white;
		  text-align: center;
		  margin: auto;
		}
		#file label {
		  display: inline-block;
		  padding: .5em .75em;
		  color: #fff;
		  font-size: inherit;
		  line-height: normal;
		  vertical-align: middle;
		  background-color: #5cb85c;
		  cursor: pointer;
		  border: 1px solid #4cae4c;
		  border-radius: .25em;
		  -webkit-transition: background-color 0.2s;
		  transition: background-color 0.2s;
		}
		
		#file label:hover {
		  background-color: #6ed36e;
		}
		
		#file label:active {
		  background-color: #367c36;
		}
		
		#file input[type="file"] {
		  position: absolute;
		  width: 1px;
		  height: 1px;
		  padding: 0;
		  margin: -1px;
		  overflow: hidden;
		  clip: rect(0, 0, 0, 0);
		  border: 0;
		}
		#file img{
		  width: 300px;
		  height: 300px;
		}
</style>
<body>
   <!------------------------------------------------------------header----------------------------------------------------->
     
        <nav class="navbar navbar-expand-lg" style="margin-bottom:50px;">
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
                    class="mx-1 d-none d-lg-inline btn navbar-btn" style="color:white;">Login</button>
                    <button id="signup" type="button"
                    class="mx-1 d-none d-lg-inline btn navbar-btn" style="color:white;">Signup</button>
            </div>
          </nav>
<!-------------------------------------------------------Main------------------------------------------------->

<div class="container" id="main">
   <div class="col-12" style="margin-bottom:40px;">
      <a style="color: white; font-size: 40px;">카페리뷰 글 수정하기</a>
    </div>
    <form action="/feed/feed_update" method="post" enctype="multipart/form-data">
       <div id="notice" align=center style="color: #ededed; width: 100%; height: 80%;">
            <div id="row1" style="font-size : 25px; width: 100%; padding-bottom: 1%; border-bottom: 2px solid gray;" align=left>
            <input type=text name=title id=title placeholder="제목" style="width:97%; color:white;" value="${dto.title }">
            <input type="hidden" value="${dto.cafefeed_seq}" name="cafefeed_seq" class="cafefeed_seq">
            </div>
            <div id="row3" style="font-size : 15px; width: 100%; height: 600px; margin-top: 2%; border-bottom: 2px solid gray; overflow: hidden;" align=left>
            <textarea name="contents" id="contents" style="width: 98%; color:white;" rows="30" placeholder="내용">${dto.contents }</textarea>
            </div>
            <div class="row" style="margin-top: 5%; margin-bottom: 5%;">
				<div class="col-12 col-sm-6" id="file"><img id="preview" />
			   		<label for="ex_file">업로드</label>
			   		<input type="file" name="file" id="ex_file" value="파일첨부" onchange="readURL(this);" multiple>
				</div>
			</div>
            <div id="row4" style="width: 100%; margin-top: 25px; margin-bottom: 25px;" align=right>
                <a href="/feed/goFeed?page=1"><button class="btn" type="button">뒤로</button></a>
                <button type="submit" class="btn" id="writeBtn" style="margin-left:10px;">수정</button>
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
	$("#writeBtn").on("click",function(){
		if($("#title").val() == ''){
			 alert("제목을 입력해주세요");
			 $("#title").focus();
			 return false;
		 }
		 else if($("#contents").val() == ''){
			 alert("내용를 입력해주세요.");
			 $("#contents").focus();
			 return false;
		}
		else if(!$("#ex_file").val()){
			alert("사진을 넣어주세요.");
			return false;
		}
	 	// file
	    let fileVal = $("#ex_file").val();
	    
	    let maxSize = 10 * 1024 * 1024; // 10MB
	    let fileSize = $("#ex_file")[0].files[0].size;
 
			
	   // 파일 확장자 체크
	   if (fileVal != ""){
	       	let ext = fileVal.split('.').pop().toLowerCase();
	       	
	       	if($.inArray(ext, ['jpg', 'jpeg', 'png', 'gif']) == -1){
	       		alert('jpg, jpeg, png, gif 파일만 업로드 할 수 있습니다.');
	       		
	       		return false;
	       		
	       	}
       	
        }
	  
	})
// -------------------------파일 업로드 시, 검수 ( 가로 X 세로 사이즈 체크 ) ------------------------
</script>

					<!-- 파일 업로드 창에 사진 띄어주기 -->
      <script>
       function onClickUpload() {
            let myInput = document.getElementById("my-input");
            myInput.click();
        }
		function readURL(input) {
		  if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    reader.onload = function(e) {
		      document.getElementById('preview').src = e.target.result;
		    };
		    
		    reader.readAsDataURL(input.files[0]);
		  } else {
		    document.getElementById('preview').src = "";
		  }
		}
      </script>  
          
</body>
</html>