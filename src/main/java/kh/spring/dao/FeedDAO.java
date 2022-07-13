package kh.spring.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.dto.CafeinDTO;
import kh.spring.dto.FeedDTO;

@Repository
public class FeedDAO {

	@Autowired 
	private SqlSession mybatis;

	// 무한스크롤 최신순
	public List<FeedDTO> selectAllrs(int cpage){

		int start = (cpage-1)*18+1;
		int end = (cpage)*18;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("start", start);
		map.put("end", end);
		
		System.out.println("goFeed DAO 준비중");

		return mybatis.selectList("Feed.selectAllrs", map);
	}
	// 무한스크롤 인기순 : 미완
	public List<FeedDTO> selectAllpp(){

		return mybatis.selectList("Feed.selectAllpp");
	}
	
	// 피드 검색결과 출력
	public List<FeedDTO> feedSearchResult(String search,int cpage){
		String start = Integer.toString((cpage-1)*18+1);
		String end = Integer.toString((cpage)*18);
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("title", search);
		map.put("start", start);
		map.put("end", end);
		return mybatis.selectList("Feed.feedSearchResult", map);
	}
	public int insert(FeedDTO dto)throws Exception{

		  mybatis.insert("Feed.feed-insert",dto);
		  
		  return dto.getCafefeed_seq();
			 
	}
}
