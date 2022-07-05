package kh.spring.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.dto.CafeinDTO;


@Repository
public class CafeinDAO {
	@Autowired
	private SqlSession mybatis;
	
	
	public int insert(CafeinDTO dto)throws Exception{

		 return mybatis.insert("Cafein.cafein-insert",dto);
			 
	}
}
