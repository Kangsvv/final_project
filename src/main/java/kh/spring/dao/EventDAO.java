package kh.spring.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.dto.EventDTO;

@Repository
public class EventDAO {
	
	@Autowired 
	private SqlSessionTemplate mybatis;

public int insert (EventDTO dto) throws Exception{
	
	return mybatis.insert("event.insert",dto);
}

public List<EventDTO> event_selectAll() {
	return mybatis.selectList("event.event_selectAll");
}

}



