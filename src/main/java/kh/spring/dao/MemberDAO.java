package kh.spring.dao;

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

}
