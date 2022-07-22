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
<!-- Bootstrap ver 5.1  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.12.1/datatables.min.css"/>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.12.1/datatables.min.js"></script>

<title>Event Detail</title>

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

#Noticecontainer::-webkit-scrollbar {
    width: 8px;  /* 스크롤바의 너비 */
}

#Noticecontainer::-webkit-scrollbar-thumb {
    height: 15%; /* 스크롤바의 길이 */
    background: none; /* 스크롤바의 색상 */
}

#Noticecontainer::-webkit-scrollbar-track {
    background: none;  /*스크롤바 뒷 배경 색상*/
}

/*타이틀 부분 사이즈에 따른 반응형 처리 적용*/

@media (max-width:1200px) {
	.bluck2{
	display: none;
	}
}

@media (min-width:1201px) {
	.bluck1{
	display: none;
	}
}

</style>

</head>
<body>

<!--  ------------------------------------------------------------header-----------------------------------------------------  -->

 <%@ include file="header.jsp"%>
      
<!-- ------------------------------------------------------------Main----------------------------------------------------- -->

<br>
 	<div class="row col-12 titlebox">
      <input type="text" id="main" class="main" style="color:white; text-align: center; margin: auto;" value="${dto.title }" disabled maxlength="33">
    </div>
      <div style="border-bottom: 3px solid white; width: 50%; margin: auto; padding-top: 1%; margin-bottom: 2%;"></div>

	<div id="Box">

		<div id="Noticecontainer" style="overflow: auto;">

			<div class="row col-12 conbox">
				<div class="col-3 con_head bluck2">${dto.writer }</div>
				<div class="col-12 con_head bluck1">${dto.writer }</div>
				<div class="col-6 con_head bluck2">
					<fmt:formatDate pattern="yy-MM-dd" value="${dto.write_date}" />
				</div>
				<div class="col-3 con_head bluck2">
					조회수 : ${dto.viewcount }
				</div>
			</div>

			<div> 
			<textarea id="eventbox" class="row col-12 eventbox"
				style="word-break: break-all; white-space: pre-line; padding: 2%; overflow: auto;" disabled maxlength="1300">${dto.contents } </textarea>

				<c:choose>
					<c:when test="${loginID eq 'admin' }">
						<div class="col-12 create">
							<input type="button" class="upbtn" value="수정"> 
							<input type="button" class="delbtn" value="삭제"> 
							<input type="button" class="backbtn" value="뒤로">
						</div>
					</c:when>

					<c:otherwise>
						<div class="col-12 create">
							<input type="button" class="backbtn" value="뒤로">
						</div>
					</c:otherwise>

				</c:choose>

			</div>
	</div>
	</div>
<!-------------------------------------------------------Footer------------------------------------------------->
 
 <%@ include file="footer.jsp"%>

<!-------------------------------------------------------Footer------------------------------------------------->


<script>

	$(".delbtn").click(function() {
		let result = confirm("정말 삭제하시겠습니까?");
		if (result) {
			alert("삭제가 완료되었습니다.");
			location.href = "/notice/event_delete?seq=${dto.seq}";
		}
	})

	$(".backbtn").on("click", function() {
		location.href = "/notice/event_selectAll";
	})

	$(".upbtn").on("click", function() {
		$("#main").removeAttr("disabled");
		$("#eventbox").removeAttr("disabled");

		$(".upbtn").css("display", "none"); // 수정 버튼 감추기
		$(".delbtn").css("display", "none"); // 삭제 버튼 감추기

		let ok = $("<button>");//수정완료 버튼
		ok.text("완료");
		ok.attr("id", "modifyBtn");
		ok.attr("type", "button");

		let cancel = $("<button>");//취소 버튼
		cancel.text("취소");

		cancel.attr("id", "cancelBtn");
		cancel.attr("type", "button");

		$(".create").prepend(cancel); //취소 버튼 추가
		$(".create").prepend(ok); // 수정완료 버튼 추가

		//취소 버튼 동작
		$("#cancelBtn").on("click", function() {
			location.reload();
		})
		// 수정완료 버튼 
		$("#modifyBtn").on("click", function() {
			if ($("#main").val() == "" || $("#eventbox").val() == "") {
				alert("수정할 제목/내용을 입력해주세요");
				return false;
				
			}else if($("#title").val().trim() == "") {
		           alert('제목을 두 글자 이상 입력하세요')
		           return false;
		           
			}else if($("#eventbox").val().trim() == "") {
		           alert('제목을 두 글자 이상 입력하세요')
		           return false; 
		           
			}else{
		        	   

				let seq = "${dto.seq}"; // 게시글 고유 넘버
				let title = $(".main").val();
				let contents = $(".eventbox").val(); // 게시글 내용

				$.ajax({
					url : "/notice/event_modify",
					type : "post",
					data : {
						seq : seq,
						title : title,
						contents : contents
					},
				}).done(function(resp) {
					if (resp == "true") {
						location.reload();//새로 고침   
					}
				})

			}
		});
	})

	
	
</script>
</body>
</html>
