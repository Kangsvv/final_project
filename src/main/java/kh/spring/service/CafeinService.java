package kh.spring.service;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
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

		// 실시간으로 데이터를 만질려고
		realPath = session.getServletContext().getRealPath("/resources/cafein"); // 서버 경로 불러오는 거
		System.out.println(realPath);
		File filePath = new File(realPath);
		if(!filePath.exists())filePath .mkdir();
		System.out.println(realPath);
		String oriName =file.getOriginalFilename(); // DB용
		String sysName = UUID.randomUUID() + "_"+oriName; //UUID.randomUUID()중복되지 임의값을 만들어 리턴 oriname 
		file.transferTo(new File(realPath + "/"+sysName)); // 서버 경로 저장하기
		
		// 영구적으로 로컬 환경에도 옮겨야됨.
		String  localPath ="C:/springWorkspace/final_project/src/main/webapp/resources/cafein";
		File realFile = new File(realPath + "/"+sysName); // 파일 객체를 만든거예요 - 파일 데이터가 들어가 있음
		File localFile = new File(localPath + "/"+sysName); // 파일 객체를 만든거고 - 빈 껍데기
		// 실제 메모리상에 이 파일 객체 있는 거임.
		
		// 로컬 경로 복사
		Files.copy(realFile.toPath(), localFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
		// toPath() : 객체 안에 저장된 경로를 불러오는거
		// StandardCopyOption.REPLACE_EXISTING : 저장 옵션 - 덮어쓰기
		
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
	//----------------------Cafe 삭제---------------------------------
	public void delete(int cafein_seq,String realPath,MultipartFile file) throws Exception {
		//해당 경로에 이미지파일 있으면 삭제
		realPath ="C:\\springWorkspace\\final_project\\src\\main\\webapp\\resources\\cafein";
		String sys_name = fdao.deletefile(cafein_seq);
		File filePath = new File(realPath+"\\"+sys_name);
		if(filePath.exists())filePath .delete();

		 dao.delete(cafein_seq);
		 fdao.delete(cafein_seq);
	}
	//------------------------------------------------------------------
	public void update(int cafein_seq,String name,String address1,String address2,String day,String open,String finish,String parking,String realPath,MultipartFile file) throws Exception{
		
		
		CafeinDTO dto=new CafeinDTO();
		dto.setName(name);
		dto.setAddress1(address1);
		dto.setAddress2(address2);
		dto.setDay(day);
		dto.setOpen(open);
		dto.setFinish(finish);
		dto.setParking(parking);
		
	}


}
