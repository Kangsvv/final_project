package kh.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.spring.service.ManagerService;

@Controller
@RequestMapping("/manager/")
public class ManagerController {

	@Autowired
	private ManagerService serv;
	
	@RequestMapping("goAdmin")
	public String goAdmin(Model model) throws Exception {
		
		serv.selectNomal(model);
		return "/manager/managerMain";
	}
	
	@RequestMapping("ceoMember")
	public String managerCEO(Model model) throws Exception{
		
		serv.selectCEO(model);
		return "/manager/managerCEO";
	}
	
	@ResponseBody
	@RequestMapping("delete")
	public String managerCEO(String id) throws Exception{
		serv.delete(id);
		return "true";
	}
	
	@RequestMapping("deleteCEO")
	public String deleteCEO(String id) throws Exception{
		serv.delete(id);
		return "redirect:/manager/ceoMember";
	}
	
	@ResponseBody
	@RequestMapping("CEOok")
	public String CEOok(String id) throws Exception{
		serv.CEOok(id);
		
		return "true";
	}
	
	@ResponseBody
	@RequestMapping("leveldown")
	public String leveldown(String id) throws Exception{
		serv.leveldown(id);
		
		return "true";
	}

	
	

	
	@ExceptionHandler //예외 공동 처리
	public String exceptionHandler(Exception e) {//NumberFormatException.class, SQLException.class
		e.printStackTrace();
		return "error";
	}
}
