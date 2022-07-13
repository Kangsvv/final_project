package kh.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.dao.QreplyDAO;
import kh.spring.dto.QreplyDTO;


@Service
public class QreplyService {
	
	@Autowired
	private QreplyDAO dao;
	
	public List<QreplyDTO> reply_list(int parentseq) throws Exception{
		return dao.reply_list(parentseq);
	}

}
