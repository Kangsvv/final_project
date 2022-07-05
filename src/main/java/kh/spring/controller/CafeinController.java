package kh.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.multipart.MultipartFile;

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
	public String cafein_insert(String name,String address1,String address2,String[] dayarr,String[] openarr,String[] finisharr,String parking,String realPath,MultipartFile file) throws Exception {
		System.out.println(name);
		String day = String.join("/", dayarr);
		String open = String.join(":", openarr);
		String finish = String.join(":", finisharr);
		
		serv.insert(name,address1,address2,day,open,finish,parking,realPath,file);
		return "redirect: /cafein/goCafein";
	}
	
	
	@ExceptionHandler //예외 공동 처리
	public String exceptionHandler(Exception e) {//NumberFormatException.class, SQLException.class
		e.printStackTrace();
		return "error";
	}
}
