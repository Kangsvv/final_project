package kh.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kh.spring.dao.MemberDAO;
import kh.spring.dto.MemberDTO;

@Service
public class MemberService {
	@Autowired private MemberDAO memberDAO;

	// 아이디 중복 조회
	public int memberIdCheck(String id) {
		return memberDAO.memberIdCheck(id);
	}

	// 이메일 인증
	@Transactional
	public int emailCheck(String email, String num) {
		return memberDAO.emailcheck(email,num);
	}

	// 이메일 인증 확인
	public int emailNumCheck(String email, int num) {
		return memberDAO.emailNumcheck(email,num);
	}

	// 이메일 인증 삭제
	public int emailNumDelete(String email, int num) {
		return memberDAO.emailNumDelete(email,num);
	}

	// 회원가입처리
	public int joinAction(MemberDTO member) {
		return memberDAO.joinAction(member);
	}

}
