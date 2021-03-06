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

	// 로그인
	public MemberDTO login(MemberDTO member) {
		return mybatis.selectOne("Member.login",member);
	}

	// 카카오로그인 계정 생성 여부 확인 및 로그인
	public MemberDTO kakaoLoginCheck(MemberDTO member) {
		return mybatis.selectOne("Member.kakaoLoginCheck",member);
	}

	// 카카오 계정 생성
	public int kakaoJoinAction(MemberDTO member) {
		return mybatis.insert("Member.kakaoJoinAction",member);
	}

	// 아이디 및 패스워드찾기
	public MemberDTO idSearch(String email) {
		return mybatis.selectOne("Member.idSearch",email);
	}

	// 패스워드 변경
	public int passwordCheange(MemberDTO member) {
		return mybatis.update("Member.passwordCheange",member);
	}
	// 이메일 중복 조회
	public int memberemailCheck(String email) {
		return mybatis.selectOne("Member.memberemailCheck",email);
	}
	// 로그인시 닉네임값 가져오기
	public String nickname(String id) {
		return mybatis.selectOne("Member.membernickname",id);
	}
	//public email 가져오기
	public String email(String id) {
		return mybatis.selectOne("Member.memberemail",id);
	}
	//이메일넣어서 회원정보 가져오기
	public MemberDTO email_member(String email) {
		return mybatis.selectOne("Member.email_member",email);
	}
	//아이디로 dto 가져오기
	public MemberDTO idmember(String id) {
		return mybatis.selectOne("Member.idval",id);
	}

}
