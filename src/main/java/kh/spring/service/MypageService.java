package kh.spring.service;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import kh.spring.dao.MypageDAO;
import kh.spring.dto.MemberDTO;

@Service
public class MypageService {
	@Autowired 
	private MypageDAO pDAO;
	
	@Autowired
	private HttpSession session;
	
	@Transactional
	public void mypageupdate(String realPath, MultipartFile file, String memName, String memPhone) throws Exception{
		// 실시간으로 데이터를 만질려고
				realPath = session.getServletContext().getRealPath("/resources/mypage"); // 서버 경로 불러오는 거
				System.out.println(realPath);
				File filePath = new File(realPath);
				if(!filePath.exists())filePath .mkdir();
				System.out.println(realPath);
				String oriName =file.getOriginalFilename(); // DB용
				String sysName = UUID.randomUUID() + "_"+oriName; //UUID.randomUUID()중복되지 임의값을 만들어 리턴 oriname 
				file.transferTo(new File(realPath + "/"+sysName)); // 서버 경로 저장하기

				// 영구적으로 로컬 환경에도 옮겨야됨.
				String  localPath ="C:/Users/LG PC/Desktop/kh/springWorkspace/final_project/src/main/webapp/resources/mypage";
				File realFile = new File(realPath + "/"+sysName); // 파일 객체를 만든거예요 - 파일 데이터가 들어가 있음
				File localFile = new File(localPath + "/"+sysName); // 파일 객체를 만든거고 - 빈 껍데기
				// 실제 메모리상에 이 파일 객체 있는 거임.

				// 로컬 경로 복사
				Files.copy(realFile.toPath(), localFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
				// toPath() : 객체 안에 저장된 경로를 불러오는거
				// StandardCopyOption.REPLACE_EXISTING : 저장 옵션 - 덮어쓰기
				
				String loginID = (String)session.getAttribute("loginID");
				MemberDTO dto = new MemberDTO();
				dto.setmem_img(sysName);
				dto.setmem_name(memName);
				dto.setmem_phone(memPhone);
				dto.setmem_oriname(oriName);
				dto.setmem_id(loginID);
				pDAO.mypageUpdate(dto);

	}

}
