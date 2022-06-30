package kh.spring.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	@Autowired private SqlSession mybatis;

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

}
