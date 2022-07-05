<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>	Cafe IN - 로그인</title>
<link rel="stylesheet" type='text/css' href='/resources/css/member.css'>
<style type="text/css">
</style>
</head>
<body style="background-color: #222; margin: 0px;">
	<div class='loginDiv wrap'>
		<div style="background-color: white; max-width: 450px; height: 100vmin; margin: 0px auto;">
			<div class='center_row'>
				<h1 style="margin: 0px;">로그인</h1>
				<form action="loginAction" class='loginFrom max-W360'>
					<ul style="padding: 0px 0px 20px 0px;">
						<li>
							<input class="form_main" type="text" id='memId' name='memId' placeholder="아이디" maxlength="12" required="required">
						</li>
						<li>
							<input class="form_main" type="password" id='memPw' name='memPw' placeholder="패스워드" maxlength="12" autocomplete="off" required>
						</li>
					</ul>
					<button class='btn_main bt_1'>로그인</button>
					<div class='kakaoLoginDiv'>
						<img src="/resources/member/kakaoLogin.png">
					</div>
				</form>
				
				<br>
				<div>
					<a class=''>처음 오셨나요?</a><a class='non_text' href='/member/signUp'> 회원가입</a><br><br>
					<a class=''>잃어 버렸다면? </a><a class='non_text' href='/member/loginSearch'> ID/PW찾기</a>
				</div>
			</div>
		</div>
	</div>		
</body>
</html>