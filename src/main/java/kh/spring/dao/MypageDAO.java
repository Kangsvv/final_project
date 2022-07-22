package kh.spring.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.SessionAttributes;

import kh.spring.dto.Cafein_imgDTO;
import kh.spring.dto.Feed_imgDTO;
import kh.spring.dto.MemberDTO;

@SessionAttributes({"loginMember"})
@Repository
public class MypageDAO {
	
	@Autowired 
	private SqlSessionTemplate mybatis;
	
	
	//내 정보 출력
	public MemberDTO selectID(String loginID) throws Exception {
		return mybatis.selectOne("mypage.selectID",loginID) ;
	}
	
	//내 카게 이미지 출력
	public List<Cafein_imgDTO> selectcafeinimg(String loginID) throws Exception {
		return mybatis.selectList("mypage.selectcafeinimg", loginID) ;
	}
	
	//내 피드 이미지 출력
	public List<Feed_imgDTO> selectfeedimg(String loginID) throws Exception {
		return mybatis.selectList("mypage.selectfeedimg", loginID) ;
	}
	
	//내 피드 게시물 수
	public int countfeed(String loginID) throws Exception { 
		  return mybatis.selectOne("mypage.countfeed", loginID) ; 
	} 
	  
	//내 카페 게시물 수
	public int countcafein(String loginID) throws Exception {  
		  return mybatis.selectOne("mypage.countcafein", loginID) ; 
	}
	  
	 
	//내 정보 수정
	public int mypageUpdate(MemberDTO dto)throws Exception{
		return mybatis.update("mypage.mypageUpdate",dto);
	}
	
	//나 자신 탈퇴
	public int memberout(String loginID)throws Exception{
		return mybatis.delete("mypage.memberout",loginID);
	}

	public int memberout2(String loginID)throws Exception{
		return mybatis.delete("mypage.memberout2",loginID);
	}
	
	public int memberout3(String loginID)throws Exception{
		return mybatis.delete("mypage.memberout3",loginID);
	}
	
	public int memberout4(String loginID)throws Exception{
		return mybatis.delete("mypage.memberout4",loginID);
	}

}
