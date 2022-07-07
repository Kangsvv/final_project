package kh.spring.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import kh.spring.dao.CafeinDAO;
import kh.spring.dao.Cafein_imgDAO;
import kh.spring.dto.CafeinDTO;
import kh.spring.dto.Cafein_imgDTO;

@Service
public class CafeinService {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private CafeinDAO dao;

	@Autowired
	private Cafein_imgDAO fdao;

	
	//--------------------Cafe 등록------------------------------
	@Transactional
	public void insert(String name,String address1,String address2,String day,String open,String finish,String parking,String realPath,MultipartFile file) throws Exception{
		realPath ="C:\\springWorkspace\\final_project\\src\\main\\webapp\\resources\\cafein";

		System.out.println(realPath);
		File filePath = new File(realPath);
		if(!filePath.exists())filePath .mkdir();
		System.out.println(realPath);
		String oriName =file.getOriginalFilename();
		String sysName = UUID.randomUUID() + "_"+oriName; //UUID.randomUUID()중복되지 임의값을 만들어 리턴 oriname 
		file.transferTo(new File(realPath + "/"+sysName));

		CafeinDTO dto=new CafeinDTO();
		dto.setName(name);
		dto.setAddress1(address1);
		dto.setAddress2(address2);
		dto.setDay(day);
		dto.setOpen(open);
		dto.setFinish(finish);
		dto.setParking(parking);
		int cafein_seq=dao.insert(dto);
		fdao.insert(new Cafein_imgDTO(0,oriName,sysName,cafein_seq));

	}
	
	//--------------------Cafe 리스트------------------------------
	public void cafein_imglist(Model model) throws Exception {
		List<Cafein_imgDTO> list = fdao.cafein_imglist();
		model.addAttribute("list",list);
	}
	//--------------------Cafe 상세정보------------------------------
	@Transactional
	public void selectBySeq(Model model,int cafein_seq) throws Exception {
		//-------------cafe정보----------------------
		CafeinDTO dto = dao.selectBySeq(cafein_seq);
		model.addAttribute("dto",dto);
		//-------------cafe이미지----------------------
		Cafein_imgDTO fdto = fdao.selectBySeq(cafein_seq);
		model.addAttribute("fdto",fdto);
		
	}
	
	public void delete(int cafein_seq) throws Exception {
		 dao.delete(cafein_seq);
		 fdao.delete(cafein_seq);
	}


}
