package kh.spring.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.dto.MemberDTO;

@Repository
public class MemberDAO {
	
	@Autowired 
	private SqlSession mybatis;

	// 아이디 중복 조회
	public int memberIdCheck(String id) {
		return mybatis.selectOne("Member.memberIdCheck",id);
	}

	// 이메일 인증
	public int emailcheck(String email, String num) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("email",email);
		map.put("num", num);
		return mybatis.insert("Member.emailCheck",map);
	}

	// 이메일 인증 확인
	public int emailNumcheck(String email, int num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("email",email);
		map.put("num", num);
		return mybatis.selectOne("Member.emailNumcheck",map);
	}

	// 이메일 인증 삭제
	public int emailNumDelete(String email, int num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("email",email);
		map.put("num", num);
		return mybatis.delete("Member.emailNumDelete",map);
	}

	// 회원가입 처리
	public int joinAction(MemberDTO member) {
		return mybatis.insert("Member.joinAction",member);
	}

}
