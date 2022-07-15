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
		return mybatis.selectList("qreply.reply_list", question_seq);
		
	}
	

	public int reply_insert(QreplyDTO dto) throws Exception{
		return mybatis.insert("qreply.reply_insert", dto);
	}
}
