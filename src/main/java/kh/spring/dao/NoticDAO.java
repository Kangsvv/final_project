package kh.spring.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.dto.EventDTO;
import kh.spring.dto.NoticDTO;

@Repository
public class NoticDAO {
	
	@Autowired 
	private SqlSessionTemplate mybatis;

public int insert (NoticDTO dto) throws Exception{
	
	return mybatis.insert("notic.insert",dto);
}

public List<NoticDTO> notic_selectAll() {
	return mybatis.selectList("notic.notic_selectAll");
}

public NoticDTO nselectBySeq(int seq) {
	return mybatis.selectOne("notic.notic_Detail",seq);
}

public void delete(int seq) {
	mybatis.delete("notic.notic_delete",seq);
}

public int modify(NoticDTO dto) throws Exception {
	return mybatis.update("notic.notic_modify",dto);
}

/* 추후 조회수 기능 추가 가능하면 다시 진행
 * public void update(int count) { 
 * mybatis.update("event.count", count); }
 */


}



