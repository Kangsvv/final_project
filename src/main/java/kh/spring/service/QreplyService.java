package kh.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.dao.QreplyDAO;
import kh.spring.dto.QreplyDTO;
import kh.spring.dto.QuestionDTO;


@Service
public class QreplyService {
	
	@Autowired
	private QreplyDAO dao;
	
	public List<QreplyDTO> reply_list(int question_seq) throws Exception{
		return dao.reply_list(question_seq);
	}


	public void insert(QreplyDTO dto) throws Exception {
		   dao.reply_insert(dto);
	}
	
}
