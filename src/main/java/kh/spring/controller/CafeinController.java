package kh.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

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
	@RequestMapping(value="cafein_insert",produces="application/text;charset=utf-8")
	public String cafein_insert(String name,String address1,String address2,String[] day,String[] open,String[] finish,String parking,String realPath,MultipartFile file) throws Exception {
//		String name =request.getParameter("name");
//		String address1 = request.getParameter("address1");
//		String address2 = request.getParameter("address2");
//		String[] dayarr =request.getParameterValues("day");
//		String [] openarr = request.getParameterValues("open");
//		String [] finisharr = request.getParameterValues("finish");
//		String parking = request.getParameter("parking");
		System.out.println(name);
		System.out.println(address1);
		System.out.println(address2);
		System.out.println(day);
		String dayR = String.join("/", day);
		String openR = String.join(":", open);
		String finishR = String.join(":", finish);
		
		
		serv.insert(name,address1,address2,dayR,openR,finishR,parking,realPath,file);
		return "redirect: /cafein/goCafein";
	}
	
	@ExceptionHandler //예외 공동 처리
	public String exceptionHandler(Exception e) {//NumberFormatException.class, SQLException.class
		e.printStackTrace();
		return "error";
	}
}
