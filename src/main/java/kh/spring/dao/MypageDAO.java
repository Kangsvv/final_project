package kh.spring.dao;

import org.apache.catalina.Session;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.SessionAttributes;

import kh.spring.dto.MemberDTO;

@SessionAttributes({"loginMember"})
@Repository
public class MypageDAO {
	
	@Autowired 
	private SqlSessionTemplate mybatis;
	
	public MemberDTO selectID(String loginID) throws Exception {
		return mybatis.selectOne("mypage.selectID",loginID) ;
	}

}
