package kh.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kh.spring.dao.QuestionDAO;
import kh.spring.dto.QuestionDTO;

@Service
public class QuestionService {

	@Autowired
	private QuestionDAO dao;
	
	public List<QuestionDTO> selectAll() throws Exception{
		return dao.selectAll();
    }

	public void insert(QuestionDTO dto) throws Exception {
		int seq = dao.insert(dto);
    }

	public void read(Model model, int seq) throws Exception{
		QuestionDTO dto = dao.read(seq);
		model.addAttribute("dto", dto);
	}

	public void delete(int seq) throws Exception{
		dao.delete(seq);
	}
	
	public int modify(QuestionDTO dto) throws Exception{
		return dao.modify(dto);
	}
	
	
}