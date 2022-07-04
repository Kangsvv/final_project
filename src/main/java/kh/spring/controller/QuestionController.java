package kh.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.spring.dto.NoticeDTO;
import kh.spring.service.NoticeService;

public class QuestionController {

	
	
	@Controller
	@RequestMapping("/question/")
	public class NoticeController {
		
		@Autowired
		private NoticeService bServ;
		
		@RequestMapping("list")
		public String question(Model model) throws Exception {
			
			List<NoticeDTO> dto = bServ.selectAll();
			model.addAttribute("list",dto);
			
			return "/question/questionLsit";
		}
		
		
		@ExceptionHandler //예외 공동 처리
		public String exceptionHandler(Exception e) {//NumberFormatException.class, SQLException.class
			e.printStackTrace();
			return "error";
		}
}
}