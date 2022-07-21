<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<!-- jstl  -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- j쿼리 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--  Bootstrap ver 5.1  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.12.1/datatables.min.css"/>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.12.1/datatables.min.js"></script> 
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

      .writebtn{
          background-color:transparent;
         float: right;
         margin-right:5%;
         margin-bottom:2%;
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
/*    Main */
#Box {
  text-align: center;
  height: 800px;
  margin-left:12%;
  margin-right:12%;
  margin-bottom:3%;
  padding: 2%;
}

#Noticecontainer {
	margin: auto;
	background-color: white;
	width: 100%;
	height: 800px;
	padding: 5%;
	border-radius:15px;
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

.noticbox {
	background-color: white;
	border-bottom: 1px solid #222;
	text-align: center;
	height: 30px;
	padding-top: 0.25%;
	margin: auto;
}

.notice1 {
	text-align: left;
}

.create {
	margin-top: 1%;
	text-align: right;
}
.cbtn{
	text-decoration-line: none;
	color:white;
	font-size:28px;
}
</style>
</head>
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
                    class="mx-1 d-none d-lg-inline btn navbar-btn">Login</button>
                    <button id="signup" type="button"
                    class="mx-1 d-none d-lg-inline btn navbar-btn">Signup</button>
            </div>
          </nav>
<!-------------------------------------------------------Main------------------------------------------------->


<br>
      <h1 class="main" style="color:white; text-align: center;">회원관리</h1>
      <div style="border-bottom: 3px solid white; width: 72%; margin: auto; padding-top: 1%; margin-bottom: 2%;"></div>
      
  	 <div style="padding-left:15%;">
            	<a class="cbtn" href="/manager/goAdmin">일반회원</a>
            	<a class="cbtn">|</a>
            	<a class="cbtn" style="font-weight:bold; color:#760c0c;">사장회원</a>
     </div>


	<div id="Box">

		<div id="Noticecontainer">

			<table id="maintable">
				<thead>
					<tr>
						<th style="text-align: center;">번호</th>
						<th style="text-align: center;">회원ID</th>
						<th style="text-align: center;">닉네임</th>
						<th style="text-align: center;">가입일</th>
						<th style="text-align: center;">관리</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach var="i" items="${list}">
						<tr>
							<th style="text-align: center;">${i.mem_seq}</th>
							<th style="text-align: center;">${i.mem_id }
							<input id="idid" type="hidden" value="${i.mem_id }">
							</th>
							<th style="text-align: center;">${i.mem_name }</th>
							<th style="text-align: center;"><fmt:formatDate pattern="yy-MM-dd" value="${i.mem_joindate}" /></th>
							<th style="text-align: center;">
								<button class="btn btn-primary delete" type="button">탈퇴</button>
								<button type="button" class="btn btn-primary leveldown">강등</button>
							</th>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

<!-------------------------------------------------------Footer------------------------------------------------->
    <div class="col-12 d-none d-md-block">
  <div id="foot" align=center>
     <div class="container">
        <div class="row">
          <div class="col-4" id="footicon"><a href="#" style="color:white; padding-top:20px; text-decoration-line: none;">CAFEIN</a></div>
           <div class="col-2 footer2"><a href="#">회사소개</a></div>
           <div class="col-2 footer2"><a href="#">이용약관</a></div>
           <div class="col-2 footer2"><a href="#">1:1 문의</a></div>
           <div class="col-2 footer2"><a href="#">©2022 CAFEIN</a></div>
        </div>
     </div>
  </div>
</div>
<script>
 var lang_kor = {
		"decimal" : "",
		"emptyTable" : "데이터가 없습니다.",
		"info" : "_START_ - _END_ (총 _TOTAL_ 명)",
		"infoEmpty" : "0명",
		"infoFiltered" : "(전체 _MAX_ 명 중 검색결과)",
		"infoPostFix" : "",
		"thousands" : ",",
		"lengthMenu" : "_MENU_ 개씩 보기",
		"loadingRecords" : "로딩중...",
		"processing" : "처리중...",
		"search" : "검색 : ",
		"zeroRecords" : "검색된 데이터가 없습니다.",
		"paginate" : {
			"first" : "첫 페이지",
			"last" : "마지막 페이지",
			"next" : "다음",
			"previous" : "이전" },
		"aria" : {
			"sortAscending" : " :  오름차순 정렬",
			"sortDescending" : " :  내림차순 정렬"
		}
	};

$(document).ready(function() {
		$("#maintable").DataTable({
			language : lang_kor
		});
	});
	
$(".delete").on("click",function(){
	
	var id = $("#modalID").val();
	
	$.ajax({
		url:"/manager/delete",
		data:{id : id},
		dateType:"json"
	}).done(function(resp){
		alert("삭제되었습니다.")
		location.reload()
	})
})

$(".leveldown").on("click",function(){
	
	var id = $("#idid").val();
	
	$.ajax({
		url:"/manager/leveldown",
		data:{id : id},
		dateType:"json"
	}).done(function(resp){
		alert("강등되었습니다.")
		location.reload()
	})
})
</script>
</body>
</html>