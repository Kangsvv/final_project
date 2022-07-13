package kh.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kh.spring.dto.FeedDTO;
import kh.spring.service.FeedService;

@Controller
@RequestMapping("/feed/")
public class FeedController {

	@Autowired
	private FeedService serv;
	
	@Autowired
	Gson g = new Gson();
	
	@RequestMapping("goFeed")
	public String goFeed(Model model, int page) throws Exception{
		
		int cpage = page;
		
		System.out.println(cpage);
		List<FeedDTO> list = serv.selectAllrs(model, cpage);
//		String fList = g.toJson(list);
		model.addAttribute("list", list);
//		System.out.println(fist);
		
		return "/feed/feedMain";
	}
	@ResponseBody
	@RequestMapping("goInfinitiedFeed")
	public List<FeedDTO> goInfinitiedFeed(Model model, int page) throws Exception{
		
		int cpage = page;
		
		List<FeedDTO> list = serv.selectAllrs(model, cpage);
		model.addAttribute("list", list);
		
		return list;
	}
	
	@RequestMapping("detailView")
	public String detailView() {
		return "/feed/detailView";
	}
	
	@RequestMapping("goFeedWrite")
	public String goFeedWrite() {
		return "/feed/feedWrite";
	}
	
	@RequestMapping("search")
	public String feedSearchResult(Model model,String search) throws Exception{
		int cpage = 1;
		
		System.out.println(search);
		String what = search.replaceAll(" ","");
		System.out.println(what);
		List<FeedDTO> list = serv.feedSearchResult(model,what,cpage);
		model.addAttribute("list", list);
		return "/feed/feedSearchResult";
	}
	
	@ExceptionHandler //예외 공동 처리
	public String exceptionHandler(Exception e) {//NumberFormatException.class, SQLException.class
		e.printStackTrace();
		return "error";
	}
}


