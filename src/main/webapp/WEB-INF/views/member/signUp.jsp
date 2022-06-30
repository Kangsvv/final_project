<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>	Cafe IN - 회원가입</title>
<link rel="stylesheet" type='text/css' href='/resources/css/member.css'>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
</style>
</head>
<body style="background-color: black;">
	<div class='signUp wrap'>
		<h1 style="color: white;">회원가입</h1>
		<form action="loginAction" class='loginFrom max-W360'>
			<ul style="padding: 0px 0px 20px 0px;">
				<li>
					<input class="form_main" type="text" id='memId' name='memId' placeholder="아이디" maxlength="12" required="required">
					<span id='checkId'></span>
				</li>
				<li>
					<input class="form_main" type="password" id='memPw' name='memPw' placeholder="패스워드" maxlength="12" autocomplete="off" required>
					<span id='checkPw'></span>
				</li>
				<li>
					<input class="form_main" type="password" id='memPwCheck' name='memPwCheck' placeholder="패스워드 확인" maxlength="12" autocomplete="off" required>
					<span id='checkPwC'></span>
				</li>
				<li>
					<input class="form_main" type="text" id='memName' name='memName' placeholder="닉네임" maxlength="12" autocomplete="off" required>
					<span id='checkEmail'></span>
				</li>
				<li>
					<input class="form_main" type="email" id='memEmail' name='memEmail' placeholder="이메일" maxlength="12" autocomplete="off" required>
					<span id='checkEmail'></span>
				</li>
				<li>
					<select class='form_main phoneSet' id='phone_left'>
						<option>010</option>
						<option>011</option>
						<option>016</option>
						<option>017</option>
						<option>018</option>
						<option>019</option>
						<option>031</option>
						<option>070</option>
					</select>-
					<input class='form_main phoneSet' id='phone_center' maxlength="4" required oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">-
					<input class='form_main phoneSet' id='phone_right' maxlength="4" required="required" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
					<span id='checkPhone'></span>
				</li>
			</ul>
			<input type='hidden' id='memPhone' name='memPhone' maxlength="12">
			<button class='btn_main bt_1'>회원가입</button>
		</form>
		
		<br>
		<div>
			<a class='c-white'>이미 가입되어있다면?</a><a class='non_text' href='member/login'> 로그인</a><br><br>
		</div>
	</div>	
	
	<script>
		var id = false;
		var pw = false;
		var pwChek = false;
		var name = false;
		var email = false;
		var phone1 = false;
		var phone2 = false;
		var phone3 = false;
		
		$("#memId").on("input",function() {
			id = false;
			var regExp = /^[a-z0-9]{4,12}$/;
			var memId = $("#memId").val();
			if(!regExp.test($("#memId").val())){
				$("#checkId").text("아이디는 소문자 + 숫자 , 4~12글자 내외로 작성해주세요.").css("color","red");
				id = false;
			}else{
				// 임시 허용
				$("#checkId").text("사용 가능한 아이디입니다.").css("color","white");
				id = true;
				
				//= ajax 기본형태 $.ajax 
				 $.ajax({
					url : "memberIdCheck", 
					type : "post",
					data : {"id":memId},
					success : function(result){
						if(result > 0){
							$("#checkId").text("이미 사용중인 아이디입니다.").css("color","red");
							id = false;
						}else{
							$("#checkId").text("사용 가능한 아이디입니다.").css("color","white");
							id = true;
						}
					},
					// 에러가 발생했을때
					error : function(err){
						alert("인터넷 연결이 불안정하거나, 서버와 통신이 불가능합니다.");
					}
				})
			}
			
		});
	</script>	
</body>
</html>