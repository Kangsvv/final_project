package kh.spring.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.dto.QuestionDTO;

@Repository
public class NoticeDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<QuestionDTO> selectAll() throws Exception{
		return mybatis.selectList("question.selectAll");
	}
}
