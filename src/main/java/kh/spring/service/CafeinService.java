package kh.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.dao.CafeinDAO;

@Service
public class CafeinService {
	@Autowired
	private CafeinDAO dao;
	
	public void insert(String name,String address1,String address2,String day,String open,String finish,String parking) throws Exception{
		
		dao.insert(name,address1,address2,day,open,finish,parking);
	}
}
