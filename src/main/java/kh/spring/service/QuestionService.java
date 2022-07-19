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
		int question_seq = dao.insert(dto);
    }

	public void read(Model model, int question_seq) throws Exception{
		QuestionDTO dto = dao.read(question_seq);
		model.addAttribute("dto", dto);
	}

	public void delete(int question_seq) throws Exception{
		dao.delete(question_seq);
	}
	
	public int modify(QuestionDTO dto) throws Exception{
		return dao.modify(dto);
	}
	
	
}