<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<title>Insert title here</title>
<!-- jstl  -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!-----------------------J쿼리-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bootstrap ver 5.1  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<!--icons 링크-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!--  sweet alert  -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>
<style>
   /*------------------------ 헤더 부분 스타일 ------------------------ */


   #login,#signup{
         color:white;
      }
      #login:hover,#signup:hover{
         color:black;
      }
/* container */


 body{
    background-color: #222;
  }
    nav {
   background-color: #222;
   color: white;

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


/*---------------------기능 구현 후 Hover 예정------------------*/

/*---------------------중간 입력란부분--------------------------*/
#contents{
  margin: auto;
  color: white;
  border-radius: 5px;
}
#text{
  color: white;
  border-bottom: 1px solid white;
  text-align: center;
  font-size: 50px;
  margin-top: 100px;
  margin: auto;
}

#file{
  border-radius: 5px;
  color: white;
  text-align: center;

  margin: auto;
}
#file img{
border-radius: 5px;
 width: 600px;
  height: 600px;
}
#my-button{
  width: 150px;
  height: 50px;
  margin-top: 40%;
}
#table{
  margin-top: 3%;
  color: white;
  margin: auto;
  min-width: 450px;
  margin-left: 16%;
}
input[type=text] {
	width: 300px;
	height: 40px;
	border-radius: 5px;
}
.asd{
  min-width: 76px;
}
table td{
   height: 50px;
}
#letter{
    margin-top: 0px;
    background-color: rgb(78, 78, 163);
    color: white;
}
#letter:hover{
  background-color: white;
    color: rgb(78, 78, 163);
    border-radius: 5px;
}

#like{
  margin-top: 0px;
    color: white;
    background-color: rgb(78, 78, 163);
    border-radius: 5px;
}
#like:focus,#like:active{
/*   margin-top: 0px; */
/*     color: white; */
/*     background-color: rgb(78, 78, 163); */
/*     border-radius: 5px; */
    outline: none !important;
    box-shadow: none;
}
#like:hover{
    background-color: white;
    color: rgb(78, 78, 163);
    border-radius: 5px;
}

/*-------------------------------------모달--------------------------------------*/
.modal-content{
  background-color: rgb(86, 81, 81);

}
#box {
      text-align: center;
      margin :auto;
      height: 550px;
      width: 400px;
      background: black;
      border-radius: 20px;
      -webkit-box-shadow: 8px 8px 9px 0px rgba(50, 50, 50, 0.75);
      -moz-box-shadow:    8px 8px 9px 0px rgba(50, 50, 50, 0.75);
      box-shadow:         8px 8px 9px 0px rgba(50, 50, 50, 0.75);
      vertical-align: middle;
      color:white;
      margin-top: 5%;
      margin-bottom: 5%;
    }
    
    h1 {
      text-align:center;
      color: white;
      padding-top: 7px;

    }
    
    #top {
      
      
      height: 50px;
      background: black;
      border-radius: 20px 20px 0px 0px;
      padding-bottom:5px;
      
    }
    
    #form {
      
      text-align:center;
      
    }
    
    textarea {
      
      height:300px;
      width: 300px;
      border-radius: 20px;
      min-height: 300px;
      max-height: 300px;
      text-align:center;
      
    }
    
   text {
     width: 100%;
    }
    
    #button {
      
      width: 150px;
      height: 35px;
      background-color: #69FA72;
      border-radius: 5px;
      font-family: 'Henny Penny', cursive;
      color: white;
      font-size: 20px;
      margin-top: 10px;
      
    }

/*-------------------------------------------------------------*/
/*----------------------캐러셀----------------------------------*/
#caru img{
    width: 100%;
    height: 400px;
}
/* footer 부분 */
#foot{
    border-top: 1px solid gray;
    background-color: rgba(32, 31, 31, 0.532);
    
}
/* rgba(32, 31, 31, 0.532) */

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
</style>
<body>
     <!------------------------------------------------------------header----------------------------------------------------->
    
     <div class="container">
      <nav class="navbar navbar-expand-lg" style="margin-bottom:50px;">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">CAFEIN</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
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
          
<!---------------------------------------------------------------------------------------------------------------------->
<div class="row" id="contents">
  <div class="col-12" id="text">${dto.name}</div>
</div>
<div class="row" style="margin-top: 5%;margin-bottom: 5%;">
  <div class="col-12 col-sm-12" id="file">
  <img src="/resources/cafein/${fdto.sys_name }">
  </div>
  <div class="col-12 col-sm-12" id="table">
<table>
 
  <tr>
    <td class="asd">주소 : </td>
    <td>${dto.address1}	&nbsp; ${dto.address2 }</td>
  </tr>
  <tr>
    <td class="asd">휴무일 : </td>
    <td>${dto.day}</td>
  </tr>
  <tr>
    <td class="asd">오픈시간 : </td>
    <td>${dto.open }</td>
  </tr>
  <tr>
    <td class="asd">마감시간 : </td>
    <td>${dto.finish }</td>
  </tr>
  <tr>
    <td class="asd">주차장 : </td>
    <td>
     ${dto.parking }
    </td>
  </tr>
  <tr>
    <td  class="asd">작성자 : </td>
    <td>
     ${dto.writer }
    </td>
  </tr>
  <tr>
    <td colspan="2" id="like_count" >좋아요:${count}</td>
   
   
  </tr>
        </table>
        </div>
     <!-------------------- 작성자와 로그인아이디 다를시 좋아요/쪽지버튼생성 ---------------------------->
    	<c:if test="${loginID !=null && loginID != dto.id && loginID == likeDTO.id}">	
        <div class="col-12" style="text-align: right;" > 
          <button type="button" id="letter" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
          <i class="fa-regular fa-envelope"></i></button>
          <button type="button" class="btn " style="background-color: white; color:rgb(78, 78, 163)"; id="like"><i class="fa-solid fa-heart"></i></button>
          </div>
		</c:if>
  <!--------------------로그인아이디가 그전 좋아요 눌렀을시 활성화버튼 ---------------------------->		
	<c:if test="${loginID != null && loginID != dto.id && loginID != likeDTO.id }">	
        <div class="col-12" style="text-align: right;" > 
        <button type="button" id="letter" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa-regular fa-envelope"></i></button>
          <button type="button" class="btn " style="background-color: rgb(78, 78, 163); color:white;" id="like"><i class="fa-regular fa-heart  buttonIcon"></i></button>         										
          </div>
		</c:if>	
<!---------------------- 비로그인시 버튼 없음 ------------------------------------->	
	<c:if test="${loginID == null} ">
	  <div class="col-12" style="text-align: right;" > 
          <button type="button" id="letter" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
          <i class="fa-regular fa-envelope"></i></button>
          <button type="button" class="btn " style="background-color: white; color:rgb(78, 78, 163)"; id="like"><i class="fa-solid fa-heart"></i></button>
          </div>
	</c:if>
		
<!-------------------- 작성자 로그인시 수정/삭제버튼 생성 ---------------------------->
	<c:if test="${loginID == dto.id }">
		<div class="col-12 text-center"  style="text-align: right;margin-top:5%;margin-top: 140px;">
		<button type="button" class="btn btn-primary" id="update">수정</button>&nbsp;
		<button type="button" class="btn btn-danger" id="delete"><i class="glyphicon glyphicon-trash"></i> 삭제</button>
		</div>
	</c:if>
      </div>
 
  



</div> 

<!--     -----------------------------------------------------Footer----------------------------------------------- -->
 
    <div class="col-12 d-none d-md-block">
  <div id="foot" align=center>
     <div class="container">
        <div class="row">
          <div class="col-4" id="footicon"> </div>
           <div class="col-2 footer2">회사소개</div>
           <div class="col-2 footer2">이용약관</div>
           <div class="col-2 footer2">1:1 문의</div>
           <div class="col-2 footer2">©2022 CAFEIN</div>
        </div>
     </div>
  </div>
</div>
</div>
 <!--------------------------쪽지모달창------------------------->
 <form action="/cafein/message" id="send">
 <div class="modal fade send" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="color: white;">Message</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
        <div  class="modal-body" id = "box">
          <div id = "top">
            
  
              제목:&nbsp; <br>  
            <input type = "text" name="title" id = "title" placeholder = "제목을 입력해주세요" required/><br><br>
              받는사람:&nbsp;  ${dto.writer}&nbsp;(${dto.email}) 
             <br>  
             <br>
              <textarea placeholder = "내용을 입력해주세요" name="contents" required /></textarea><br>
            <input type="hidden" name="receiver" value="${dto.writer}">
            <input type="hidden" name="receiver_email" value="${dto.email}">
            <input type="hidden" name="seq" value="${dto.seq} ">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        <button  class="btn btn-success" id="message">전송</button> 
           </form>
          </div>
          
        </div>
      </div>
<!--       <div class="modal-footer" style="background-color: rgb(86, 81, 81);;"> -->
<!--         <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button> -->
<!--         <button type="button" class="btn btn-success" id="message">전송</button>  -->
<!--       </div> -->
    </div>
  </div>

      <script>
      //--------------------쪽지-------------------------
      $("#message").on("click",function(){
    	  Swal.fire({
    		  position: 'top-end',
    		  icon: 'success',
    		  title: '쪽지가 전달되었습니다.',
    		  showConfirmButton: false,
    		  timer: 7000
    		})
      })
      //--------------------파일업로드시 이미지 미리보기------------------------------
       function onClickUpload() {
            let myInput = document.getElementById("my-input");
            myInput.click();
        }
     //------------------좋아요알림(토스트 스크립트)-----------------------------  
  
	//---------------------------------------------------------------------
        $("#like").click("on",function() {
        	   if(${loginID == null}){
        		   Swal.fire({
        	             icon: 'warning',
        	             title: '확인해주세요.',
        	             text: '로그인시 가능합니다.',
        	         });
                   return false;
                }else{
   			$.ajax({
   				url:"/cafein/like",
   				data:{seq:${dto.seq}},
   				dataType:"json"
   				
   			}).done(function(resp){
   			if($("#like").html() == '<i class="fa-regular fa-heart  buttonIcon"></i>') {
 		$.ajax({
      				url:"/cafein/cafein_like_count",
      				data:{seq:${dto.seq}},
      				dataType:"json"
      			}).done(function(resp){
      				$("#like_count").html('좋아요:&nbsp;&nbsp;' + resp);
      			})
   			 	$("#like").html('<i class="fa-solid fa-heart"></i>');
	            $("#like").css("background-color","white");
	            $("#like").css("color","rgb(78, 78, 163)");
   			} else if($("#like").html() =='<i class="fa-solid fa-heart"></i>'){
            	$.ajax({
       				url:"/cafein/like-cancel",
       				data:{seq:${dto.seq}},
       				dataType:"json"
       				
       			}).done(function(resp){
       			 $.ajax({
       				url:"/cafein/cafein_like_count",
       				data:{seq:${dto.seq}},
       				dataType:"json"
       			}).done(function(resp){
       				$("#like_count").html('좋아요:&nbsp;&nbsp;' + resp);
       			})
               $("#like").html('<i class="fa-regular fa-heart  buttonIcon"></i>');
               $("#like").css("background-color","rgb(78, 78, 163)");
               $("#like").css("color","white");
       			})
       }
 			
   			
   			})
           }

        	   
        });

   		
     
  
        	
            
      
//-------------------------------삭제버튼--------------------------------
		
		$("#delete").on("click", function() {
		
		    Swal.fire({
                title: '삭제',
                text: "정말 삭제하시겠습니까?",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: '확인',
                cancelButtonText: '취소'
            }).then((result) => {
                if (result.isConfirmed) {
                	location.href = "/cafein/delete?seq=${dto.seq}";
                    Swal.fire(
                        '삭제되었습니다',
                        '삭제완료',
                        'success'
                    )
                }
            })
			
		
		})
		$("#update").on("click",function(){
			location.href="/cafein/UpdateSeq?cafein_seq=${dto.seq}";
		})
		

      </script>    
</body>
</html>