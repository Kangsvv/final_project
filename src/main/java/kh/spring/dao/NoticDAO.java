package kh.spring.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.dto.NoticDTO;

@Repository
public class NoticDAO {
	
	@Autowired 
	private SqlSessionTemplate mybatice;

public int insert (NoticDTO dto) throws Exception{
	
	return mybatice.insert("notic.insert",dto);
}

}



