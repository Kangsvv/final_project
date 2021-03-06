package kh.spring.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.dto.Feed_imgDTO;

@Repository
public class Feed_imgDAO {
	
	@Autowired
	private SqlSession mybatis;
	
	//--------------------피드이미지 등록-----------------
	public void insert(Feed_imgDTO dto)throws Exception{
		mybatis.insert("Feed.feed_img-insert",dto);
	}
	//--------------------피드리스트(사진)-----------------
	public List<Feed_imgDTO> feed_imglist(int cpage) throws Exception{
		
		int start = (cpage-1)*18+1;
		int end = (cpage)*18;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("start", start);
		map.put("end", end);
		
		return mybatis.selectList("Feed.feed_img-select",map);
	}
	//-------------------피드 상세페이지출력-----------------
	public Feed_imgDTO selectBySeq(int cafefeed_seq) {
		return mybatis.selectOne("Feed.feed_img-detail",cafefeed_seq);
	}
	//--------------------피드 이미지 삭제-----------------
	public void delete(int cafefeed_seq)throws Exception{
		mybatis.delete("Feed.feed_img-delete",cafefeed_seq);
	}
	//--------------------삭제할 피드 이미지파일이름 뽑아내기---------
	public String deletefile(int cafefeed_seq) {
		return mybatis.selectOne("Feed.feed_imgfile",cafefeed_seq);
	}
	//----------------------수정-------------------------
	public int update(String oriName,String sysName,int cafefeed_seq)throws Exception{
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ori_name", oriName);
		map.put("sys_name", sysName);
		map.put("cafefeed_seq",cafefeed_seq);
		
		return mybatis.update("Feed.feed_img-update",map);
	}
	
}
