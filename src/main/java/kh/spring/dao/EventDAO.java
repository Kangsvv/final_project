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

public EventDTO selectBySeq(int seq) {
	return mybatis.selectOne("event.event_Detail",seq);
}

public void delete(int seq) {
	mybatis.delete("event.event_delete",seq);
}

public int modify(EventDTO dto) throws Exception {
	return mybatis.update("event.event_modify",dto);
}

 public void update(int seq) { 
  mybatis.update("event.count", seq); }
}



