package kh.spring.controller;

import java.io.IOException;
import java.util.Random;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.spring.dto.MemberDTO;
import kh.spring.service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {
	// Autowired를 이용해서 service를 이름을 정의하고 호출
	@Autowired private MemberService memberService;
	@Autowired JavaMailSender mailSender;

	@ExceptionHandler //예외 공동 처리
	public String exceptionHandler(Exception e) {//NumberFormatException.class, SQLException.class
		e.printStackTrace();
		return "error";
	}

	// 인증번호 메일 보내기
	@RequestMapping(value = "sendEmail", method=RequestMethod.GET)
	public String mailSending(HttpServletRequest request, String email, HttpServletResponse response, String num) throws IOException {
		String setfrom = "slamp1022@naver.com";
		String tomail = email;
		String title = "CafeIn 인증번호입니다.";
		String content = ""
				+ System.getProperty("line.separator")
				+ "인증번호는 : " + num + "입니다."
				+ System.getProperty("line.separator");
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			messageHelper.setFrom(setfrom);
			messageHelper.setTo(tomail);
			messageHelper.setSubject(title);
			messageHelper.setText(content);
			mailSender.send(message);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return title;
	}

	// 로그인 페이지이동
	@RequestMapping("login")
	public String login() {
		return "/member/login";
	}

	// 회원가입 페이지 이동
	@RequestMapping("signUp")
	public String signUp() {
		return "/member/signUp";
	}

	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping("memberIdCheck")
	public int memberIdCheck(String id) {
		int result = 0;
		result = memberService.memberIdCheck(id);
		return result;
	}

	// 인증번호 전송
	@ResponseBody
	@RequestMapping("emailCheck")
	public int emailCheck(HttpServletRequest request, String email, HttpServletResponse response) {
		int result = 0;
		try {
			String num = "";
			Random rand = new Random();
			for(int i=0; i<6; i++) {
				String ran = Integer.toString(rand.nextInt(10));
				num += ran;
			}
			mailSending(request,email,response,num);
			result = memberService.emailCheck(email,num);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// 인증번호 확인
	@ResponseBody
	@RequestMapping("emailNumCheck")
	public int emailNumCheck(String email, int num) {
		int result = 0;
		// 현재 가져온 이메일과 인증번호를 이용해서 select후 존재하는지 체크 후 존재하면 처리, 존재하지않으면 실패
		result = memberService.emailNumCheck(email,num);
		// 가져와서 정상이면 인증번호 삭제 ( 중복 인증 방지용)
		memberService.emailNumDelete(email,num);
		return result;
	}

	// 회원가입 처리
	@RequestMapping("joinAction")
	public String joinAction(MemberDTO member) {
		System.out.println(member);
		// 회원가입 처리
		int result = memberService.joinAction(member);
		return "/";
	}
}