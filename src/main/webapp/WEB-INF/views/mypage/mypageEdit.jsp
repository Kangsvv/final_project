<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
      rel="stylesheet" />
<title>   Cafe IN - My Page</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>

<style>
      * {
        position: relative;
      }

      .wrap {
        max-width: 1080px;
        margin: 0px auto;
        text-align: center;
        min-height:800px;
      }

      li {
        display: list-item;
        text-align: -webkit-match-parent;
        flaot: left;
      }

      ul {
        list-style: none;
      }

      .c-white {
        color: white;
      }

      .MypageDiv {
        width: 100%;
        height: 100%;
        padding: 75px 0px 130px 0px;
      }

      .max-W360 {
        max-width: 360px;
        margin: 0px auto;
        padding: 0px 0px 0px 20px;
      }

      .form_main {
        width: 95%;
        height: 50px;
        margin: 3px;
        border: 1px solid #dadada;
        font-size: 15px;
        padding: 0px 15px;
        border-radius: 3px;
        outline: 0;
        box-sizing: border-box;
      }

      .btn_main {
        padding: 0px;
        margin: 3px;
        width: 100%;
        margin-bottom: 10px;
        margin-top: 10px;
      }

      .bt_1 {
        display: block;
        height: 53px;
        line-height: 53px;
        background: #760c0c;
        border-radius: 8px;
        font-size: 17px;
        font-weight: 700;
        color: white;
        border: 0px;
        outline: 0;
      }

      .non_text {
        text-decoration: none;
        color: #999;
      }

      /* 프로필 사진 */
      #box {
        margin-top: 5%;
      }
      .box {
        width: 80px;
        height: 80px;
        border-radius: 70%;
        overflow: hidden;
        float: left;
      }
      .profile {
        width: 100%;
        height: 100%;
        object-fit: cover;
      }
      .igmcan {
        float: left;
        width: 50%;
      }
	
      #imgmodify {
        margin-top: 3%;
        width: 250px;
        height: 60px;
        background-color: #760c0c;
        color: white;
        border-radius: 5px;
      }
      
      #btns{
      width:500px;
      margin:auto;
      }
      
      ul{
      width:500px;
      margin:auto;
      }
      
      .imgbtncan{
      width:500px;
      margin:auto;
      }
      
      #box{
      width:500px;
      margin:auto;
      }
      
      .profile{
      left-margin:10px;
      }
      
      
    </style>
  </head>
  
  <!-- header -->
  <%@ include file="header.jsp"%>
  <!-- header -->
  
  <body style="background-color: #222">
  <form action="/mypage/update" method="post" enctype="multipart/form-data">
  
    <div class="mypage wrap">
      <h1 style="color: white">My Page</h1>

      
        <div id="box">
          <div class="box" class="imgcan" style="background: #bdbdbd">
          	<div class="profile">
             	<img class="profile" src="/resources/mypage/${dto.mem_img }" />
            </div>
          </div>
          <div class="imgbtncan">
            <input type="file" name="file" class="img_btn" id="imgmodify" placeholder="프로필사진 변경하기">
          </div>
        </div>
        <br />
        <br />
        <ul style="padding: 0px 0px 20px 0px">
          <li>
            <span style="color: white">아이디(Cannot be changed)</span>
            <input
              class="form_main"
              type="text"
              id="memId"
              value="${dto.mem_id}"
              name="memId"
              maxlength="12"
              readonly
            />
          </li>
          <li>
            <span style="color: white">이메일(Cannot be changed)</span>
            <input
              class="form_main"
              type="email"
              id="memEmail"
              value="${dto.mem_email}"
              name="memEmail"
              maxlength="12"
              autocomplete="off"
              readonly
            />
          </li>
          <li>
            <span style="color: white">닉네임</span>
            <input
              class="form_main"
              type="text"
              id="memName"
              value="${dto.mem_name}"
              name="memName"
              autocomplete="off"
            />
          </li>
          
          <li>
            <span style="color: white">전화번호</span>
            <input
              class="form_main"
              id="phone_center"
              value="${dto.mem_phone}"
              name="memPhone"
              maxlength="12"
              oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
              placeholder="-없이 숫자만 적어주세요."
              
            />
          </li>
          <!-- 자기소개 하실건가여? -->
          
        </ul>
        <div id="btns">
          <button type="submit" class="btn_main bt_1" id="modify">수정</button>
          <button type="button" class="btn_main bt_1" id="back" href="/mypage/myapge">뒤로</button>
          <button type="button" class="btn_main bt_1" id="memberout" href="/mypage/memberout"> 탈퇴 </button>
        </div>
      
    </div>
    </form>
    
    <!-- footer -->
    <%@ include file="footer.jsp"%>
	
    <script>
      

      //여기서 탈퇴하는 기능, 탈퇴하면 모든 본인 게시물 삭제?

      $('#modify').on('click', function () {
    	  if(!$("#imgmodify").val()){
              alert("사진을 넣어주세요.");
              return false;
          }
        
    	  if(confirm("정말 등록하시겠습니까 ?") == true){        
    		  alert("등록되었습니다");    
    		 }
    	      else{        
    		  	return false;    
    		  	}
      });  
      
      $('#back').on('click', function () {
        location.href = '/mypage/mypage';
      });
      
      $('#memberout').on('click',function(){
    	  if(confirm("정말 탈퇴하시겠습니까 ? ") == true){        
    		  location.href = '/mypage/memberout';
    		}else{        
    		  	return false;    
    		  	}
    	  
      })
      
      
    </script>
  </body>
</html>