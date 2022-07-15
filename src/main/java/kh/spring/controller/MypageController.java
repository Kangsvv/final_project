package kh.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import kh.spring.dao.MypageDAO;
import kh.spring.dto.MemberDTO;

@SessionAttributes({"loginMember"})
@Controller
@RequestMapping("/mypage/")
public class MypageController {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private MypageDAO pdao;

	@ExceptionHandler //예외 공동 처리
	public String exceptionHandler(Exception e) {//NumberFormatException.class, SQLException.class
		e.printStackTrace();
		return "error";
	}

	
	@RequestMapping("mypage")
	public String mypage_select(Model model) throws Exception{
		String loginID = (String)session.getAttribute("loginID");
		MemberDTO dto = pdao.selectID(loginID);
		model.addAttribute("dto", dto);
		System.out.println(dto.getmem_img());
		return "/mypage/mypage";
	}
	
	@RequestMapping("mypageEdit")
	public String mypageEdit(Model model) throws Exception{
		return "/mypage/mypageEdit";
	}

}
