package kh.spring.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.dto.CafeinDTO;
import kh.spring.dto.Cafein_imgDTO;
import kh.spring.dto.Cafein_likeDTO;
import kh.spring.dto.MessageDTO;


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
	//-------------------카페정보 수정--------------
	public int update(CafeinDTO dto)throws Exception{
		return mybatis.update("Cafein.cafein-update",dto);
	}
	//-------------------쪽지 --------------------
	public int message(MessageDTO dto)throws Exception{
		return mybatis.insert("Cafein.message",dto);
	}
	//-------------------쪽지2--------------------
	public int message2(MessageDTO dto)throws Exception{
		return mybatis.insert("Cafein.message2",dto);
	}
	//------------------쪽지함--------------------
	public List<MessageDTO> messagebox(String email)throws Exception{
		return mybatis.selectList("Cafein.messagebox", email);
	}
	//--------------------좋아요-----------------
	public int cafein_like(Cafein_likeDTO ldto)throws Exception{
		return mybatis.insert("Cafein.cafein-like",ldto);
	}
	//-------------------좋아요 수---------------
	public int cafein_like_count(int seq)throws Exception{
		return mybatis.selectOne("Cafein.like-count",seq);
	}
	//--------------------좋아요 체크-------------
	public Cafein_likeDTO cafein_like_check(Cafein_likeDTO ldto)throws Exception{
		return mybatis.selectOne("Cafein.like-check",ldto);
	}
	//--------------------좋아요 취소-------------
	public int cafein_like_cancel(Cafein_likeDTO ldto)throws Exception{
		return mybatis.delete("Cafein.cafein-like-cancel",ldto);
	}
}
