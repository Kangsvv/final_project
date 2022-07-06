package kh.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.dao.NoticDAO;
import kh.spring.dto.EventDTO;
import kh.spring.dto.NoticDTO;

@Service
public class NoticService {

	@Autowired
	private NoticDAO dao;

	public void insert(NoticDTO dto) throws Exception {
		int seq = dao.insert(dto);
	}
	
	public List<NoticDTO> notic_selectAll() throws Exception {
		
		 return dao.notic_selectAll(); 
		
	}
	
	
}
