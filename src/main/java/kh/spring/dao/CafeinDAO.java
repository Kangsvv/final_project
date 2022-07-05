package kh.spring.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.dto.CafeinDTO;


@Repository
public class CafeinDAO {
	@Autowired
	private SqlSession mybatis;
	
	
	public void insert(String name,String address1,String address2,String day,String open,String finish,String parking)throws Exception{
		CafeinDTO dto=new CafeinDTO();
		dto.setName(name);
		dto.setAddress1(address1);
		dto.setAddress2(address2);
		dto.setDay(day);
		dto.setOpen(open);
		dto.setFinish(finish);
		dto.setParking(parking);
		 mybatis.insert("Cafein.cafein-insert",dto);
		 
	}
}
