package kh.spring.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.dto.BookmarkDTO;
import kh.spring.dto.FeedDTO;
import kh.spring.dto.Feed_imgDTO;
import kh.spring.dto.Feed_likeDTO;
import kh.spring.dto.SeqDTO;

@Repository
public class FeedDAO {

	@Autowired 
	private SqlSession mybatis;

	// 무한스크롤 최신순
	public List<Feed_imgDTO> selectAllrs(int cpage){

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
	public List<Feed_imgDTO> feedSearchResult(String search,int cpage){
		String start = Integer.toString((cpage-1)*18+1);
		String end = Integer.toString((cpage)*18);
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("title", search);
		map.put("start", start);
		map.put("end", end);
		return mybatis.selectList("Feed.feedSearchResult", map);
	}
	public int insert(FeedDTO dto) throws Exception{

		  mybatis.insert("Feed.feed-insert",dto);
		  
		  return dto.getCafefeed_seq();
	}
	// 리뷰 정보 가져오기
	public FeedDTO selectBySeq(int cafefeed_seq) {
		return mybatis.selectOne("Feed.feed-detail",cafefeed_seq);
	}
	public int delete(int cafefeed_seq) throws Exception{
		return mybatis.delete("Feed.feed-delete", cafefeed_seq);
	}
	// 카페정보 수정
	public int update(FeedDTO dto)throws Exception{
		return mybatis.update("Feed.feed-update",dto);
	}
	// 조회수 업
	public void countUp(int cafefeed_seq) {
		mybatis.update("Feed.countUp",cafefeed_seq);
	}
	public int bookmarkInsert(BookmarkDTO dto) throws Exception {
		
		return mybatis.insert("Feed.bookmarkInsert", dto);
	}
	public int bookmarkDelete(BookmarkDTO dto) throws Exception {
		
		return mybatis.delete("Feed.bookmarkDelete", dto);
	}
	public BookmarkDTO isDetailBook(BookmarkDTO dto) throws Exception {
		
		return mybatis.selectOne("Feed.isDetailBook", dto);
	}
	public int isBookChecking(BookmarkDTO dto) throws Exception {
		return mybatis.selectOne("Feed.isBookChecking", dto);
	}
	//------------------------------- 좋아요 부분--------------------------------
	public int likeInsert(Feed_likeDTO dto) throws Exception {
		
		return mybatis.insert("Feed.likeInsert", dto);
	}
	public int likeDelete(Feed_likeDTO dto) throws Exception {
		
		return mybatis.delete("Feed.likeDelete", dto);
	}
	public Feed_likeDTO islikeOk(Feed_likeDTO dto) throws Exception {
		
		return mybatis.selectOne("Feed.isLikeOk", dto);
	}
	public int islikeCnt(Feed_likeDTO dto) throws Exception {
		return mybatis.selectOne("Feed.isLikeCnt", dto);
	}
	
	public List<SeqDTO> SearchByTitle(String title) throws Exception {
		return mybatis.selectList("Feed.SearchByTitle", title);
	}
	public List<Feed_imgDTO> feedSearchBySeq(List<SeqDTO> flist_seq, int cpage){
		int start = (cpage-1)*18+1;
		int end = (cpage)*18;
		List<SeqDTO> list = flist_seq;
		
		System.out.println(list);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("list", list);
		map.put("start", start);
		map.put("end", end);
		return mybatis.selectList("Feed.feedSearchBySeq", map);
	}
	public String selectByCafefeed_seq(int cafefeed_seq) throws Exception{
		System.out.println(cafefeed_seq);
		return mybatis.selectOne("Feed.selectByCafefeed_seq", cafefeed_seq);
	}
	public String selectById(String id) throws Exception{
		System.out.println(id);
		return mybatis.selectOne("Feed.selectById", id);
	}
	
}
