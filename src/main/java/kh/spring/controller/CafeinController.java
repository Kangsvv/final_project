package kh.spring.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		return "redirect:/cafein/cafein_imglist";
	}
	
	//------------------------Cafein 리스트 출력(사진리스트)---------------
	@RequestMapping("cafein_imglist")
	public String cafein_imglist(Model model) throws Exception {
		serv.cafein_imglist(model);
		return "/cafein/cafeinMain";
	}
	//------------------------Cafein 상세보기---------------------------
	@RequestMapping("selectBySeq")
	public String selectBySeq(Model model,int cafein_seq) throws Exception {
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
		return "redirect:/cafein/cafein_imglist";
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
	public String message(int seq,String title,String receiver,String receiver_email,String contents)throws Exception{
		System.out.println(title);
		System.out.println(contents);
		
		serv.message(title,receiver,receiver_email,contents);
		
		return "redirect:/cafein/selectBySeq?cafein_seq="+seq;
		
	}
	
	
	
	//------------------------좋아요기능----------------------------------
	@RequestMapping("like")
	public String cafein_like(int seq) throws Exception {
		serv.cafein_like(seq);
		return "redirect:/caein/selectBySeq?cafein_seq="+seq;
	}
	//----------------------좋아요 취소----------------------------------
	@RequestMapping("like-cancel")
	public String like_cancel(int seq) throws Exception {
		serv.like_cancel(seq);
		return "redirect:/caein/selectBySeq?cafein_seq="+seq;
	}
	//-----------------------좋아요 수--------------------------------
	@ExceptionHandler //예외 공동 처리
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
}
