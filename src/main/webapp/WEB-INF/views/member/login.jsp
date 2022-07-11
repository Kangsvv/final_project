<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>	Cafe IN - 로그인</title>
<link rel="stylesheet" type='text/css' href='/resources/css/member.css'>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
							<input class="form_main" type="text" id='mem_id' name='mem_id' placeholder="아이디" maxlength="12" required="required">
						</li>
						<li>
							<input class="form_main" type="password" id='mem_pw' name='mem_pw' placeholder="패스워드" maxlength="12" autocomplete="off" required>
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
		<%=request.getRealPath("/") %>
	</div>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
		$(document).on("click",".kakaoLoginDiv",function(){
			if(confirm("카카오 로그인시 사장 회원등록이 불가능합니다. 유저 회원으로 가입하시겠습니까?")){
				// 카카오 로그인 처리
				window.Kakao.init('8432d40d3d8cc65b701b5c4c48252a64');
	            window.Kakao.Auth.login({
	                scope: 'profile_nickname, account_email', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
	                success: function(response) {
	                    window.Kakao.API.request({ // 사용자 정보 가져오기 
	                        url: '/v2/user/me',
	                        success: (res) => {
	                            const kakao_account = res.kakao_account;
	                            
	                            $.ajax({
	                            	url : "kakaoLogin",
	                            	data : {"email":kakao_account.email, "name":kakao_account.profile.nickname},
	                            	type : "post",
	                            	success : function(result){
	                            		if(result > 0 ){
	                            			$(location).attr('href','/');
	                            		}else{
	                            			alert("알 수 없는 오류가 발생하였씁니다.");
	                            		}
	                            	},error : function(err){
	                            		alert("통신이 불안정하여 서버 연결이 불가능합니다.");
	                            	}
	                            });
	                        }
	                    });
	                    // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
	                },
	                fail: function(error) {
	                    console.log(error);
	                }
	            });
		}
		})
	</script>
</body>
</html>