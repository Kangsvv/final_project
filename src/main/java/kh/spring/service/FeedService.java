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

import kh.spring.dao.FeedDAO;
import kh.spring.dao.Feed_imgDAO;
import kh.spring.dao.MemberDAO;
import kh.spring.dto.CafeinDTO;
import kh.spring.dto.Cafein_imgDTO;
import kh.spring.dto.FeedDTO;
import kh.spring.dto.Feed_imgDTO;

@Service
public class FeedService {

	@Autowired
	private FeedDAO dao;
	
	@Autowired
	private HttpSession session;

	@Autowired
	private MemberDAO mdao;
	
	@Autowired
	private Feed_imgDAO fdao;
	
	
	// 최신순 출력
		public List<FeedDTO> selectAllrs(Model model, int cpage) throws Exception {
			System.out.println("goFeed Serv 준비중");
		
		return dao.selectAllrs(cpage);
	}
	
	// 인기순 출력
		public void selectAllpp(Model model) throws Exception {
			
			List<FeedDTO> list = dao.selectAllpp();
			model.addAttribute("list",list);
		}
		
	// 피드 검색결과 출력
		public List<FeedDTO> feedSearchResult(Model model,String search, int cpage) throws Exception{
			
			return dao.feedSearchResult(search, cpage);
		}
	//--------------------리뷰 등록------------------------------
		@Transactional
		public void insert(String title, String contents,String realPath, MultipartFile file) throws Exception{

			// 실시간으로 데이터를 만질려고
			realPath = session.getServletContext().getRealPath("/resources/feed"); // 서버 경로 불러오는 거
			System.out.println(realPath);
			File filePath = new File(realPath);
			if(!filePath.exists())filePath .mkdir();
			System.out.println(realPath);
			String oriName =file.getOriginalFilename(); // DB용
			String sysName = UUID.randomUUID() + "_"+oriName; //UUID.randomUUID()중복되지 임의값을 만들어 리턴 oriname 
			file.transferTo(new File(realPath + "/"+sysName)); // 서버 경로 저장하기

			// 영구적으로 로컬 환경에도 옮겨야됨.
//			String  localPath ="C:/SpringWorkspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/final_project/resources/feed";
			String  localPath ="A:/springWorkspace/final_project/src/main/webapp/resources/feed";
			File realFile = new File(realPath + "/"+sysName); // 파일 객체를 만든거예요 - 파일 데이터가 들어가 있음
			File localFile = new File(localPath + "/"+sysName); // 파일 객체를 만든거고 - 빈 껍데기
			// 실제 메모리상에 이 파일 객체 있는 거임.

			// 로컬 경로 복사
			Files.copy(realFile.toPath(), localFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
			// toPath() : 객체 안에 저장된 경로를 불러오는거
			// StandardCopyOption.REPLACE_EXISTING : 저장 옵션 - 덮어쓰기

			String id = (String)session.getAttribute("loginID");
//			String nickname = mdao.nickname(id);
			
			FeedDTO dto = new FeedDTO();
			dto.setTitle(title);
			dto.setId(id);
			dto.setContents(contents);
			int cafefeed_seq = dao.insert(dto);
			fdao.insert(new Feed_imgDTO(0,oriName,sysName,cafefeed_seq));

		}
		// 카페 이미지 출력 FeedMain
		public void feed_imglist(Model model) throws Exception {
			List<Feed_imgDTO> list = fdao.feed_imglist();
			
			System.out.println(list);
			
			model.addAttribute("imgList",list);
		}
		// 카페 상세 페이지 출력 detailView
		@Transactional
		public void selectBySeq(Model model,int cafefeed_seq) throws Exception {
			System.out.println("Service CS : " + cafefeed_seq );
			//-------------리뷰정보----------------------
			FeedDTO dto = dao.selectBySeq(cafefeed_seq);
			
			System.out.println(dto);
			
			model.addAttribute("dto",dto);
			//-------------리뷰이미지----------------------
			Feed_imgDTO fdto = fdao.selectBySeq(cafefeed_seq);
			
			System.out.println(fdto);
			
			model.addAttribute("fdto",fdto);
		}
		public void deleteFeedBySeq(int cafefeed_seq,String realPath,MultipartFile file) throws Exception {
			//해당 경로에 이미지파일 있으면 삭제
			realPath ="C:\\SpringWorkspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\final_project\\resources\\feed";
			String sys_name = fdao.deletefile(cafefeed_seq);
			File filePath = new File(realPath+"\\"+sys_name);
			if(filePath.exists())filePath .delete();

			dao.delete(cafefeed_seq);
			fdao.delete(cafefeed_seq);
		}
}
