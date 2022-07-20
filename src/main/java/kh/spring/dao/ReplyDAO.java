package kh.spring.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.dto.ReplyDTO;

@Repository
public class ReplyDAO {
	
	@Autowired 
	private SqlSession mybatis;
	
	
	public void replyWriteProc(ReplyDTO dto) throws Exception{
		mybatis.insert("Feed.reply_insert",dto);
	}
	
	public List<ReplyDTO> selectBySeq(int cafefeed_seq, int page) throws Exception {
		
		int start = (page-1)*10+1;
		int end = (page)*10;
		
		System.out.println(start +" : "+ end);
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("start", start);
		map.put("end", end);
		map.put("cafefeed_seq", cafefeed_seq);
		
		return mybatis.selectList("Feed.replylist_select", map);
	}
	public void deleteReply(int seq) throws Exception{
		mybatis.delete("Feed.reply_delete", seq);
	}
	public void ModifyReply(ReplyDTO dto) {
		mybatis.update("Feed.reply_update", dto);
	}
public List<ReplyDTO> selectBySeqOne(int seq) throws Exception {
		
		return mybatis.selectOne("Feed.replylist_selectOne", seq);
	}
}
