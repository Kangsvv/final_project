package kh.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kh.spring.dao.FeedDAO;
import kh.spring.dto.FeedDTO;

@Service
public class FeedService {

	@Autowired
	private FeedDAO dao;
	
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
		
}
