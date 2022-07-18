package kh.spring.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.dto.MemberDTO;

@Repository
public class ManagerDAO {

	@Autowired
	private SqlSession mybatis;

	// 일반회원 리스트
	public List<MemberDTO> selectNomal() throws Exception{

		return mybatis.selectList("Manager.selectNomal");

	}
	// 사장회원 리스트
	public List<MemberDTO> selectCEO() throws Exception{

		return mybatis.selectList("Manager.selectCEO");

	}

	// 증빙서류 이미지 불러오기
	public String selectIMG(String id) throws Exception{

		return mybatis.selectOne("Manager.selectIMG",id);

	}

	// 관리자권한으로 회원탈퇴
	public void delete(String id) throws Exception{

		mybatis.delete("Manager.delete",id);
	}

	// 사장회원으로 전환승인
	public void CEOok(String id) throws Exception{

		mybatis.update("Manager.CEOok",id);
	}
	
	// 사장회원으로 전환승인
	public void leveldown(String id) throws Exception{

		mybatis.update("Manager.leveldown",id);
	}
}
