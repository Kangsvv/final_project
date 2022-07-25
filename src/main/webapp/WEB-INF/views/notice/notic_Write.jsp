<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap ver 5.1  -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap ver 5.1  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.12.1/datatables.min.css"/>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.12.1/datatables.min.js"></script>
</head>
<style>
/*board UI출력부분----------------------------*/
.tz-gallery {
	padding: 40px;
	padding-top: 0px;
}

/* Override bootstrap column paddings */
.tz-gallery .row>div {
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

button {
	border: none;
}

#row4 .btn {
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	height: 45px;
	line-height: 30px;
	font-weight: bold;
	background-color: #760c0c;
	color: #FFFFFF;
	border-radius: 12px;
	width: 120px;
	border: none;
	margin-left: 10px;
}
</style>
<body>
<!--  ------------------------------------------------------------header-----------------------------------------------------  -->

     <jsp:include page="header.jsp"/>
<%-- <c:if test="${loginID != null}" > --%>
<%-- <%@ include file="/WEB-INF/views/letter.jsp"%> --%>
<%-- </c:if> --%>
      
<!-------------------------------------------------------Main------------------------------------------------->
<div class="container" id="main">
   <div class="col-12" style="margin-bottom:40px;">
      <a style="color: white; font-size: 40px;">Notic</a>
    </div>
    <form action="notic_insert">
			<div id="notice" align=center style="color: #ededed; width: 100%; height: 80%;">
            <div id="row1" style="font-size : 25px; width: 100%; padding-bottom: 1%; border-bottom: 2px solid gray;" align=left>
            <input type=text name=title id=title placeholder="제목 (최대 33자)" style="width:97%;" oninput='handleOnInput(this, 33)'>
            </div>
            <div id="row3" style="font-size : 15px; width: 100%; height: 600px; margin-top: 2%; border-bottom: 2px solid gray; overflow: hidden;" align=left>
            <textarea name="contents" id="contents" style="width: 98%;" rows="30" placeholder="내용 (최대 1300자)" oninput='handleOnInput(this, 1333)'></textarea>
            </div>
            <div id="row4" style="width: 100%; margin-top: 25px; margin-bottom: 25px;" align=right>
                <p class="textCount"><span>0</span> / 1300</p>
                <a href="/notice/notic"><button class="btn" type="button">뒤로 </button></a>
                <button type="submit" class="btn" style="margin-left:10px;">작성</button>
            </div>
        </div>
    </form>
</div>
 <!-------------------------------------------------------Footer------------------------------------------------->
 
 <%@ include file="footer.jsp"%>

 <!-------------------------------------------------------Footer------------------------------------------------->

<script>

$(".cbtn").click(function() {
	location.href = "/notice/notic";
})

// 글 입력시
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

$(function(){
    $(".btn").on("click", function(){
       
       if($("#title").val().trim() == "") {
           alert('제목을 두 글자 이상 입력하세요')
           return false
  
       }else if($("#contents").val().trim() == "") {
          alert('내용을 입력하세요')
          return false
          
       }else{
          return true
       }
       
    })
    })
	function handleOnInput(el, maxlength) {
			  if(el.value.length > maxlength)  {
			    el.value = el.value.substr(0, maxlength);
			  }
			}
			
</script>
          
</body>
</html>