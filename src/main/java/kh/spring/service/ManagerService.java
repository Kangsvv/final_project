package kh.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kh.spring.dao.ManagerDAO;
import kh.spring.dto.MemberDTO;

@Service
public class ManagerService {

	@Autowired
	private ManagerDAO dao;
	
	public void selectNomal(Model model) throws Exception {
		List<MemberDTO> list = dao.selectNomal();
		model.addAttribute("list",list);
	}
	
	public void selectCEO(Model model) throws Exception {
		List<MemberDTO> list = dao.selectCEO();
		model.addAttribute("list",list);
	}
	
	public void delete(String id) throws Exception{
		dao.delete(id);
	}
	
	public String selectIMG(String id) throws Exception{
		return dao.selectIMG(id);
	}
	
	public void CEOok(String id) throws Exception{
		dao.CEOok(id);
	}
	
	public void leveldown(String id) throws Exception{
		dao.leveldown(id);
	}
}
