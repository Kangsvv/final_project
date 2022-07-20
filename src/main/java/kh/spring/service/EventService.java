package kh.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kh.spring.dao.EventDAO;
import kh.spring.dto.EventDTO;

@Service
public class EventService {

	@Autowired
	private EventDAO dao; 

	public void insert (EventDTO dto) throws Exception{

		int seq = dao.insert(dto);

	}

public List<EventDTO> event_selectAll() throws Exception {
	
	 return dao.event_selectAll(); 
	
}

public void selectBySeq(Model model, int seq) throws Exception {
	
	EventDTO dto = dao.selectBySeq(seq);
	dao.update(seq);
	model.addAttribute("dto",dto);
}

public void delete(int seq) throws Exception {
	dao.delete(seq);
}

public int modify(EventDTO dto) throws Exception {
	return dao.modify(dto);
}


}


/* 순서 : Mepper < DAO < Service < Controller < jsp */