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

	public QuestionDTO read(int seq) throws Exception{
		return mybatis.selectOne("question.read",seq);
	}
	
	public void delete(int seq) throws Exception {
		mybatis.delete("question.delete",seq);
		
	}

	public int modify(QuestionDTO dto) throws Exception{
		return mybatis.update("question.modify",dto);
	}
	
	

}
