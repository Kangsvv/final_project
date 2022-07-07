package kh.spring.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.dto.CafeinDTO;
import kh.spring.dto.Cafein_imgDTO;


@Repository
public class CafeinDAO {
	@Autowired
	private SqlSession mybatis;
	
	//--------------------카페 등록-----------------
	public int insert(CafeinDTO dto)throws Exception{

		  mybatis.insert("Cafein.cafein-insert",dto);
		  return dto.getSeq();
			 
	}
	//--------------------카페정보-----------------
	public CafeinDTO selectBySeq(int cafein_seq) {
		return mybatis.selectOne("Cafein.cafein-detail",cafein_seq);
	}
	
	//-------------------카페정보 삭제--------------
	public void delete(int cafein_seq) {
	 mybatis.delete("Cafein.cafein-delete",cafein_seq);
	}
	
}
