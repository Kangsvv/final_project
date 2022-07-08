package kh.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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


	public int delete(String seq) throws Exception{
		return dao.delete(seq);
	}

	
}