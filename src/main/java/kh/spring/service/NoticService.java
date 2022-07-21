package kh.spring.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kh.spring.dao.NoticDAO;
import kh.spring.dto.NoticDTO;

@Service
public class NoticService {

	@Autowired
	private NoticDAO dao; 
	@Autowired
	private HttpSession session;
	public void insert (NoticDTO dto) throws Exception{

		int seq = dao.insert(dto);

	}

public List<NoticDTO> notic_selectAll() throws Exception {
	
	String id = (String)session.getAttribute("loginID");
	System.out.println(id);
	 return dao.notic_selectAll(); 
}

public void nselectBySeq(Model model, int seq) throws Exception {
	
	NoticDTO dto = dao.nselectBySeq(seq);
	dao.update(seq);
	model.addAttribute("dto",dto);
}

public void delete(int seq) throws Exception {
	dao.delete(seq);
}

public int modify(NoticDTO dto) throws Exception {
	return dao.modify(dto);
}

/* 추후 조회수 기능 추가 가능하면 다시 진행
 * public void update(int count) throws Exception { dao.update(count); }
 */

}


/* 순서 : Mepper > DAO > Service > Controller > Service */
