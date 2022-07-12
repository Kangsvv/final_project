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
	// 관리자권한으로 회원탈퇴
		public int delete(String id) throws Exception{
				
			return mybatis.delete("Manager.delete");
					 
		}
}
