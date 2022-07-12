package kh.spring.controller;

import java.util.List;



import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;


import kh.spring.dao.EventDAO;
import kh.spring.dto.EventDTO;
import kh.spring.dto.NoticDTO;
import kh.spring.service.EventService;
import kh.spring.service.NoticService;


@Controller
@RequestMapping("/notice/")
public class NoticeController {
	
	@Autowired

	private EventDAO dao;
	
	@Autowired
	private EventService Eservice;
	
	@Autowired 
	private NoticService Nservice; 
	
	@Autowired
	private HttpSession session;

	//----------------FAQ 연결----------------//
	@RequestMapping("FAQ")
	public String FAQ() {
		return "/notice/noticeMain";
	}
	
	//----------------Notice_EVENT 관련----------------//

	@RequestMapping("event")
	public String event() {
		
		return "/notice/event";
	}
	
	@RequestMapping("event_Write")
	public String event_Write() {
		return "/notice/event_Write";
	}
	
	@RequestMapping("event_insert")
	public String event_insert(EventDTO dto) throws Exception{
		dto.setWriter((String)session.getAttribute("loginID"));
		Eservice.insert(dto);
		
		return "redirect:/notice/event";
	}
	
	@RequestMapping("event_selectAll")
	public String selectAll(Model model) throws Exception{
		List<EventDTO> dto = Eservice.event_selectAll();
		model.addAttribute("elist", dto);
		System.out.println(dto);
		return "/notice/event";
	}
	
	@RequestMapping("selectBySeq")
	public String selectBySeq(Model model, int seq) throws Exception {
		Eservice.selectBySeq(model, seq);
		System.out.println(seq);
		return "/notice/event_Detail";
	}
	
	@RequestMapping("event_delete")
	public String event_delete (int seq) throws Exception {
		Eservice.delete(seq);
		return "/notice/event";
	}
	
	/* 추후 조회수 기능 추가 가능하면 다시 진행
	 * @RequestMapping("count") 
	 * public String count (int count) throws Exception {
	 * Eservice.update(count); return "/"; }
	 */
	
	//----------------Notice_Notic 관련----------------//
	@RequestMapping("notic_insert")
	public String notic_insert(NoticDTO dto) throws Exception{
		dto.setWriter((String)session.getAttribute("loginID"));
		Nservice.insert(dto);
		
		return "redirect:/notice/notic";
	}
	
	@RequestMapping("notic_selectAll")
	public String nselectAll(Model model) throws Exception{
		
		List<NoticDTO> dto = Nservice.notic_selectAll();
		model.addAttribute("nlist", dto);
		System.out.println(dto);
		return "/notice/notic";
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
	
	@RequestMapping("nselectBySeq")
	public String nselectBySeq(Model model, int seq) throws Exception {
		Nservice.nselectBySeq(model, seq);
		System.out.println(seq);
		return "/notice/event_Detail";
	}
	
	@RequestMapping("notic_delete")
	public String notic_delete (int seq) throws Exception {
		Nservice.delete(seq);
		return "/notice/notic";
	}
	
	
	
	@ExceptionHandler //예외 공동 처리
	public String exceptionHandler(Exception e) {//NumberFormatException.class, SQLException.class
		e.printStackTrace();
		return "error";
	}
}
