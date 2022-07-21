package kh.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import kh.spring.dao.MypageDAO;
import kh.spring.dto.Cafein_imgDTO;
import kh.spring.dto.Feed_imgDTO;
import kh.spring.dto.MemberDTO;
import kh.spring.service.MypageService;

@SessionAttributes({ "loginMember" })
@Controller
@RequestMapping("/mypage/")
public class MypageController {

	@Autowired
	private HttpSession session;

	@Autowired
	private MypageDAO pdao;

	@Autowired
	private MypageService pser;

	@ExceptionHandler // 예외 공동 처리
	public String exceptionHandler(Exception e) {// NumberFormatException.class, SQLException.class
		e.printStackTrace();
		return "error";
	}

	@RequestMapping("mypage") // 일반 회원 + 사장님 feed출력
	public String mypage_select(Model model) throws Exception {

		String loginID = (String) session.getAttribute("loginID");
		System.out.println(loginID);

		MemberDTO dto = pdao.selectID(loginID);
		List<Feed_imgDTO> imglist = pdao.selectfeedimg(loginID);

		model.addAttribute("dto", dto);
		model.addAttribute("imglist", imglist);

		int countcafein = pdao.countcafein(loginID);
		model.addAttribute("countcafein",countcafein);
		
		int countfeed = pdao.countfeed(loginID); 
		model.addAttribute("countfeed",countfeed);
		
		return "/mypage/mypage";
	}

	// 사장님 내 cafein 출력
	@RequestMapping("mycafe") 
	public String mypage_mycafe(Model model) throws Exception {

		String loginID = (String) session.getAttribute("loginID");
		System.out.println(loginID);

		MemberDTO dto = pdao.selectID(loginID);
		model.addAttribute("dto", dto);
		
		List<Cafein_imgDTO> imglist = pdao.selectcafeinimg(loginID);
		model.addAttribute("imglist", imglist);
		
		int countcafein = pdao.countcafein(loginID);
		model.addAttribute("countcafein",countcafein);
		
		int countfeed = pdao.countfeed(loginID); 
		model.addAttribute("countfeed",countfeed);

		return "/mypage/mycafe";
	}
	

	@RequestMapping("mypageEdit")
	public String mypageEdit(Model model) throws Exception {
		String loginID = (String) session.getAttribute("loginID");
		MemberDTO dto = pdao.selectID(loginID);
		model.addAttribute("dto", dto);
		return "/mypage/mypageEdit";
	}

	@RequestMapping("update")
	public String mypageupdate(String realpath, MultipartFile file, String memName, String memPhone) throws Exception {

		pser.mypageupdate(realpath, file, memName, memPhone);
		System.out.println(realpath);
		return "redirect:/mypage/mypageEdit";
	}

	@RequestMapping("memberout")
	public String memberout() throws Exception {
		String loginID = (String) session.getAttribute("loginID");
		pdao.memberout(loginID);
		session.invalidate();
		System.out.println(loginID + "<- 세션이 있나 확인하려고 만든겨");
		return "redirect:/";
	}

}
