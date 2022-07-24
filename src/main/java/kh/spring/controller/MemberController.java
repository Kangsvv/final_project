package kh.spring.controller;

import java.io.File;
import java.util.Random;

//import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kh.spring.dto.MemberDTO;
import kh.spring.service.MemberService;
import kh.spring.utils.UploadFileUtils;

@SessionAttributes({"loginMember"})
@Controller
@RequestMapping("/member/")
public class MemberController {
   // Autowired를 이용해서 service를 이름을 정의하고 호출
   @Autowired private MemberService memberService;
   @Autowired JavaMailSender mailSender;
//   @Resource(name="uploadPath")
   private String uploadPath;
   
   @Autowired
   private HttpSession session;

   
   // 인증번호 메일 보내기
   @RequestMapping(value = "sendEmail", method=RequestMethod.GET)
   public String mailSending(HttpServletRequest request, String email, HttpServletResponse response, String num) throws Exception {
      String setfrom = "slamp1022@naver.com";
      String tomail = email;
      String title = "CafeIn 인증번호입니다.";
      String content = ""
            + System.getProperty("line.separator")
            + "인증번호는 : " + num + "입니다."
            + System.getProperty("line.separator");
          
         MimeMessage message = mailSender.createMimeMessage();
         MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
         messageHelper.setFrom(setfrom);
         messageHelper.setTo(tomail);
         messageHelper.setSubject(title);
         messageHelper.setText(content);
         mailSender.send(message);
      
      return title;
   }

   // 로그인 페이지이동
   @RequestMapping("login")
   public String login() {
      return "/member/login";
   }

   // 회원가입 페이지 이동
   @RequestMapping("signUp")
   public String signUp() {
      return "/member/signUp";
   }

   // 아이디 중복 체크
   @ResponseBody
   @RequestMapping("memberIdCheck")
   public int memberIdCheck(String id) {
      int result = 0;
      result = memberService.memberIdCheck(id);
      return result;
   }

   // 인증번호 전송
   @ResponseBody
   @RequestMapping("emailCheck")
   public int emailCheck(HttpServletRequest request, String email, HttpServletResponse response) {
      int result = 0;
      try {
         String num = "";
         Random rand = new Random();
         for(int i=0; i<6; i++) {
            String ran = Integer.toString(rand.nextInt(10));
            num += ran;
         }
         mailSending(request,email,response,num);
         result = memberService.emailCheck(email,num);
      } catch (Exception e) {
         e.printStackTrace();
      }
      return result;
   }

   // 인증번호 확인
   @ResponseBody
   @RequestMapping("emailNumCheck")
   public int emailNumCheck(String email, int num) {
      int result = 0;
      // 현재 가져온 이메일과 인증번호를 이용해서 select후 존재하는지 체크 후 존재하면 처리, 존재하지않으면 실패
      int checkNum = memberService.emailNumCheck(email,num);
      if(checkNum==num) {
         result = 1;
      }
      if(result > 0) {
         // 가져와서 정상이면 인증번호 삭제 ( 중복 인증 방지용)
         memberService.emailNumDelete(email,num);
      }
      return result;
   }

   // 회원가입 처리
   @RequestMapping("joinAction")
   public String joinAction(MemberDTO member, Model model, @RequestParam(value = "file", required = false) MultipartFile file,RedirectAttributes rdAttr) throws Exception{
      String fileUpload = uploadPath + File.separator + "imgUpload";
      String ymdPath = UploadFileUtils.calcPath(fileUpload);
      String fileName = null;
         if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
            fileName =  UploadFileUtils.fileUpload(fileUpload, file.getOriginalFilename(), file.getBytes(), ymdPath);
            String realPath = session.getServletContext().getRealPath("/resources");
            file.transferTo(new File(realPath + "/"+"imgUpload" + ymdPath + File.separator + fileName));
            member.setmem_ceocheckimg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
         }
         
         int result = memberService.joinAction(member);
         member.setmem_pw(null);
         
         rdAttr.addFlashAttribute("status", "success");
         rdAttr.addFlashAttribute("msg", "알림");
         rdAttr.addFlashAttribute("text", "회원가입 완료");
         
         if(result > 0 && member.getmem_level() == 0) {
            model.addAttribute("loginMember", member);
            session.setAttribute("loginID", member.getmem_id());
         }
         
      
      
      return "redirect:/";
   }
   
   // 로그인 작동
   @RequestMapping("loginAction")
   public String loginAction(MemberDTO member, Model model, RedirectAttributes rdAttr,
                       String saveId, HttpServletResponse response, HttpServletRequest request) throws Exception{
      MemberDTO loginMember = null;
      if(member.getmem_id().indexOf("kakao_") == -1) {
         loginMember = memberService.login(member);
      }
      
      if(loginMember != null) {
         rdAttr.addFlashAttribute("status", "success");
         rdAttr.addFlashAttribute("msg", "알림");
         rdAttr.addFlashAttribute("text", "로그인 성공");
         model.addAttribute("loginMember", loginMember);
         Cookie cookie = new Cookie("saveId", member.getmem_id()); 
         session.setAttribute("loginID", member.getmem_id());
         if(saveId != null) {
            cookie.setMaxAge(60 * 60 * 24 * 7);
         }else {
            cookie.setMaxAge(0);
         }
         
         response.addCookie(cookie);
      }else {
         rdAttr.addFlashAttribute("status", "error");
         rdAttr.addFlashAttribute("msg", "알림");
         rdAttr.addFlashAttribute("text", "아이디 또는 비밀번호를 확인해주세요.");
      }
      return "redirect:/";
   }
   
   // 로그아웃
   @RequestMapping("logout")
   public String logout(SessionStatus status, RedirectAttributes rdAttr) {
      status.setComplete();
      rdAttr.addFlashAttribute("status", "success");
      rdAttr.addFlashAttribute("msg", "알림");
      rdAttr.addFlashAttribute("text", "로그아웃이 되었습니다.");
      session.invalidate();
      return "redirect:/";
   }
   
   // 카카오 회원가입 및 로그인
   @ResponseBody
   @RequestMapping("kakaoLogin")
   public int kakaoLogin(String email, String name, Model model, RedirectAttributes rdAttr) {
      int result = 0;
      MemberDTO member = new MemberDTO();
      member.setmem_id(email.split("@")[0]);
      member.setmem_name(name);
      member.setmem_email(email);
      
      MemberDTO loginMember = memberService.kakaoLoginCheck(member);
      if(loginMember == null) {
         loginMember = memberService.kakaoSingUp(member);
      }
      if(loginMember != null) {
         result = 1;
      }
      model.addAttribute("loginMember", loginMember);
      rdAttr.addFlashAttribute("status", "success");
      rdAttr.addFlashAttribute("msg", "알림");
      rdAttr.addFlashAttribute("text", "로그인 성공");
      session.setAttribute("loginID", email.split("@")[0]);
      
      String id = (String)session.getAttribute("loginID");
      
      System.out.println(id);
      return result;
   }
   
   // 아이디 비밀번호 찾기 이동
   @RequestMapping("loginSearch")
   public String loginSearch() {
      return "/member/loginSearch";
   }
   
   // 아이디 및 패스워드 찾기
   @ResponseBody
   @RequestMapping("idSearch")
   public MemberDTO idSerach(String email, int num, String id) {
      MemberDTO member = new MemberDTO();
      int checkNum = memberService.emailNumCheck(email,num);
      if(checkNum == num) {
         memberService.emailNumDelete(email,num);
         member = memberService.idSearch(email);
      }else {
         member.setmem_seq(-1);
      }
      if(id != null && id != "") {
         // 패스워드 찾기에 들어온후 조회한 아이디가 없을경우 
         if(member.getmem_id() != null) {
            // 또는 아이디는 있지만 해당 이메일과 아이다가 일치하지 않을경우
            if(!member.getmem_id().equals(id)) {
               // 아이디와 이메일이 일치하지 않다고 출력
               member.setmem_seq(-2);
            }
         }else {
            // 인증번호가 일치하지않다고 출력
            member.setmem_seq(-1);
         }
      }

      return member;
   }
   
   // 패스워드 변경
   @ResponseBody
   @RequestMapping("passwordCheange")
   public int passwordCheange(String pw, String num) {
      MemberDTO member = new MemberDTO();
      member.setmem_seq(Integer.parseInt(num));
      member.setmem_pw(pw);
      int result = memberService.passwordCheange(member);
      return result;
   }
   
   // 이메일 중복 체크
      @ResponseBody
      @RequestMapping("memberemailCheck")
      public int memberemailCheck(String email) {
         int result = 0;
         result = memberService.memberemailCheck(email);
         return result;
      }
      
      @ExceptionHandler //예외 공동 처리
      public String exceptionHandler(Exception e) {
         e.printStackTrace();
         return "error";
      }
}