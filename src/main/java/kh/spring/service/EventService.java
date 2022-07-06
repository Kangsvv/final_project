package kh.spring.service;

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

}
