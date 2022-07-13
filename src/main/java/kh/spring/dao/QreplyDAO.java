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
  
	public List<QreplyDTO> reply_list(int parentseq) throws Exception {
		return mybatis.selectList("qreply.reply_list", parentseq);
		
	}
	

}
