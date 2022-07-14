package kh.spring.dao;

import java.util.List;

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
	
	public List<ReplyDTO> selectBySeq(int cafefeed_seq) throws Exception {
		return mybatis.selectList("Feed.replylist_select", cafefeed_seq);
	}
	public void deleteReply(int seq) throws Exception{
		mybatis.delete("Feed.reply_delete", seq);
	}
}
