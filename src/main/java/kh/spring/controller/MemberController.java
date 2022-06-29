package kh.spring.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.spring.service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {
	// Autowired를 이용해서 service를 이름을 정의하고 호출
	@Autowired private MemberService memberService;
	
	@ExceptionHandler //예외 공동 처리
	public String exceptionHandler(Exception e) {//NumberFormatException.class, SQLException.class
		e.printStackTrace();
		return "error";
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
}