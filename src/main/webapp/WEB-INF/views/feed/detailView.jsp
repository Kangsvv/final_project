<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카페리뷰 디테일 뷰</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   <script src="https://kit.fontawesome.com/247b201f79.js" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>
<style>
   *{box-sizing: border-box;}
      body {
            background-color: #222;
            position: relative;
            font-family: var(--body-font);
            color: white;
        }
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
/*-----------------------------------------Footer부분----------------------------*/
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

/* main */
      #container{
         padding-top: 30%;
      }
      #carouselExampleControls{
         margin : auto;
         width:65%;
      }
      .carousel-item img{
         height: 500px;
         margin: auto;
         margin-top:20px;
         margin-bottom:20px;
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
      .carousel-item img {
          height: 350px;
          object-fit: cover;
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
       #jjimcnt
           padding: 0px;
           max-width: 56px;
           min-width: 56px;
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
        .contentsBox{
           padding:20px;
           font-size: 16px;
            word-wrap: break-word;      /* IE 5.5-7 */
/*            margin-top:20px;  */
        }
        #maincon{
           margin-left: 12%;
           margin-right: 12%;
        }
        
        #mainfoot{
           border-top: 2px solid white;
           border-bottom: 2px solid white;
           padding:10px;
        }
        #conMenu>div{
           margin-left:5%;
        }
        .marginSet{
           padding-left:20px;
           padding-right:20px;
        }
        #bookmark{
           text-align:right;
           padding-right:30px;
        }
        
        .editBtn, .deleteBtn, .backBtn ,.fa-bookmark, .likecount{
           cursor:pointer;
        }
        /* -------------댓글 관련 스타일 -----------------*/
        .replyWriteBox{
            padding:20px;
           border-top: 2px solid white;
         border-bottom: 2px solid white;
        }
        #replyContents{
           border-radius:10px;
           max-height: 100px;
           min-height: 100px;
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
            padding-bottom : 10px;
        }

         .replyright{
/*           float: left;  */
             width: 100%; 
/*           height: 100%; */
             text-align: right;
             padding-bottom:5px;
         }
         .replymodify{
            margin-right:5px;
         }
         #editBox{
            background-color:#222;
            color:white;
            border:none;
            margin: 4px 4px;
            width: 95%;
            word-wrap: break-word;      /* IE 5.5-7 */
         white-space: pre-wrap;      /* current browsers */
         }
         .replyWrite_date{
            font-size:14px;
         }
        /*-----------------------모달 창 스타일 -----------------------------*/
      
   </style>

</head>
<body>
   <!-- ------------- 댓글쪽 인피니티 스크롤 ---------------- -->
   <script>
   let page = 2;  //페이징과 같은 방식이라고 생각하면 된다.

 
    $(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
        if($(window).scrollTop() >= $(document).height() - $(window).height()){
         getreplyList(page);
              page++;   
        } 
      });

    
    function getreplyList(pape){
        $.ajax({
             url:'/feed/replyList',
             type:'POST',
            data : {page : page, cafefeed_seq: '${dto.cafefeed_seq}'},
            dataType : 'json'
          }).done(function(resp){

          for(let i = 0; i < resp.length; i++){
         let container = $("<div>");
         container.attr("class","row replycontainer");

           let left = $("<div>");
           left.attr("class","col-12 replyleft");
           
           
           let right = $("<div>");
           right.attr("class","col-12 replyright");
         
           let writeInfo = $("<div>");
           writeInfo.attr("class", "row writeInfo");
           
           let writerName = $("<div>");
           writerName.attr("class", "replyWriter");
           writerName.attr("class", "col-6");
           writerName.text(resp[i].id);
           
           let hidden = $("<input>");
           hidden.attr("type", "hidden");
           hidden.attr("class", "replySeq");
           hidden.val(resp[i].seq);
           
           
           let write_date = $("<div>");
           
           var date = new Date(resp[i].write_date);
           var year = date.getFullYear();
           
           var month = new String(date.getMonth(resp[i].write_date) + 1);
           month = month >= 10 ? month : '0' + month;     // month 두자리로 저장
           
           var day = new String(date.getDate(resp[i].write_date));
           day = day >= 10 ? day : '0' + day;   //day 두자리로 저장
           
           var hour = new String(date.getHours(resp[i].write_date));
           hour = hour >= 10 ? hour : '0' + hour;   //hour 두자리로 저장
           
           var min = new String(date.getMinutes(resp[i].write_date));
           min = min >= 10 ? min : '0' + min;   //hour 두자리로 저장
           
           var korFormat = year + "-" + month + "-" + day + " " + hour + ":" + min;
           
           write_date.attr("class", "replyWrite_date");
           write_date.attr("style", "text-align:right");
           write_date.css("font-size", "14px");
           write_date.attr("class", "col-6");
           write_date.text(korFormat);

           let contents = $("<div>");
           contents.attr("class","col-12 replycontents2");
           let contentsEdit = $("<div>");
           contentsEdit.attr("class","editBox");
           
           contentsEdit.text(resp[i].contents);

           
           let modifyBtn = $("<button>");
           modifyBtn.attr("type","button");
           modifyBtn.attr("class","replymodify btn btn-secondary");
           modifyBtn.text("수정");
           
           let delBtn = $("<button>");
           delBtn.attr("type","button");
           delBtn.attr("class","replydel btn btn-secondary");
           delBtn.text("삭제");
           
           
           
           contents.append(contentsEdit);
           
           writeInfo.append(writerName);
           writeInfo.append(write_date);
           writeInfo.append(hidden);
           
           left.append(writeInfo);
           left.append(contents);
           

//            right.append(modifyBtn);
//            right.append(delBtn);

           container.append(left);
           container.append(right);

           $(".replyBox").append(container);

           
           container.hide();
           container.fadeIn(800);
//            $("#replyContents").val("");
//            $("#replyContents").focus();


			if(resp[i].id=='${loginID}' ){
			
				right.append(modifyBtn);
		        right.append(delBtn);
		        
			}

            delBtn.on("click", function(){
               let del = confirm("댓글을 삭제하시겠습니까?");
               let seq = $(this).parent().siblings().children().children(".replySeq").val();
               console.log(seq);
               if(del){
                  $.ajax({
                     url:"/feed/replyDel",
                     data: {seq:seq,cafefeed_seq:${dto.cafefeed_seq}}
                  }).done(function(resp){
                     location.reload();
                  });
               }
            });
            modifyBtn.on("click", function(){
               
               $(this).css("display","none");
               contentsEdit.attr("contenteditable", "true");
               contentsEdit.focus();
               let seq = $(this).parent().siblings().children().children(".replySeq").val();
                    
               delBtn.css("display","none");
                    let btn3 =$("<button>");
                    btn3.text("수정완료");
                    btn3.attr("class","btn btn-primary modifyFinish");
                    btn3.attr("type","button");
                    btn3.css("margin-right","5px");
                    let btn4 =$("<button>");
                    btn4.text("취소");
                    btn4.attr("class","btn btn-danger modifyCancel");
                    btn4.attr("type","button");
               
                    $(this).parent().append(btn3);
                    $(this).parent().append(btn4);
               
               console.log(seq);
               let mFinish = $(this).siblings(".modifyFinish");
               let mCancel = $(this).siblings(".modifyCancel");
               mFinish.on("click",function(){
                  $.ajax({
                     url:"/feed/replyModify",
                     data: {seq:seq,cafefeed_seq:${dto.cafefeed_seq},contents:contentsEdit.text()}
                  }).done(function(resp){
                     location.reload();
                  });
               })
               mCancel.on("click",function(){
                  mFinish.css("display","none");
                  mCancel.css("display","none");
                  
                  modifyBtn.css("display","inline");
                  delBtn.css("display","inline");
                  contentsEdit.attr("contenteditable", "false");
               })
            });
           }
          
       });
       
    }
   </script>

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
   <!-- --------------------contentsHeader--------------------------- -->
   
   
   <div id="maincon">
      <div class="row border-bottom border-2" id="conMenu" style="padding-bottom: 5px;">
                   <div class="col-12 col-md-12 ellipsis" style="padding-left:10px; font-size:28px;" id="title">${dto.title}</div>
                    <div class="row">
                        <div class="col-12 ellipsis id" id="writerId" style="padding-left:8px;">${dto.id }
                           <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal"   style="background-color:#222; border:none">
                              <i class="fa-solid fa-user-group" style="color:white;"></i>
                           </button>
                        </div>
                        <div class="col-12 col-md-6" style="padding-left:8px;"><i class="fa-solid fa-eye"></i>&nbsp;&nbsp;${dto.view_count }</div>
                        <div class="col-6 col-md-3"><i class="fa-solid fa-calendar"></i>&nbsp;
                           <fmt:formatDate pattern="yy-MM-dd HH:mm:ss" value="${dto.write_date}" />
                        </div>
                        <c:if test="${loginID == dto.id }">
                           <div class="col-6 col-md-3 mdbtns" style="text-align:center;"><i class="fa-solid fa-xl fa-rotate-left backBtn"></i>&nbsp;&nbsp;&nbsp;<i class="fa-solid fa-xl fa-pen-to-square editBtn"></i>&nbsp;&nbsp;&nbsp;<i class="fa-regular fa-xl fa-trash-can deleteBtn" style="color:white;"></i></div>
                  		</c:if>
                     </div>
                </div>


      <div class="row">
      <!-- Main Contents Container -->
         <div class="col-12 contents-container">
         <div class="row">
         <div class="col-12 col-md-7">
         <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img src="/resources/feed/${fdto.sys_name }" class="d-block">
                </div>
                <div class="carousel-item">
                  <img src="/resources/img/cafe2.jpg" class="d-block">
                </div>
                <div class="carousel-item">
                  <img src="/resources/img/cafe3.jpg" class="d-block" >
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
            
            <div class="col-12 col-md-5 contentsBox">
               ${dto.contents }
            </div>
            </div>
            <div id="mainfoot">
               <div class="row">
                  <div class="col-6">
<!--                      <span class="marginSet"> -->
<%--                         <i class="fa-regular fa-xl fa-heart likecount"></i>&nbsp;&nbsp;${dto.like_count } --%>
<!--                      </span> -->
                     <span style="padding-left:10px;">
                        <i class="fa-regular fa-xl fa-comment"></i>&nbsp;&nbsp;${rCnt }
                     </span>
                  </div>
                  <div class="col-6" id="bookmark">
                     <span>
                        <i class="fa-regular fa-xl fa-bookmark"></i>
                     </span>
                  </div>
               </div>


            </div>
            <div class="replyWriteBox">
               <div id="row" style="font-size : 15px; width: 100%; height: 100%; overflow: hidden;" align=left>
                  <div id="replyContentsBox">
                     <textarea name="replyContents" id="replyContents" style="width: 100%;" rows="30" placeholder="내용"></textarea>
                  </div>
                  <div id="replyWriteBtnBox">
                     <input type="button" id="replyWriteBtn" value="작성">
                  </div>
               </div>
            </div>
             <div class="replyBox">
             <c:forEach var="i" items="${rdto }">
                      <div class="row replycontainer">
                          <div class="col-12 replyleft">
                          <div class="row writeInfo">
                             <input type="hidden" value="${i.seq}" class="replySeq">
                              <div class="col-6 replyWriter">${i.id}</div>
                             <div class="col-6 replyWrite_date" style="text-align:right;">
                             <fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${i.write_date}" />
                             </div>
                          </div>
                             <div class="col-12 replycontents2"><div class="editBox">${i.contents}</div></div>
                          </div>
                          <div class="col-12 replyright">
                          
                          <c:if test="${loginID == i.id }">
                          	 <button type="button" class="replybmodify2 btn btn-secondary">수정</button>
                             <button type="button" class="replydelBtn2 btn btn-secondary">삭제</button>
                          </c:if>
<!--                              <button type="button" class="replybmodify2 btn btn-secondary">수정</button> -->
<!--                              <button type="button" class="replydelBtn2 btn btn-secondary">삭제</button> -->
                          </div>
                      </div>
               </c:forEach>
               <script>
                      $(".replydelBtn2").on("click", function(){
                      let del = confirm("댓글을 삭제하시겠습니까?");
                      let seq = $(this).parent().siblings().children().children(".replySeq").val();
                      console.log(seq);
                      if(del){
                         $.ajax({
                            url:"/feed/replyDel",
                            data: {seq:seq,cafefeed_seq:${dto.cafefeed_seq}},
                            async:false
                         }).done(function(resp){
                            location.reload();
                         });
                      }
                   });
                      $(".replybmodify2").on("click", function(){
                         $(this).css("display","none");
                         
                         let editDiv = $(this).parent().siblings().children().children(".editBox");
                         editDiv.attr("contenteditable", "true");
                         editDiv.focus();
                     
                         $(this).siblings(".replydelBtn2").css("display","none");
                          let btn1 =$("<button>");
                          btn1.text("수정완료");
                          btn1.attr("class","btn btn-primary modifyFinish");
                          btn1.attr("type","button");
                          btn1.css("margin-right","5px");
                          let btn2 =$("<button>");
                          btn2.text("취소");
                          btn2.attr("class","btn btn-danger modifyCancel");
                          btn2.attr("type","button");
                          
                          $(this).parent().append(btn1);
                          $(this).parent().append(btn2);
                         
                     let seq = $(this).parent().siblings().children().children(".replySeq").val();
                     console.log(seq);
                     
                     let mFinish = $(this).siblings(".modifyFinish");
                     let mCancel = $(this).siblings(".modifyCancel");
                     
                     mFinish.on("click", function(){
                        $.ajax({
                           url:"/feed/replyModify",
                           data: {seq:seq,cafefeed_seq:${dto.cafefeed_seq},contents:editDiv.text()}
                        }).done(function(resp){
                           location.reload();
                        });
                     })
                     mCancel.on("click",function(){
                        mFinish.css("display","none");
                        mCancel.css("display","none");
                        
                        $(this).siblings(".replybmodify2").css("display","inline");
                        $(this).siblings(".replydelBtn2").css("display","inline");
                        
						$.ajax({
                        	url:"/feed/replyInfo",
                        	data: {seq:seq}
                        }).done(function(resp){
                    		
                    	})
                        
                        editDiv.attr("contenteditable", "false");
                        
                     })
                  })
             </script>
            </div>
         </div>
      </div>
      <br>
   </div>
   <script>
      $("#replyWriteBtn").on("click", function(){
        let article = $("#replyContents").val();
        if(${loginID == null}){
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
                title: '로그인을 하셔야 댓글 입력이 가능합니다.'
            })
            return false;
        }
        
        else if(article==""){
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
             url:"/feed/replyWrite",
             data:{
                cafefeed_seq:${dto.cafefeed_seq},
                contents:article
             },
             async:false
          }).done(function(resp){
             location.reload();
         })
         }
      });
      
   </script>
   <script>
//         $(function(){
//             $("#replyWriteBtn").on("click", function(){
                
//                 let article = $("#replyContents").val();

//                 if(article==""){
//                    const Toast = Swal.mixin({
//                        toast: true,
//                        position: 'center-center',
//                        showConfirmButton: false,
//                        timer: 3000,
//                        timerProgressBar: true,
//                        didOpen: (toast) => {
//                            toast.addEventListener('mouseenter', Swal.stopTimer)
//                            toast.addEventListener('mouseleave', Swal.resumeTimer)
//                        }
//                    })
                    
//                    Toast.fire({
//                        icon: 'error',
//                        title: '댓글 내용을 입력해주세요.'
//                    })
//                    $("#replyContents").focus();
//                    return false;
//                 }else{
//                    $.ajax({
//                       url:"/feed/replyWrite",
//                       data:{
//                          cafefeed_seq:${dto.cafefeed_seq},
//                          contents:article
//                       },
//                       async:false
//                    }).done(function(resp){
//                       console.log(resp);
//                       $(".replycontainer").remove();
//                       for(let i = 0; i < resp.length; i++){
//                          let container = $("<div>");
//                             container.attr("class","row replycontainer");

//                             let left = $("<div>");
//                             left.attr("class","col-12 replyleft");
                            
                            
//                             let right = $("<div>");
//                             right.attr("class","col-12 replyright");
                        
//                             let writerName = $("<div>");
//                             writerName.attr("id", "replyWriter");
//                             writerName.attr("class", "col-12");
//                             writerName.text(resp[i].id);

//                             let contents = $("<div>");
//                             contents.attr("class","col-12 replycontents2");
//                             let contentsEdit = $("<input>");
//                             contentsEdit.attr("type","text");
//                             contentsEdit.attr("id","editBox");
//                             contentsEdit.attr("class","editable");
//                             contentsEdit.attr("readonly",true);
                            
//                             contentsEdit.val(resp[i].contents);

                            
//                             let modifyBtn = $("<button>");
//                             modifyBtn.attr("type","button");
//                             modifyBtn.attr("class","replymodify btn btn-secondary");
//                             modifyBtn.text("수정");
                            
//                             let delBtn = $("<button>");
//                             delBtn.attr("type","button");
//                             delBtn.attr("class","replydel btn btn-secondary");
//                             delBtn.text("삭제");
                            
                            
//                             contents.append(contentsEdit);
                            
//                             left.append(writerName);
//                             left.append(contents);
                            

//                             right.append(modifyBtn);
//                             right.append(delBtn);

//                             container.append(left);
//                             container.append(right);

//                             $(".replyBox").prepend(container);

//                             $("#replyContents").val("");
//                             $("#replyContents").focus();
                            
//                             $("body").on("click", ".replydel", function(){
//                                location.href = "/feed/deleteReply?seq="+resp[i].seq+"&cafefeed_seq="+${dto.cafefeed_seq};
//                                $(this).closest(".replycontainer").remove();
//                             });
//                       }
//                         });
                       

//                    }
//                 })
                // ajax 로 받아 오는게 좋을것 같다.
//                 $("body").on("click", ".replydel", function(){
//                    location.href = "/feed/deleteReply?seq="+resp[i].seq+"&cafefeed_seq="+${dto.cafefeed_seq};
//                     $(this).closest(".replycontainer").remove();
//                 });
//                 $("body").on("click", ".replydmodify", function(){
//                   location.href = "/feed/modifyReply?seq="+resp[i].seq+"&cafefeed_seq="+${dto.cafefeed_seq};
//                    $(this).closest(".replycontainer").remove();
//                });

//         });
        
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
        
        //-------------------------댓글 수정 글자수제한--------------------------------
        $(".editBox").keyup(function(e) {
            let content = $(this).text();
            
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
        
        $(".deleteBtn").on("click", function(){
            var delConfirm = confirm('게시글을 삭제하시겠습니까?');
            if (delConfirm) {
              location.href = "/feed/deleteFeed?cafefeed_seq=${dto.cafefeed_seq}";
              alert('삭제되었습니다.');
            }else {
              alert('삭제가 취소되었습니다.');
            }
        })
        $(".editBtn").on("click", function(){
        	location.href = "/feed/goUpdate?cafefeed_seq=${dto.cafefeed_seq}";
        })
        $(".backBtn").on("click", function(){
        	location.href = "/feed/goFeed?page=1";
        })
        
    </script>
    
      <!-------------------------------------------------------Footer------------------------------------------------->
    <div class="col-12">
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

</body>
</html>