package kh.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}


/* 순서 : Mepper > DAO > Service > Controller > Service */