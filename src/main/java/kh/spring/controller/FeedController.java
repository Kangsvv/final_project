package kh.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/feed/")
public class FeedController {

	
	@RequestMapping("goFeed")
	public String goFeed() {
		return "/feed/feedMain";
	}
	@RequestMapping("detailView")
	public String detailView() {
		return "/feed/detailView";
	}
	
	@ExceptionHandler //예외 공동 처리
	public String exceptionHandler(Exception e) {//NumberFormatException.class, SQLException.class
		e.printStackTrace();
		return "error";
	}
}
