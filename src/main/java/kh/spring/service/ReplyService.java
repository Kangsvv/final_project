package kh.spring.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kh.spring.dao.Feed_imgDAO;
import kh.spring.dao.MemberDAO;
import kh.spring.dao.ReplyDAO;
import kh.spring.dto.ReplyDTO;

@Service
public class ReplyService {

	@Autowired
	private ReplyDAO dao;
	
	@Autowired
	private HttpSession session;

	@Autowired
	private MemberDAO mdao;
	
	@Autowired
	private Feed_imgDAO fdao;
	
	
	public void replyWriteProc(int cafefeed_seq, String contents) throws Exception {
		
		String id = (String)session.getAttribute("loginID");
		
		System.out.println(id);
		
		ReplyDTO dto = new ReplyDTO();
		dto.setId(id);
		dto.setContents(contents);
		dto.setCafefeed_seq(cafefeed_seq);
		
		dao.replyWriteProc(dto);
		
	}
	public List<ReplyDTO> selectBySeq(Model model, int cafefeed_seq, int page) throws Exception {
		List<ReplyDTO> list = dao.selectBySeq(cafefeed_seq, page);

		System.out.println(list);
		
		model.addAttribute("rdto", list);
		
		return list;
	}
	public void deleteReply(int seq) throws Exception{
		dao.deleteReply(seq);
	}
	public void ModifyReply(int seq, String contents) {
		
		String id = (String)session.getAttribute("loginID");
		
		ReplyDTO dto = new ReplyDTO();
		dto.setSeq(seq);
		dto.setId(id);
		dto.setContents(contents);
		
		dao.ModifyReply(dto);
	}
}
