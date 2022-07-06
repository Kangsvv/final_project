package kh.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kh.spring.dto.Cafein_imgDTO;


@Repository
public class Cafein_imgDAO {
	
	@Autowired
	private SqlSession mybatis;
	
	
	public void insert(Cafein_imgDTO dto)throws Exception{
		mybatis.insert("Cafein.cafein_img-insert",dto);
	}
	
	public List<Cafein_imgDTO> cafein_imglist() throws Exception{
		return mybatis.selectList("Cafein.cafein_img-select");
	}

}
