package kh.spring.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kh.spring.dto.Cafein_imgDTO;
import kh.spring.service.CafeinService;

@Controller
@RequestMapping("/cafein/")
public class CafeinController {
	
	
	
	@Autowired
	private CafeinService serv;
	
	//----------------------Cafein 리스트---------------------
	@RequestMapping("goCafein")
	public String goCafein(Model model,int page) throws Exception {
		
		int cpage= page;
		
		System.out.println(cpage);
		List<Cafein_imgDTO> list = serv.cafein_imglist(model, cpage);
		model.addAttribute("list",list);
		serv.cafein_imglist2(model);
		
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
	@RequestMapping("updateCafein")
	public String updateCafein() {
		return "/cafein/cafeinUpdate";
	}
	//----------------------Cafein 등록---------------------
	@RequestMapping(value="cafein_insert",produces="application/text;charset=utf-8")
	public String cafein_insert(String name,String address1,String address2,String[] dayarr,String[] openarr,String[] finisharr,String parking,String realPath,MultipartFile file) throws Exception {
		
		System.out.println(name);
		String day = String.join("/", dayarr);
		String open = String.join(":", openarr);
		String finish = String.join(":", finisharr);
		
		serv.insert(name,address1,address2,day,open,finish,parking,realPath,file);
		return "redirect:/cafein/goCafein?page=1";
	}
	
	//------------------------Cafein 리스트 출력(사진리스트)---------------
	@ResponseBody
	@RequestMapping("cafein_imglist")
	public List<Cafein_imgDTO> cafein_imglist(Model model,int page) throws Exception {
		System.out.println(page);
		int cpage = page;
		
		List<Cafein_imgDTO> list = serv.cafein_imglist(model, cpage);
		model.addAttribute("list", list);
		System.out.println(list);
		return list;
	}
	//------------------------Cafein 상세보기(로그인시)---------------------------
	@RequestMapping("selectBySeq")
	public String selectBySeq(Model model,int cafein_seq) throws Exception {
		serv.selectBySeq(model, cafein_seq);
		return "cafein/cafeinDetail";
	}
	//------------------------Cafein 상세보기(비로그인시)---------------------------
	
		@RequestMapping("selectBySeq2")
		public String selectBySeq2(Model model,int cafein_seq) throws Exception {
			serv.selectBySeq(model, cafein_seq);
			return "cafein/cafeinDetail";
		}
	//-------------------------Cafein 수정페이지 ------------------------
	@RequestMapping("UpdateSeq")
	public String UpdateSeq(Model model,int cafein_seq) throws Exception {
		serv.selectBySeq(model, cafein_seq);
		return "cafein/cafeinUpdate";
	}
	//------------------------Cafe삭제----------------------------------
	@RequestMapping("delete") 
	public String delete(int seq,String realPath,MultipartFile file) throws Exception {
		serv.delete(seq,realPath,file);
		return "redirect:/cafein/goCafein?page=1";
	}
	//------------------------Cafe수정----------------------------------
	@RequestMapping("update") 
	public String update(int seq, String name,String address1,String address2,String[] dayarr,String[] openarr,String[] finisharr,String parking,String realPath,MultipartFile file) throws Exception {
		System.out.println(seq);
		System.out.println(address1);
		System.out.println(address2);
		String day = String.join("/", dayarr);
		String open = String.join(":", openarr);
		String finish = String.join(":", finisharr);
		serv.update(seq,name,address1,address2,day,open,finish,parking,realPath,file);
		return "redirect:/cafein/selectBySeq?cafein_seq="+seq;
	}
	@RequestMapping("update-no")
	public String update1(int seq, String name,String address1,String address2,String[] dayarr,String[] openarr,String[] finisharr,String parking) throws Exception {
		System.out.println(seq);
		String day = String.join("/", dayarr);
		String open = String.join(":", openarr);
		String finish = String.join(":", finisharr);
		serv.update1(seq,name,address1,address2,day,open,finish,parking);
		return "redirect:/cafein/selectBySeq?cafein_seq="+seq;
	}
	//-----------------------쪽지보내기-----------------------------------
	@RequestMapping("message")
	public String message(int seq,String title,String receiver,String receiver_email,String contents,String cafe)throws Exception{
		System.out.println(title);
		System.out.println(contents);
		
		serv.message(title,receiver,receiver_email,contents,seq,cafe);
		
		return "redirect:/cafein/selectBySeq?cafein_seq="+seq;
		
	}
	//-----------------------쪽지함 출력----------------------------------
	@RequestMapping("messagebox")
	public String messagebox(Model model)throws Exception{
		serv.messagebox(model);
		return "/member/messagebox";
	}
	
	
	//------------------------좋아요기능----------------------------------
	@ResponseBody
	@RequestMapping("like")
	public int cafein_like(int seq) throws Exception {
		
		return serv.cafein_like(seq);
	}
	//----------------------좋아요 취소----------------------------------
	@ResponseBody
	@RequestMapping("like-cancel")
	public int like_cancel(int seq) throws Exception {
		serv.like_cancel(seq);
		return serv.like_cancel(seq);
	}
	//-----------------------좋아요 수--------------------------------
	@ResponseBody
	@RequestMapping("cafein_like_count")
	public int cafein_like_count(int seq) throws Exception {
		
		return serv.cafein_like_count(seq);
	}
	
	
	
	@ExceptionHandler //예외 공동 처리
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
}
