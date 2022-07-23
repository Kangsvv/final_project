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
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.12.1/datatables.min.css"/>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.12.1/datatables.min.js"></script>

<title>이벤트 및 공지사항</title>

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
  height: 900px;
  margin-left:15%;
  margin-right:15%;
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

.nbtn {
	color: black;
	font-size: 30px;
	text-decoration:none;
}

.cbtn {
	background-color: #760c0c;
	border: none;
	border-radius: 5px;
	color: white;
	font-size: 90%;
	width: 80px;
	height: 35px;
	margin-top: 1%;
	padding: 0.5%;
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

.constyle{
    color: black;
    text-decoration: none;
}

.constyle:hover{
	color: #760c0c;
	font-weight : bold;
}

#example_length,#example_info{
display: none;
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
</style>

</head>
<body>

<!--  ------------------------------------------------------------header-----------------------------------------------------  -->

     <jsp:include page="header.jsp"/>
<c:if test="${loginID != null}" >
<%@ include file="/WEB-INF/views/letter.jsp"%>
</c:if>
      
<!-- ------------------------------------------------------------header----------------------------------------------------- -->


<br>
      <h1 class="main" style="color:white; text-align: center;">Event</h1>
      <div style="border-bottom: 3px solid white; width: 70%; margin: auto; padding-top: 1%; margin-bottom: 2%;"></div>

	<div id="Box">
	
      <div id="Noticecontainer" style="overflow: auto;">

			<div class="row col-12 noticbtn" style="margin-bottom: 15px;">
				<div class="col-12" style="padding: 0%; text-align: left; margin-left: 3%;">
					<a href="/notice/event_selectAll" class="nbtn">Event</a>
					<a href="javascript:void(0)" class="nbtn" style="cursor: default; color: black; padding-left: 10px; padding-right: 10px;"> | </a>
					<a href="/notice/notic_selectAll" class="nbtn" style="color: #760c0c; font-weight: bold">Notice</a>
				</div>
			</div>

<table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th style="text-align: center;">글번호</th>
                <th style="text-align: center;">제목</th>
                <th style="text-align: center;">작성자</th>
                <th style="text-align: center;">작성일</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="i" items="${nlist}">
             <tr>
                <th>${i.seq}</th>
                <th><a href="/notice/selectBySeq?seq=${i.seq }" style="text-decoration: none; color: black;" >${i.title}</a></th>
                <th>${i.writer}</th>
                <th><fmt:formatDate pattern="yy년 MM월 dd일 HH:mm" value="${i.write_date}"/></th>
            </tr>
            
            </c:forEach>
        </tbody>
    </table>

			<c:if test="${loginID == 'admin'}">
				<input type="button" class="cbtn" value="작성하기">
			</c:if>
			
		</div>
</div>

<!-------------------------------------------------------Footer------------------------------------------------->
 
 <%@ include file="footer.jsp"%>

<!-------------------------------------------------------Footer------------------------------------------------->

<script>

$(".cbtn").click(function() {
	location.href = "/notice/event_Write";
})


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
		$('#example').DataTable({
			language : lang_kor
		});
	});

</script>

</body>
