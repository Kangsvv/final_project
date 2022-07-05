package kh.spring.dao;

import org.mybatis.spring.SqlSessionTemplate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.dto.EventDTO;

@Repository
public class EventDAO {
	
	@Autowired 
	private SqlSessionTemplate mybatice;

public int insert (EventDTO dto) throws Exception{
	
	return mybatice.insert("event.insert",dto);
}

}



