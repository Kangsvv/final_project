package kh.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.spring.service.CafeinService;

@Controller
@RequestMapping("/cafein/")
public class CafeinController {
	
	@Autowired
	private CafeinService serv;
	
	//----------------------Cafein 리스트---------------------
	@RequestMapping("goCafein")
	public String goCafein() {
		return "/cafein/cafeinMain";
	}
	//----------------------Cafein 작성---------------------

	@RequestMapping("writeCafein")
	public String wrtieCafein() {
		return "/cafein/cafeinWrite";
	}
	//----------------------Cafein 상세페이지---------------------

	@RequestMapping("detailCafein")
	public String detailCafein() {
		return "/cafein/cafeinDetail";
	}
	//----------------------Cafein 등록---------------------
	@RequestMapping("cafein_insert")
	public String cafein_insert(HttpServletRequest request) throws Exception {
		String name =request.getParameter("name");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String[] dayarr =request.getParameterValues("day");
		String [] openarr = request.getParameterValues("open");
		String [] finisharr = request.getParameterValues("finish");
		String parking = request.getParameter("parking");
		String day = String.join("/", dayarr);
		String open = String.join(":", openarr);
		String finish = String.join(":", finisharr);
		
		
		serv.insert(name,address1,address2,day,open,finish,parking);
		return "redirect: /cafein/goCafein";
	}
	
	@ExceptionHandler //예외 공동 처리
	public String exceptionHandler(Exception e) {//NumberFormatException.class, SQLException.class
		e.printStackTrace();
		return "error";
	}
}
