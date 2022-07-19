package kh.spring.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.dto.QreplyDTO;


@Repository
public class QreplyDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
  
	public List<QreplyDTO> reply_list(int question_seq) throws Exception {
		return mybatis.selectList("question.reply_list", question_seq);
		
	}
	

	public void reply_insert(QreplyDTO dto) throws Exception{
		mybatis.insert("question.reply_insert", dto);
	}
	
	
	public void reply_delete(int reply_seq) throws Exception{
		 mybatis.delete("question.reply_delete", reply_seq);
	}
	
}
