package kh.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;

import kh.spring.dto.FeedDTO;
import kh.spring.dto.Feed_imgDTO;
import kh.spring.dto.ReplyDTO;
import kh.spring.service.FeedService;
import kh.spring.service.ReplyService;

@Controller
@RequestMapping("/feed/")
public class FeedController {

	@Autowired
	private FeedService serv;
	
	@Autowired
	private ReplyService rServ;
	
	@Autowired
	Gson g = new Gson();
	
	@RequestMapping("goFeed")
	public String goFeed(Model model, int page) throws Exception{
		
		int cpage = page;
		
		System.out.println(cpage);
//		List<FeedDTO> list = serv.selectAllrs(model, cpage);
//		String fList = g.toJson(list);
//		System.out.println(flist);
		serv.feed_imglist(model,cpage);
		return "/feed/feedMain";
	}
	
//	@RequestMapping("feed_imglist")
//	public String feed_imglist(Model model) throws Exception {
//		return "goFeed?page=1";
//	}
	
	@ResponseBody
	@RequestMapping("goInfinitiedFeed")
	public List<Feed_imgDTO> goInfinitiedFeed(Model model, int page) throws Exception{

		int cpage = page;
		
		List<Feed_imgDTO> list = serv.selectAllrs(model, cpage);
		model.addAttribute("list", list);
		
		return list;
	}
	//---------------------리뷰 상세페이지로 넘어가기 ----------------------
	@RequestMapping("selectBySeq")
	public String detailView(Model model, int cafefeed_seq) throws Exception{
		
		int page = 1;
		
		System.out.println("Controller CS : " + cafefeed_seq);
		
		serv.selectBySeq(model, cafefeed_seq);
		System.out.println("selectBySeq 에 관한 페이지"+page);
		rServ.selectBySeq(model, cafefeed_seq, page);
		
		return "/feed/detailView";
	}
	
	@RequestMapping("goFeedWrite")
	public String goFeedWrite() {
		return "/feed/feedWrite";
	}
	@RequestMapping(value="feed_insert",produces="application/text;charset=utf-8")
	public String feed_insert(String title,String contents, String realPath, MultipartFile file) throws Exception {
		
		System.out.println(title);
		
		serv.insert(title, contents, realPath, file);
		return "redirect:/feed/goFeed?page=1";
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
	// 리뷰 게시글 삭제
	@RequestMapping("deleteFeed")
	public String deleteFeed(int cafefeed_seq, String realPath, MultipartFile file) throws Exception{
		
		serv.deleteFeedBySeq(cafefeed_seq, realPath, file);
		
		return "redirect:/feed/goFeed?page=1";
	}
	// 댓글 달기
	@ResponseBody
	@RequestMapping("replyWrite")
	public List<ReplyDTO> replyWrite(Model model, int cafefeed_seq, String contents) throws Exception{
		
		rServ.replyWriteProc(cafefeed_seq, contents);
		return rServ.selectBySeq(model, cafefeed_seq);
		
//		return "redirect:/feed/selectBySeq?cafefeed_seq=" + cafefeed_seq;
	}
	@RequestMapping("deleteReply")
	public String deleteReply(Model model, int seq, int cafefeed_seq) throws Exception{
		
		rServ.deleteReply(seq);
//		rServ.selectBySeq(model, cafefeed_seq);
		
		return "redirect:/feed/selectBySeq?cafefeed_seq="+cafefeed_seq;
		
//		return "redirect:/feed/selectBySeq?cafefeed_seq=" + cafefeed_seq;
	}
	@ResponseBody
	@RequestMapping("replyList")
	public List<ReplyDTO> replyList(Model model, int cafefeed_seq, int page) throws Exception{
		System.out.println("replyList 에 관한 페이지"+page);
		System.out.println("댓글 리스트 가져오는 중");
		return rServ.selectBySeq(model, cafefeed_seq, page);
	}
	@ExceptionHandler //예외 공동 처리
	public String exceptionHandler(Exception e) {//NumberFormatException.class, SQLException.class
		e.printStackTrace();
		return "error";
	}
}


