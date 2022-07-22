<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cafe IN - 회원가입</title>
<link rel="stylesheet" type='text/css' href='/resources/css/member.css'>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
</style>
</head>
<body style="background-color: #222;  margin: 0px; height:100%;">
	<div class='signUp wrap' style="height:100%;">
		<div style="background-color: white; max-width: 450px; height: 100%; margin: 0px auto;">
			<div class='center_row'>
				<h1 style="margin: 0px;">회원가입</h1>
				<form action="joinAction" method="post" class='loginFrom max-W360' enctype="multipart/form-data">
					<ul style="padding: 0px 0px 20px 0px;">
						<li><input class="form_main" type="text" id='mem_id'
							name='mem_id' placeholder="아이디" maxlength="12" required="required">
							<span id='checkId'></span></li>
						<li><input class="form_main" type="password" id='mem_pw'
							name='mem_pw' placeholder="패스워드" maxlength="14" autocomplete="off"
							required> <span id='checkPw'></span></li>
						<li><input class="form_main" type="password" id='mem_pwCheck'
							name='mem_pwCheck' placeholder="패스워드 확인" maxlength="14"
							autocomplete="off" required> <span id='checkPwC'></span></li>
						<li><input class="form_main" type="text" id='mem_name'
							name='mem_name' placeholder="닉네임" maxlength="12" autocomplete="off"
							required> <span id='checkName'></span></li>
						<li><select class='form_main phoneSet' id='phone_left'>
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
								<option value="031">031</option>
								<option value="070">070</option>
						</select> <input class='form_main phoneSet' id='phone_center' maxlength="4"
							required
							oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">-
							<input class='form_main phoneSet' id='phone_right' maxlength="4"
							required="required"
							oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
							<span id='checkPhone'></span></li>
						<li><input class="form_main" style="width: 70%" type="email"
							id='mem_email' name='mem_email' placeholder="이메일" maxlength="25"
							autocomplete="off" required>
							<button id='emailcheck' type="button" class='bt_1'
								style="width: 25%; display: inline-block;" >인증</button> <span
							id='checkEmail'></span></li>
						<li id='emailLi' style="display: none;"><input
							class="form_main" style="width: 70%" id='emailNum' name='emailNum'
							placeholder="인증번호" maxlength="6" autocomplete="off"
							oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
							required>
							<button id='emailNumcheck' type="button" class='bt_1'
								style="width: 25%; display: inline-block;">확인</button></li>
						<li><input type="checkbox" id='ceoCheck'><label
							for='ceoCheck'>사업자 등록 시 체크해주세요.</label></li>
					</ul>
					<input type="file" id='mem_ceocheckimg_file' name='file' style="display: none;">
					<input id='mem_level' name='mem_level' style="display: none;" value='0'>
					<input id='mem_status' name='mem_status' style="display: none;" value='0'>
					<input type='hidden' id='mem_phone' name='mem_phone' maxlength="12">
					<input id='mem_oriname' type="hidden" name='mem_oriname' value=''>
					<button class='btn_main bt_1' id='signUpBtn'>회원가입</button>
				</form>
		
				<div>
					<a>이미 가입되어있다면?</a><a class='non_text'
						href='/member/login'> 로그인</a><br>
					<br>
				</div>
			</div>
		</div>
	</div>
		
	<script>
		var id = false;
		var pw = false;
		var pwChek = false;
		var nickName = false;
		var email = false;
		var emailCheck = false;
		var phone1 = false;
		var phone2 = false;
		var phone3 = false;
		
		var pwd = $("#mem_pw, #mem_pwCheck");
		$("#mem_id").on("input",function() {
			id = false;
			var regExp = /^[a-z0-9]{4,12}$/;
			var mem_id = $("#mem_id").val();
			if(!regExp.test($("#mem_id").val())){
				$("#checkId").text("아이디는 소문자 + 숫자 , 4~12글자 내외로 작성해주세요.").css("color","red");
				id = false;
			}else{
				// ajax 기본형태 $.ajax 
				$.ajax({
					url : "/member/memberIdCheck", 
					type : "post",
					data : {"id":mem_id},
					success : function(result){
						if(result > 0){
							$("#checkId").text("이미 사용중인 아이디입니다.").css("color","red");
							id = false;
						}else{
							$("#checkId").text("사용 가능한 아이디입니다.").css("color","black");
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
		
		$("#mem_name").on("input",function(){
			nickName = false;
			var regExp = /^[가-힣A-Za-z0-9]{4,12}$/;
			
			if(!regExp.test($("#mem_name").val())) {
				$("#checkName").text("닉네임은 한글,영문,숫자로 4~12자 내외로 작성해주세요.").css("color","red");
				nickName=false;
			}else{
				$("#checkName").text("").css("color","black");
				nickName=true;
			}
		});
 		
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
					type : "post",
					data : {"email":mem_email},
					success : function(result){
						if(result > 0){
							$("#checkEmail").text("이미 사용중인 이메일입니다.").css("color","red");
							email = false;
						}else{
							$("#checkEmail").text("사용 가능한 이메일입니다.").css("color","black");
							email = true;						
						}
					},
					// 에러가 발생했을때
					error : function(err){
						alert("인터넷 연결이 불안정하거나, 서버와 통신이 불가능합니다.");
					}
				})
			}
		});
 	
		$("#signUpBtn").on("click",function(){
			if(!id){
				alert("아이디를 확인해주세요.");
				return false;
			}
			if(!pw){
				alert("패스워드를 확인해주세요.");
				return false;
			}
			if(!pwChek){
				alert("패스워드 확인을 확인해주세요.");
				return false;
			}
			
			if(!nickName){
				alert("닉네임을 확인해주세요.");
				return false;
			}
			
			$("#mem_phone").val($("#phone_left").val() + $("#phone_center").val() + $("#phone_right").val());
			if($("#phone_left").val() == "" || $("#phone_center").val().length < 3 ||  $("#phone_right").val().length < 3){
				alert("휴대폰 번호를 정확히 입력해주세요.");
				return false;
			}
			
			if(!email){
				alert("이메일을 확인해주세요.");
				return false;
			}
			
			if(!emailCheck){
				alert("이메일 인증을 진행해주세요.");
				return false;
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
			if(num.length == 0){
				alert("인증번호를 입력해주세요.");
				return;
			}
			$.ajax({
				url : "emailNumCheck",
				type : "post",
				data : {"num":num,"email":emailset},
				success : function(result){
					if(result > 0){
						alert("인증 되었습니다.");
						emailCheck = true;
						$("#emailLi").hide();
						$("#mem_email").hide();
						$("#emailcheck").hide();
						$("#checkEmail").hide();
					}else{
						alert("인증번호를 확인해주세요. 3분이 초과된경우 다시 전송 후 인증해주세요.");
						emailCheck = false;
					} 
				},
				error : function(err){
					alert("인터넷 연결이 불안정하거나, 서버와 통신이 불가능합니다.");
				}
			
			});
		});
		
		$("#ceoCheck").on("click",function(){
			$("#mem_ceocheckimg_file").click();
			return false;
		});
		
		$(document).on("change","#mem_ceocheckimg_file",function(){
			var ext = $('#mem_ceocheckimg_file').val().split('.').pop().toLowerCase();
			if($.inArray(ext, ['gif','png','jpg','jpeg']) == -1 && ext!="") {
				alert('gif,png,jpg,jpeg 파일만 업로드 할수 있습니다.');
				$('#mem_ceocheckimg_file').val('');
				$("#ceoCheck").prop("checked", false);
				return false;
			}else{
				if(this.files && this.files[0]) {
				   var reader = new FileReader;
				   reader.readAsDataURL(this.files[0]);
				   console.log(this.files[0]);
				   $("#ceoCheck").prop("checked", true);
				   
				   alert("승인되기까지 하루정도 소요됩니다\n승인 후 사장회원으로 이용가능합니다.");
				}
			}
		});
		
	</script>
</body>
</html>