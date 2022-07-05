package kh.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.spring.service.EventService;
import kh.spring.service.NoticService;

@Controller
@RequestMapping("/notice/")
public class NoticeController {
	
	@Autowired
	private EventService eservice;
	
	@Autowired 
	private NoticService nservice; 

	@RequestMapping("FAQ")
	public String FAQ() {
		return "/notice/noticeMain";
	}
	
	@RequestMapping("event")
	public String event() {
		
		return "/notice/event";
	}
	
	@RequestMapping("event_Write")
	public String event_Write() {
		return "/notice/event_Write";
	}
	
	@RequestMapping("notic")
	public String notic() {
		
		return "/notice/notic";
	}
	
	@RequestMapping("notic_Write")
	public String notic_Write() {
		return "/notice/notic_Write";
	}
	
	@RequestMapping("notic_Detail")
	public String notic_Detail() {
		return "/notice/notic_Detail";
	}
	
	
	
	@ExceptionHandler //예외 공동 처리
	public String exceptionHandler(Exception e) {//NumberFormatException.class, SQLException.class
		e.printStackTrace();
		return "error";
	}
}
