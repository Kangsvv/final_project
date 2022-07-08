package kh.spring.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.dto.QuestionDTO;

@Repository
public class QuestionDAO {

	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<QuestionDTO> selectAll() throws Exception{
		return mybatis.selectList("question.selectAll");
	}
	
	public int insert(QuestionDTO dto) throws Exception {
		return mybatis.insert("question.insert",dto);
	
	}

	public int delete(String seq) throws Exception {
		return mybatis.delete("question.delete",seq);
		
	}

	public int modify(QuestionDTO dto) throws Exception{
		return mybatis.update("question.modify",dto);
	}

}
