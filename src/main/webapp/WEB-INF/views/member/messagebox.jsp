<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<!-- Bootstrap ver 5.1  -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
 <!--  sweet alert  -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
 
<title>쪽지함</title>
</head>
<style>
/*HEADer부분----------------------------*/
 
/*---------------쪽지붑 */
.panel-faq-container {
  margin-bottom: -16px;
  text-align:center;
}
.panel-faq-title {
  color: black;
  cursor: pointer;
}
.panel-faq-answer {
  height: 0;
  overflow: hidden;
  /* 변화가 시작되는 쪽에다가 transition 적용해준다 0 -> 300px 
  왜? 닫기 버튼을 누를 때 변화가 티남 */
  transition: all 1s;
}
#btn-all-close,#answer {
  margin-bottom: 10px;
  background-color: #760c0c;
  border: none;
  color: #fff;
  cursor: pointer;
  padding: 10px 25px;
  float: right;
}
#btn-all-close{
	margin-right:5%;
}
#answer{
	margin-right:1%;
}
#answer:hover{
	opacity: 0.8;
}
#btn-all-close:hover {
  background-color: #760c0c;
  color: #fff;
  opacity: 0.5;
  transition: all 0.35s;
}
.active {
  display: block;
  /* 높이를 정해줘야지만 transition이 적용됨 */
  border-top 1px solid black;
  height: 300px;
}
table{
    border-top-left-radius: 10px;
    border-radius: 10px;
    border: 1px solid black;
    background-color: white;
}
td, th,tr {
    border-radius: 10px;
border-left: 1px solid black;
}
tr {
border-bottom : 1px solid black;
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
    input[type=text] {
    width: 300px;
    height: 40px;
    border-radius: 5px;
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
  

/*-----------------------------------------Footer부분----------------------------*/

</style>

<body>
 <jsp:include page="header.jsp"/> 
          
    <div class="container" style="height:700px;">
        <div class="row">

            <div class="col-12">
                <h3 style="text-align: center;font-size:45px; padding-top: 50px;color: white;">쪽지함</h3>
            </div>
        <div class="col-12" >
            <button class="btn btn-primary" id="btn-all-close">모든쪽지닫기</button>
            <button type="button" id="answer" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">쪽지보내기</button>
        </div>
        <div class="row">
          <div class="col-12">
        <table class="table table-hover">
          
          <thead class="thead-light text-center">
            <tr>
            <th scope="col">번호</th>
              <th>제목</th>
              <th>보낸사람</th>
              <th>날짜</th>
              
            </tr>
          </thead>
          <c:forEach var="mdto" items="${mdto}">
          <c:set var="i" value="${i+1}" />
          <tbody class="text-center">
          	
            <tr>
              <td>${i} </td>
              <td class="text-left" width="50%">
                <div class="panel-faq-container">
                  <p class="panel-faq-title">${mdto.title}</p>
                  <div class="panel-faq-answer">
                  <h5>↓ 내용 ↓</h5>
                  <br>
                   ${mdto.contents}
                   <br>
                   <br>
                   <br>
               
                  </div>
                </div>
              </td>
              <td>${mdto.sender}<br>
              	  (${mdto.sender_email })</td>
              <td><fmt:formatDate pattern="yy-MM-dd HH:mm" value="${mdto.write_date}" /></td>
              
			  
            </tr>
             <input type="hidden" name="seq"  value="${mdto.message_seq }">
          
          </tbody>
        </c:forEach>
        </table>
      </div>
    </div>
      </div>
   
   <!--------------------------쪽지모달창------------------------->
 <form action="/cafein/message2" id="send">
 <div class="modal fade send" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
  <div class="modal-dialog">
    <div class="modal-content" style="background-color:#222;">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="color: white;">Message</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
        <div  class="modal-body" id = "box">
          <div id = "top">
            
  
              제목:&nbsp; <br>  
            <input type = "text" name="title" id = "title" placeholder = "제목을 입력해주세요" required/><br><br>
              받는사람:<br>
              <input type = "text" name="receiver_email" id = "mem_email" placeholder = "상대방 이메일을 입력해주세요" required/>
             <br>
             <div id="checkEmail"></div>  
             <br>
              <textarea placeholder = "내용을 입력해주세요" name="contents" class="contents" required /></textarea><br>
          	  <input type="hidden" name="sender_email" value="${memdto.mem_email} ">
          	  <input type="hidden" name="sender" value="${memdto.mem_name} ">
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
   </div>
   
    <!-------------------------------------------------------Footer------------------------------------------------->
 
</body>



<script>
//------------------------이메일 확인----------------------
var email = false;

$("#mem_email").on("input",function(){	
	email = false;
	var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
	var mem_email = $("#mem_email").val();
	if(!regEmail.test($("#mem_email").val())) {
		$("#checkEmail").text("올바른 이메일이 아닙니다.").css("color","red");
		eamil = false;
	}else {
		$("#checkEmail").text("").css("color","black");
		// ajax 기본형태 $.ajax 
		$.ajax({
			url : "/member/memberemailCheck",
			async: false,
			type : "post",
			data : {"email":mem_email},
			success : function(result){
				if(result > 0){
					$("#checkEmail").text("존재하는 email").css("color","white");
					console.log("존재하는email");
					email = true;
				}else{
					alert("이메일이 존재하지 않습니다.");
					console.log("존재하지 않는email");
					email = false;
				}
			},
			// 에러가 발생했을때
			error : function(err){
				alert("인터넷 연결이 불안정하거나, 서버와 통신이 불가능합니다.");
			}
		})
	}
});

$("#send").submit(function(){
	if(!email || $("#title").val().trim()=='' || $(".contents").val().trim()=='' ){
		alert("입력란을 다시 확인해주세요");
		return false;
	}else{
		 Swal.fire({
   		  position: 'top-end',
   		  icon: 'success',
   		  title: '쪽지가 전달되었습니다.',
   		  showConfirmButton: false,
   		  timer: 7000
   		})
	}
})

  //------------------모달 초기화-----------------------------  
     
        // ______________모달 종료 시 입력값 초기화
      $('.modal').on('hidden.bs.modal', function(e) { // 모달 클래스에 .modal이 있는지 꼭 확인
          console.log('modal close'); // 'hidden.bs.modal' => 부트스트랩 모달 이벤트, 모달이 사라지면 작동함

          // 초기화 로직 : 아래에 초기화할 대상을 모두 적으면 됨.
          
          // 전체 텍스트 인풋 초기화
        $("#title").val("")
       	$(".contents").val("")
    	$("#mem_email").val("")
    	$("#checkEmail").text("")
          // 셀렉트 초기화 - 선택된 거 초기화
          $('.select2').val(0).trigger('change.select2');

          console.log('모달 초기화', inputValue)
      });

//------------------------------------------------------------
    window.onload = () => {
  // panel-faq-container
  const panelFaqContainer = document.querySelectorAll(".panel-faq-container"); // NodeList 객체
  
  // panel-faq-answer
  let panelFaqAnswer = document.querySelectorAll(".panel-faq-answer");

  // btn-all-close
  const btnAllClose = document.querySelector("#btn-all-close");
  
  // 반복문 순회하면서 해당 FAQ제목 클릭시 콜백 처리
  for( let i=0; i < panelFaqContainer.length; i++ ) {
    panelFaqContainer[i].addEventListener('click', function() { // 클릭시 처리할 일
      // FAQ 제목 클릭시 -> 본문이 보이게끔 -> active 클래스 추가
      panelFaqAnswer[i].classList.toggle('active');
    });
  };
  
  btnAllClose.addEventListener('click', function() {
    // 버튼 클릭시 처리할 일  
    for(let i=0; i < panelFaqAnswer.length; i++) {
        panelFaqAnswer[i].classList.remove('active');
    };
  });
}

  
</script>
</html>