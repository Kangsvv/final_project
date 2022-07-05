package kh.spring.service;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
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
	
	@Transactional
	public void insert(String name,String address1,String address2,String day,String open,String finish,String parking,String realPath,MultipartFile file) throws Exception{
		
		realPath = session.getServletContext().getRealPath("Cafein-files");
		File realPathFile = new File(realPath);
		if(!realPathFile.exists())realPathFile.mkdir();
		
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
		int seq=dao.insert(dto);
		fdao.insert(new Cafein_imgDTO(0,oriName,sysName,seq));
//		int seq=dao.insert(name,address1,address2,day,open,finish,parking);
	}
}
