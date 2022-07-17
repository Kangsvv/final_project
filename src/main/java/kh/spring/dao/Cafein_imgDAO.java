package kh.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kh.spring.dto.CafeinDTO;
import kh.spring.dto.Cafein_imgDTO;


@Repository
public class Cafein_imgDAO {
	
	@Autowired
	private SqlSession mybatis;
	
	//--------------------카페이미지 등록-----------------
	public void insert(Cafein_imgDTO dto)throws Exception{
		mybatis.insert("Cafein.cafein_img-insert",dto);
	}
	//--------------------카페리스트(사진)-----------------
	public List<Cafein_imgDTO> cafein_imglist(int page) throws Exception{
		int start = (page-1)*18+1;
		int end = (page)*18;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", start);
		map.put("end", end);
		
		System.out.println("cafeindao.확인");
		
		return mybatis.selectList("Cafein.cafein_img-select",map);
	}
	//--------------------카페 리스트 2-------------------
	public List<Cafein_imgDTO> cafein_imglist2()throws Exception{
		return mybatis.selectList("Cafein.cafein_img-select2");
	}
	
	//--------------------카페 상세페이지출력-----------------
	public Cafein_imgDTO selectBySeq(int cafein_seq) {
		return mybatis.selectOne("Cafein.cafein_img-detail",cafein_seq);
	}
	//--------------------카페 이미지 삭제-----------------
	public void delete(int cafein_seq)throws Exception{
		mybatis.delete("Cafein.cafein_img-delete",cafein_seq);
	}
	//--------------------삭제할 카페 이미지파일이름 뽑아내기---------
	public String deletefile(int cafein_seq) {
		return mybatis.selectOne("Cafein.cafein_imgfile",cafein_seq);
	}
	//----------------------수정-------------------------
	public int update(String oriName,String sysName,int cafein_seq)throws Exception{
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ori_name", oriName);
		map.put("sys_name", sysName);
		map.put("cafein_seq",cafein_seq);
		
		return mybatis.update("Cafein.cafein_img-update",map);
	}
	
}
