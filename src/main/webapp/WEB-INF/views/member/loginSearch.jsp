<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>	Cafe IN - 아이디/패스워드 찾기</title>
<link rel="stylesheet" type='text/css' href='/resources/css/member.css'>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
</style>
</head>
<body style="background-color: #222; margin: 0px; height:100%;">
	<div class='idSearch wrap' style="height: 100% 	">
		<div style="background-color: white; max-width: 450px; height: 100%; margin: 0px auto;">
			<div class='center_row'>
				<h1 class='id_result' style="margin: 0px;">아이디 찾기</h1>
				<h1 class='pw_result' style="margin: 0px; display: none;">패스워드 찾기</h1>
				<input type="hidden" id='idPwCheck' value=0>
				<input type="hidden" id='seqCheck' value=0>
				<form class='idSearchFrom max-W360'>
					<ul class='password_ul_none' style="padding: 0px 0px 20px 0px;">
						<li><input style="display: none" class="form_main" type="text" id='mem_id'
							name='mem_id' placeholder="아이디" maxlength="12" required="required">
							<span id='checkId'></span></li>
						<li><input class="form_main" style="width: 70%" type="email"
							id='mem_email' name='mem_email' placeholder="이메일" maxlength="25"
							autocomplete="off" required>
							<button id='emailcheck' type="button" class='bt_1'
								style="width: 25%; display: inline-block;">인증</button> <span
							id='checkEmail'></span></li>
						<li id='emailLi' style="display: none;"><input
							class="form_main" style="width: 70%" id='emailNum' name='emailNum'
							placeholder="인증번호" maxlength="6" autocomplete="off"
							oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
							required>
							<button id='emailNumcheck' type="button" class='bt_1'
								style="width: 25%; display: inline-block;">확인</button></li>
					</ul>
					<ul style="padding: 0px 0px 20px 0px; display: none;" class='password_ul'>
						<li><input class="form_main" type="password" id='mem_pw'
							name='mem_pw' placeholder="패스워드" maxlength="14" autocomplete="off"
							required> <span id='checkPw'></span></li>
						<li><input class="form_main" type="password" id='mem_pwCheck'
							name='mem_pwCheck' placeholder="패스워드 확인" maxlength="14"
							autocomplete="off" required> <span id='checkPwC'></span></li>
					</ul>
					<button class='btn_main bt_1 submit'>찾기</button>
				</form>
				
				<br>
					
				<div>
					<a>정보가 기억난다면? </a><a class='non_text'
							href='/member/login'> 로그인</a><br><br>
					<div id='pwdBtn'>
						<a class=''>패스워드를 찾고싶다면?</a><a class='non_text'> pw찾기</a>
					</div>
					
					<div style="display: none" id='idBtn'>
						<a class=''>아이디를 찾고싶다면?</a><a class='non_text'> id찾기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script>
		var email = false;
		var pw = false;
		var pwChek = false;
		
		$("#mem_email").on("input",function(){
			email = false;
			var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
			
			if(!regEmail.test($("#mem_email").val())) {
				$("#checkEmail").text("올바른 이메일이 아닙니다.").css("color","red");
				eamil = false;
			}else {
				$("#checkEmail").text("").css("color","black");
				email= true;
			}
		});
		
		$("#emailcheck").on("click",function(){
			var emailset = $("#mem_email").val()
			if(email){
				$.ajax({
					url : "emailCheck",
					type : "post",
					data : {"email":emailset},
					success : function(result){
						if(result > 0){
							alert("인증번호가 전송되었습니다. 3분 초과시 다시 인증 요청해야합니다.");
							$("#mem_email").attr("readonly",true);
							$("#emailLi").show();
						}else{
							alert("인증 과정중 에러가 발생하였습니다.");
						}
						
					},
					error : function(err){
						alert("인터넷 연결이 불안정하거나, 서버와 통신이 불가능합니다.");
					}
				
				});
			}else{
				alert("이메일을 확인해주세요.");
			}
		});
	
		$("#emailNumcheck").on("click",function(){
			emailCheck = false;
			var emailset = $("#mem_email").val();
			var num = $("#emailNum").val();
			var id = $("#mem_id").val();
			var check = $("#idPwCheck").val();
			$("#emailNum").val('');
			if(check == 1) {
				if(id.length == 0){
					alert("아이디를 입력하셔야합니다");
					return false;
				}
			}
			
			if(num == null || num == ''){
				alert("인증번호를 입력해주세요.");
				return false;
			}
			$.ajax({
				url : "idSearch",
				type : "post",
				data : {"num":num,"email":emailset,"id":id},
				success : function(result){
					console.log(result);
					if(result.mem_seq == -1){
						alert("인증번호를 확인해주세요. 3분이 초과된경우 다시 전송 후 인증해주세요.");
						return false;
					}
					
					if(check == 0){
						if(result.mem_id != undefined){
							$(".idSearchFrom").hide();
							$(".id_result").after("<h2>회원님의 아이디는 "+result.mem_id+" 입니다.</h2>");
							$(".id_search_result").show();
						}else {
							$(".idSearchFrom").hide();
							$(".id_result").after("<h2>해당 정보의 계정이 존재하지않습니다.</h2>");
							$(".id_search_result").show();
						} 
					}else {
						if(result.mem_seq == -2){
							alert("해당 이메일과 아이디가 일치하지않습니다.");
							return false;
						}
						$("#seqCheck").val(result.mem_seq);
						$(".password_ul").show();
						$(".password_ul_none").hide();
						$(".submit").text("변경하기");
						$("#idPwCheck").val(2);
					}
				},
				error : function(err){
					alert("인터넷 연결이 불안정하거나, 서버와 통신이 불가능합니다.");
				}
			
			});
		});
		
		$("#ceoCheck").on("click",function(){
			$("#mem_ceocheckimg").click();
			return false;
		});
		
		$("#pwdBtn").on("click",function(){
			$("#mem_id").show();
			$("#pwdBtn").hide();
			$("#idBtn").show();
			$(".id_result").hide();
			$(".pw_result").show();
			$("#idPwCheck").val(1);
			$("#mem_id").val('');
			$(".password_ul").hide();
			$(".password_ul_none").show();
			$(".idSearchFrom").show();
			$(".id_search_result").hide();
			$(".center_row").children("h2").remove();
			$(".submit").text("찾기");
			$("#seqCheck").val(0);
		});
		
		$("#idBtn").on("click",function(){
			$("#mem_id").hide();
			$("#idBtn").hide();
			$("#pwdBtn").show();
			$(".id_result").show();
			$(".pw_result").hide();
			$("#idPwCheck").val(0);
			$(".password_ul").hide();
			$(".password_ul_none").show();
			$(".idSearchFrom").show();
			$(".id_search_result").hide();
			$(".center_row").children("h2").remove();
			$(".submit").text("찾기");
			$("#seqCheck").val(0);
		});
		
		var pwd = $("#mem_pw, #mem_pwCheck");
		pwd.on("input",function(){
			var regExp = /^[A-Za-z0-9]{6,14}$/;
			
			if(!regExp.test($("#mem_pw").val())){
				$("#checkPw").text("패스워드는 영문자 + 숫자 , 6~14글자 내외로 작성해주세요.").css("color","red");
				pw = false;
			}else{
				$("#checkPw").text("").css("color","black");
				pw = true;
			}
			
			// 만약 현재 패스워드가 true고 패스워드 체크가 길이가 0보다 크다 (하나라도 입력했다)면 체크
			if(pw && $("#mem_pwCheck").length > 0){
				if($("#mem_pw").val().trim() != $("#mem_pwCheck").val().trim()){
					$("#checkPwC").text("패스워드와 패스워드 확인이 일치하지 않습니다.").css("color","red");
					pwChek = false;
				}else{
					$("#checkPwC").text("").css("color","black");
					pwChek = true;
				}
			}
		})
		
		$(".submit").on("click",function(){
			var check = $("#idPwCheck").val();
			var pw = $("#mem_pw").val();
			var num = $("#seqCheck").val();
			if(check == 2){
				if(!pw){
					alert("패스워드를 확인해주세요.")
					return false;
				}
				
				if(!pwChek){
					alert("패스워드 확인을 확인해주세요.");
					return false;
				}
				
				$.ajax({
					url : "passwordCheange",
					data : {"pw":pw,"num":num},
					success : function(result){
						alert("패스워드가 변경되었습니다.");
						location.href = '/member/login';
					},
					error : function(err){
						alert("인터넷 연결이 불안정하거나, 서버와 통신이 불가능합니다.");
					}
				});
			}
		});
	</script>
</body>
</html>