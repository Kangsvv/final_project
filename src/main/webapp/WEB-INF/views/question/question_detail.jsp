<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
   crossorigin="anonymous">
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
   integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
   crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<title>Question Detail</title>

<style>
body {
	background-color: #222;
}

.container h1 {
	text-align: center;
	margin-top: 50px;
	font-family: 'Droid Sans', sans-serif;
	font-weight: bold;
	color: white;
}

/*---------------------기능 구현 후 Hover 예정------------------*/

/*------------------------ 헤더 부분 스타일 ------------------------ */
nav {
	background-color: black;
	padding-left: 10%;
	padding-right: 10%;
	border-bottom: 1px solid gray;
}

nav a {
	color: white;
}

.navbar-nav {
	min-width: 450px;
}

.navbar-nav a {
	color: white;
	border-radius: 5px;
	margin-right: 20px;
}

.navbar-nav a:hover {
	color: black;
	background-color: white;
	border-radius: 5px;
	text-decoration-line: none;
}

#btn {
	text-align: right;
}

nav button {
	background-color: rgba(0, 0, 0, 0.128);
	border-radius: 5px;
	color: white;
}

nav button:hover {
	border-radius: 5px;
	color: black;
	background-color: white;
}

.loginbox {
	flex: auto;
	float: left;
	min-width: 150px;
	text-align: right;
}

input:focus {
	outline: none;
}

input::placeholder {
	color: #ccc;
}

.write {
	width: 40px;
}

button {
	border: none;
}

#login, #signup {
	color: white;
}

#login:hover, #signup:hover {
	color: black;
}

/*-----------------------------------------Footer부분----------------------------*/
/* footer 부분 */
#foot {
	border-top: 1px solid gray;
	background-color: black;
	margin-bottom: 0px;
}

.footer2 {
	line-height: 20px;
	margin-top: 20px;
	margin-bottom: 20px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 14px;
	line-height: 20px;
	color: #FFFFFF;
}

.footer2 a {
	text-decoration: none;
	color: white;
}
/* 헤더 푸터 완료 */

#Box {
  text-align: center;
  height: 800px;
  margin-left:24%;
  margin-right:24%;
  margin-bottom:3%;
  padding: 2%;
}

#Noticecontainer {
	margin: auto;
	background-color: white;
	width: 100%;
	height: 800px;
	padding: 5%;
	border-radius: 10%;
	margin-bottom: 3%;
}

.titlebox {
	border: none;
	padding: 0%;
	margin: auto;
	text-align: center;
}

.title_head {
	color: white;
	background-color: black;
	border: none;
	text-align: center;
	height: 30px;
	padding-top: 0.25%;
}

.noticbtn {
	margin-bottom: 1%;
}

.nbtn {
	color: black;
	font-size: 20px;
}

.cbtn {
	background-color: #760c0c;
	border: none;
	border-radius: 15%;
	color: white;
	font-size: smaller;
	width: 9%;
	height: 35px;
	margin-top: 1%;
	padding: 0.5%;
}

.eventbox {
	background-color: white;
	border-bottom: 1px solid #222;
	text-align: center;
	height: 650px;
	padding-top: 0.25%;
	margin: auto;
	width: 100%;
    border: none;
    resize: none;
}

.notice1 {
	text-align: left;
}

.create {
	margin-top: 1%;
	text-align: right;
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

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    border-radius: 4%;
}

.dropdown-content a {
    font-size :13px;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
    margin: 0%;
}

.dropdown-content a:hover {
   background-color: #760c0c;
   color: white;
}

.show {display:block;}

.con_head {
	color: white;
	background-color: black;
	border: none;
	text-align: center;
	height: 30px;
	padding-top: 0.25%;
}

.conbox {
	margin: auto;
}

.main{
	background-color: #222;
	color: white;
	border: none;
	text-align: center;
	padding: auto;
}

#modifyBtn{
	background-color: #760c0c;
	color: white;
	border: none;
	border-radius: 15%;
	margin: 1%;
}

#cancelBtn{
	background-color: #760c0c;
	color: white;
	border: none;
	border-radius: 15%;
	margin: 1%;
}

.backbtn{
	background-color: #760c0c;
	color: white;
	border: none;
	border-radius: 15%;
}

.delbtn{
	background-color: #760c0c;
	color: white;
	border: none;
	border-radius: 15%;
}

.upbtn{
	background-color: #760c0c;
	color: white;
	border: none;
	border-radius: 15%;
}

</style>

</head>
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
      
<!-- ------------------------------------------------------------Main----------------------------------------------------- -->

<br>
 	<div class="row col-12 titlebox">
      <input type="text" class="main" style="color:white; text-align: center; margin: auto;" value="${dto.title }" disabled>
    </div>
      <div style="border-bottom: 3px solid white; width: 50%; margin: auto; padding-top: 1%; margin-bottom: 2%;"></div>

	<div id="Box">

		<div id="Noticecontainer">

			<div class="row col-12 conbox">
				<div class="col-3 con_head">${dto.writer }</div>
				<div class="col-6 con_head">
					<fmt:formatDate pattern="yy-MM-dd" value="${dto.write_date}" />
				</div>
				<div class="col-3 con_head">
					조회수 :
					<%--  추후 가능하면 넣을 예정 ${dto.count } --%>
				</div>
			</div>

			<div> 
			<textarea class="row col-12 eventbox"
				style="word-break: break-all; white-space: pre-line; padding: 2%; overflow: auto;" disabled>${dto.contents }</textarea>

			<div class="col-12 create">
				<input type="button" class="upbtn" value="수정"> 
				<input type="button" class="delbtn" value="삭제">
				<input type="button" class="backbtn" value="뒤로">
			</div> 	
		</div>

	</div>

</div>

 <div id="reply_box">

	
	        <div class="replyWriteBox">
            	<div id="row" style="font-size : 15px; width: 100%; height: 100%; overflow: hidden;" align=left>
	            	<div id="replyContentsBox">
	            		<textarea name="replyContents" id="replyContents" style="width: 100%;" rows="30" placeholder="내용"></textarea>
	            	</div>
	            	<div id="replyWriteBtnBox">
	            		<input type="button" id="replyWriteBtn" value="작성하기">
	            	</div>
            	</div>
            </div>
	
	
	
	
	
	 		<div class="replyList">
				<c:forEach var="i" items="${rlist }">
						<div style="color:white">
						작성 날짜 : <fmt:formatDate pattern="yy-MM-dd" value="${i.write_date}" />
						</div>
						<div style="color:white">
							${i.contents } 
						</div>
									<div><button>수정</button> <button id="replyDelete">삭제</button></div>
				</c:forEach>
<!-- 				<form action="reply_insert"> -->
<!-- 				 <input type="text" class="reply" name="contents" style="color:black; margin: auto;" /> -->
<!-- 				 		<button>작성하기</button> -->
<!-- 	 			</form> -->
	 		</div>	
	 	
	 	
	 	
	 	
	 	
</div>
	
	
	

<style>
div{border: 1px solid white;}

	#reply{
	
	width: 1000px;
  	height: 300px;
  	
	}
	.replyList{
		text-align: center;
	}

 .replyWriteBox{
         	padding:20px;
        	border-top: 2px solid white;
			border-bottom: 2px solid white;
        }
       
        #replyContentsBox{
        	float: left;
        	width:90%;
        	height:100px;
        }
        #replyWriteBtnBox{
       		float: left;
        	width:10%;
        	height:100px;
        }
        #replyWriteBtn{
        	background-color:#760c0c;
        	color:white;
        	border-radius:10px;
        	width:100%;
        	height:100%;
        }
        .replycontainer {
            margin: auto;
            width: 95%;
            margin-top: 10px;
            border-bottom: 1px solid gray;
        }
 		.replycontents2{
 			margin-left: 10px;
			word-wrap: break-word;      /* IE 5.5-7 */
			white-space: -moz-pre-wrap; /* Firefox 1.0-2.0 */
			white-space: pre-wrap;      /* current browsers */
 		}
        .replywriterName{
            margin: 4px 4px;
            width: 98%;
            height: 15%;
            background-color: rgb(84, 84, 84);
            color: white;
            padding-left: 10px;
        }

        .replycontent{
            margin: 4px 4px;
            width: 98%;
            height: 78%;
            padding-left: 10px;
        }

        .replydel {
/*             margin-top: 60px; */
        }
        .replyleft{
/*             float: left; */
            width: 100%;
        }

         .replyright{
/*              float: left;  */
             width: 100%; 
/*             height: 100%; */
             text-align: right;
             padding-bottom:5px;
         }
         .replymodify{
         	margin-right:5px;
         }

</style>
	<!-------------------------------------------------------Footer------------------------------------------------->
	<div class="col-12 d-none d-md-block">
		<div id="foot" align=center>
			<div class="container">
				<div class="row">
					<div class="col-4" id="footicon">
						<a href="#"
							style="color: white; padding-top: 20px; text-decoration-line: none;">CAFEIN</a>
					</div>
					<div class="col-2 footer2">
						<a href="#">회사소개</a>
					</div>
					<div class="col-2 footer2">
						<a href="#">이용약관</a>
					</div>
					<div class="col-2 footer2">
						<a href="#">1:1 문의</a>
					</div>
					<div class="col-2 footer2">
						<a href="#">©2022 CAFEIN</a>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-------------------------------------------------------Footer------------------------------------------------->

</body>


<script>
$(".que").click(function() {
   $(this).next(".anw").stop().slideToggle(300);
   $(this).toggleClass('on').siblings().removeClass('on');
   $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
});

function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

window.onclick = function(e) {
     if (!e.target.matches('.dropbtn')) {

       var dropdowns = document.getElementsByClassName("dropdown-content");
       for (var d = 0; d < dropdowns.length; d++) {
         var openDropdown = dropdowns[d];
         if (openDropdown.classList.contains('show')) {
           openDropdown.classList.remove('show');
         }
      }
   }         
}

$(".delbtn").click(function(){
	let result = confirm("정말 삭제하시겠습니까?")
	if(result){
		alert("삭제가 완료되었습니다.")
		location.href = "/question/question_delete?question_seq=${dto.question_seq}";
	}else{
		
	}
})

$(".backbtn").on("click", function(){
	location.href = "/question/question_list";
})


$(".upbtn").on("click",function(){
	$(".main").removeAttr("disabled");
	$(".eventbox").removeAttr("disabled");
	
	$(".upbtn").css("display","none"); // 수정 버튼 감추기
	$(".delbtn").css("display","none"); // 삭제 버튼 감추기
	
		let ok = $("<button>");//수정완료 버튼
			ok.text("완료");
			ok.attr("id","modifyBtn")
		
			let cancel = $("<button>");//취소 버튼
			cancel.text("취소");
			cancel.attr("id", "cancelBtn")
	
	$(".create").prepend(cancel); //취소 버튼 추가
	$(".create").prepend(ok); // 수정완료 버튼 추가
	
	$("#cancelBtn").on("click", function(){
		location.reload();
	})
});

// 수정완료 버튼
$(".create").on("click", "#modifyBtn",function(){
	
	let question_seq = "${dto.question_seq}"; // 게시글 고유 넘버
	let title = $(".main").val();
	let contents = $(".eventbox").val(); // 게시글 내용
	
	$.ajax({
		url : "/question/question_modify",
		type : "post",
		data : {question_seq:question_seq, title:title , contents:contents},
	}).done(function(resp){
		if(resp == "true"){
			location.reload();//새로 고침	
		}

	})
})
	
	
// 댓글	
 $(function(){
            $("#replyWriteBtn").on("click", function(){
                
                let article = $("#replyContents").val();

                if(article==""){
                	const Toast = Swal.mixin({
                	    toast: true,
                	    position: 'center-center',
                	    showConfirmButton: false,
                	    timer: 3000,
                	    timerProgressBar: true,
                	    didOpen: (toast) => {
                	        toast.addEventListener('mouseenter', Swal.stopTimer)
                	        toast.addEventListener('mouseleave', Swal.resumeTimer)
                	    }
                	})
                	 
                	Toast.fire({
                	    icon: 'error',
                	    title: '댓글 내용을 입력해주세요.'
                	})
                	$("#replyContents").focus();
                	return false;
                }else{
                	$.ajax({
                		url:"/question/reply_insert",
                		data:{
                			question_seq:${dto.question_seq},
                			contents:article
      
                		},
                		async:false
                		
                	}).done(function(resp){
                		console.log(resp);
                		location.reload();
                		$(".replycontainer").remove();
                		for(let i = 0; i < resp.length; i++){
                			let container = $("<div>");
                            container.attr("class","row replycontainer");

                            let left = $("<div>");
                            left.attr("class","col-12 replyleft");
                            
                            
                            let right = $("<div>");
                            right.attr("class","col-12 replyright");
            				
                            let writerName = $("<div>");
                            writerName.attr("id", "replyWriter");
                            writerName.attr("class", "col-12");
                            writerName.text(resp[i].id);

                            let contents = $("<div>");
                            contents.attr("class","col-12 replycontents2");
                            contents.text(resp[i].contents);

                            
                            let modifyBtn = $("<button>");
                            modifyBtn.attr("type","button");
                            modifyBtn.attr("class","replymodify btn btn-secondary");
                            modifyBtn.text("수정");
                            
                            let delBtn = $("<button>");
                            delBtn.attr("type","button");
                            delBtn.attr("class","replydel btn btn-secondary");
                            delBtn.text("삭제");
                            
                            
                            left.append(writerName);
                            left.append(contents);

                            right.append(modifyBtn);
                            right.append(delBtn);

                            container.append(left);
                            container.append(right);

                            $(".replyBox").prepend(container);

                            $("#replyContents").val("");
                            $("#replyContents").focus();
                		};
                       });
             	}
             })          
     });

$("#replyDelete").on("click", function() {
	location.href = "/question/reply_delete";
	
});

// $("#replyUpdate").on("click". function() {

// })
                    


</script>

</html>
