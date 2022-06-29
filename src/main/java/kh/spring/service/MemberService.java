package kh.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.dao.MemberDAO;

@Service
public class MemberService {
	@Autowired private MemberDAO memberDAO;

	// 아이디 중복 조회
	public int memberIdCheck(String id) {
		return memberDAO.memberIdCheck(id);
	}

}
