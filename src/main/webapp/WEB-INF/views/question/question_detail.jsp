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

/* ------------------ 댓글 ---------------------- */
	.replyList{
		
	}

 .replyWriteBox{
         	padding:20px;
        	border-top: 2px solid white;
			border-bottom: 2px solid white;
        }
        
 .replyModifyWriteBox{
         	padding:20px;
        	
        }
       
         #replyContentsBox{ 
            display: flex;
  			justify-content : center;
  			width:1250px;
         	height:100%; 
         	float:left;
         } 
        #replyWriteBtnBox{
       		float: left;
			width:100px;
        	height:100px;
        }
        #replyWriteBtn{
        	background-color:#760c0c;
        	color:white;
        	border-radius:10px;
        	width:100%;
        	height:100%;
        }
        
        .replyModifyBtnBox{
       		float: left;
        	height:100px;
        }
        
        .replyModifyBtn{
        	background-color:#760c0c;
        	color:white;
        	border-radius:10px;
        	width:100%;
        	height:100%;
        	
        }
        
        .replywriterName{
            margin: 4px 4px;
            width: 98%;
            height: 15%;
            background-color: rgb(84, 84, 84);
            color: white;
            padding-left: 10px;
        }

	.replyModifyContentsBox{
	width:1250px;
         	
	}



@media ( max-width :1900px) {
	#replyContentsBox {
	 width:1200px;
	
	
	}
}

@media ( max-width :1850px) {
	#replyContentsBox {
	 width:1050px;
	
	
	}
}

@media ( max-width :1616px) {
	#replyContentsBox {
	 width:800px;
	
	
	}
}

@media ( max-width :1350px) {
	#replyContentsBox {
	 width:600px;
	
	
	}
}

@media ( max-width :1100px) {
	#replyContentsBox {
	 width:400px;
	 
	
	}
}

@media ( max-width :805px) {
	#replyContentsBox {
	 width:210px;
	 
	
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
      <input type="text" class="main" style="color:white; text-align: center; margin: auto;" value="${dto.title }" disabled>
    </div>
      <div style="border-bottom: 3px solid white; width: 50%; margin: auto; padding-top: 1%; margin-bottom: 2%;"></div>

   <div id="Box">

      <div id="Noticecontainer">

         <div class="row col-12 conbox">
          
          	<div class="col-6 con_head bluck2">작성자 : ${dto.writer }</div>
            <div class="col-12 con_head bluck1">${dto.writer }</div>
            <div class="col-6 con_head bluck2">
            작성일 : 
               <fmt:formatDate pattern="yy-MM-dd" value="${dto.write_date}" />
            </div>

         </div>

          <div> 
         <textarea class="row col-12 eventbox"
            style="word-break: break-all; white-space: pre-line; padding: 2%; overflow: auto;" disabled
            maxlength="1301">${dto.contents }</textarea>

         
         <div class="col-12 create">
         <c:if test="${loginID eq dto.writer || loginID == 'admin' }">
            <input type="button" class="upbtn" value="수정"> 
            <input type="button" class="delbtn" value="삭제">   
         </c:if>
         
        	 <input type="button" class="backbtn" value="뒤로">  
         </div>
        
          
      </div>


   
   </div>

</div>
</div>

 <div class="row" id="reply_box">

<div class="col-12">
		  <c:if test="${loginID == 'admin' || loginID == dto.writer}">       
           <div class="col-9 replyWriteBox" style="margin:auto;">
               <div class="col-12" style="font-size : 15px; height: 100px; overflow: hidden;" >
                    
                  <div class="col-10" id="replyContentsBox">
                     <textarea name="replyContents" id="replyContents"  
                     style="width: 100%;  height: 100px;"
                     rows="30" placeholder="내용" maxlength="251"></textarea> 
                  </div>
                  
                  <div class="col-2" id="replyWriteBtnBox" style="text-align: center;">
                     <input type="button" id="replyWriteBtn" value="작성" style="width:80px; margin: auto;">
                  </div>
                 
               </div>
            </div>
             </c:if>
   </div>


      <div class="col-12" style="margin-bottom:100px;">
      
          <div class="col-12 replyList">
            <c:forEach var="i" items="${rlist }">
               <div class="col-9" style="margin: auto;  border-top: 1px solid #CCC; border-bottom: 1px solid #CCC;">
                  <div class="readcontainer">
                     <div style="color: white; text-align: right; margin-bottom: 30px;">


								<span>작성자: ${i.writer } / </span> 
								<span>작성일:<fmt:formatDate
										pattern="yy-MM-dd" value="${i.write_date}" /></span>

							</div>

                     <div class="readContnets" style="color: white; word-break: break-all; white-space: pre-line;  margin-bottom: 10px;">${i.contents }</div>



                     <div class="replyModifyBox" style="display:none;">
                        <div class="replyModifyWriteBox">
                           <div class="col-12 sizebox" style="font-size: 15px; height: 100px;">
                           
                              <div class="col-7" id="replyModifyBox" style="margin:auto;">
                                 <textarea name="replyContents" id="replyModifyContents"
                                    style="width:100%; height: 100px;" rows="30"
                                    placeholder="수정할 내용을 입력" maxlength="251"></textarea>
                                 
                              </div>

                           </div>
                        </div>
                     </div>


                     
                     <input type="hidden" class="reply_seq" value="${i.reply_seq}">
                        
                       <c:if test="${loginID == i.writer || loginID == 'admin'}"> 
                        <div  class="col-12 replyreadbox"  style="text-align: right; margin-bottom:20px">
                       
                           <button class="replyUpdate">수정</button>
                           <button class="replyDelete">삭제</button>
                        
                       </div>
                        </c:if>
                        
            
                     </div>
                  </div>
                  </c:forEach>

          </div>   
       
  
    </div>   
    </div>
      

   <!-------------------------------------------------------Footer------------------------------------------------->
    
    <%@ include file="footer.jsp"%>
   
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
	if ($(".main").val() == "" || $(".eventbox").val() ==""){
		alert("수정할 제목/내용을 입력해주세요");
		return false;
	}else{
	
	
	
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
  }
})

   

   
// 댓글   
 $(function(){
            $("#replyWriteBtn").on("click", function(){
                
                let article = $("#replyContents").val();

                if(article == ""){

                	alert('내용을 입력해주세요')
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
                      
                       });
                }
             })          
     });


$(".replyDelete").on("click", function() {
   
   let result = confirm("댓글을 삭제하시겠습니까?");
   
   let reply_seq = $(this).parent().siblings(".reply_seq").val();

   console.log(reply_seq);
   if(result){
      $.ajax({
       url:"/question/reply_delete",
       data:{reply_seq:reply_seq, question_seq:${dto.question_seq}}
       
     }).done(function(resp){
      location.reload();  
     });
   }
})
      
      
  $(".replyUpdate").on("click", function() {
     
   
    $(this).css("display", "none");
    
          let Rupdate = $("<button>");
         	 Rupdate.text("완료");
             Rupdate.attr("class","Rupdate");
             Rupdate.css("margin-right", "5px");
         
             let Rcancel = $("<button>");
             Rcancel.text("취소");
             Rcancel.attr("class", "Rcancel");
             
             $(this).parent().prepend(Rcancel);
             $(this).parent().prepend(Rupdate);
       
       
       $(".Rcancel").on("click", function(){
          location.reload();
       })
       
       

      let Rcontents = $(this).parent().siblings(".replyModifyBox");
      Rcontents.css("display","block");
       
  });
                    

$(".replyreadbox").on("click", ".Rupdate", function() {
   
   let reply_seq = $(this).parent().siblings(".reply_seq").val();
   let contents = $(this).parent().siblings().children().children().children().children("#replyModifyContents").val();
   
   $.ajax({
      url : "/question/reply_update",
      data: {reply_seq:reply_seq, question_seq:${dto.question_seq}, contents:contents }
         
   }).done(function(resp){
      location.reload();
   })
})

$(".eventbox").keyup(function(e) {
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

$("#replyContents").keyup(function(e) {
    let content = $(this).val();
    
    // 글자수 계산
    if (content.length == 0 || content == ''){
       $(".textCount").text("0자");
    } else {
       $(".textCount").text(content.length + "자");
       
    }
    
    // 글자수 제한
         if($(this).val().length > 250) {
          $(this).val($(this).val().substring(0, 250));
          alert("250자까지만 입력가능합니다")
         }
    
    
 });




</script>


 <style>
       .replyUpdate{
         background-color: #760c0c;
   color: white;
   
       
       }
       .replyDelete{
         background-color: #760c0c;
   color: white;
   
       }
       .Rupdate{
         background-color: #760c0c;
         color: white;
   
       }
       .Rcancel{
         background-color: #760c0c;
         color: white;
       }
       
       </style>
</html>