package kh.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.spring.dto.EventDTO;
import kh.spring.dto.QuestionDTO;
import kh.spring.service.QuestionService;


	
	@Controller
	@RequestMapping("/question/")
	public class QuestionController {
		
		@Autowired
		private QuestionService Qservice;
		
		
		@Autowired
		private HttpSession session;
		
		@RequestMapping("question_list")
		public String question(Model model) throws Exception {
			
			List<QuestionDTO> dto = Qservice.selectAll();
			model.addAttribute("qlist",dto);
			
			return "/question/question_list";
			
		}
		
		@RequestMapping("question_write")
		public String question_write() {
			return "/question/question_write";
		}
		
		@RequestMapping("question_insert")
		public String question_insert(QuestionDTO dto) throws Exception{
//			dto.setWriter((String)session.getAttribute("loginID"));
			Qservice.insert(dto);
			
			return "redirect:/question/question_list";
		}
		
		
		@ExceptionHandler //예외 공동 처리
		public String exceptionHandler(Exception e) {//NumberFormatException.class, SQLException.class
			e.printStackTrace();
			return "error";
		}
}
