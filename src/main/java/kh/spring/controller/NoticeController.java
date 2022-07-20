package kh.spring.controller;

import java.util.List;



import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
		System.out.println(dto.getWriter()+dto.getTitle()+dto.getContents());
		Eservice.insert(dto);
		
		return "redirect:/notice/event_selectAll";
	}
	
	@RequestMapping("event_selectAll")
	public String selectAll(Model model) throws Exception{
		List<EventDTO> dto = Eservice.event_selectAll();
		model.addAttribute("elist", dto);
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
	
	@ResponseBody
	@RequestMapping("event_modify")
	public String event_modify(EventDTO dto) throws Exception {
		int result = Eservice.modify(dto);
		return "true";
		
	}
	
	//----------------Notice_Notic 관련----------------//
	
	@RequestMapping("notic")
	public String notic() {
		
		return "/notice/notic";
	}
	
	@RequestMapping("notic_Write")
	public String notic_Write() {
		return "/notice/notic_Write";
	}
	
	@RequestMapping("notic_insert")
	public String notic_insert(NoticDTO dto) throws Exception{
		dto.setWriter((String)session.getAttribute("loginID"));
		Nservice.insert(dto);
		
		return "redirect:/notice/notic_selectAll";
	}
	
	@RequestMapping("notic_selectAll")
	public String nselectAll(Model model) throws Exception{
		List<NoticDTO> dto = Nservice.notic_selectAll();
		model.addAttribute("nlist", dto);
		System.out.println(dto);
		return "/notice/notic";
	}
	
	@RequestMapping("nselectBySeq")
	public String nselectBySeq(Model model, int seq) throws Exception {
		Nservice.nselectBySeq(model, seq);
		System.out.println(seq);
		return "/notice/notic_Detail";
	}
	
	@RequestMapping("notic_delete")
	public String notic_delete (int seq) throws Exception {
		Nservice.delete(seq);
		return "/notice/notic";
	}
	
	@ResponseBody
	@RequestMapping("notic_modify")
	public String notic_modify(NoticDTO dto) throws Exception {
		int result = Nservice.modify(dto);
		
		return "true";
		
	}
	
	@ExceptionHandler //예외 공동 처리
	public String exceptionHandler(Exception e) {//NumberFormatException.class, SQLException.class
		e.printStackTrace();
		return "error";
	}
}
