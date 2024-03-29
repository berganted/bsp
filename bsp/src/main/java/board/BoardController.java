package board;

import java.io.File;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import comment.CommentService;
import comment.CommentVo;
import faq_board.FboardVo;

@Controller
public class BoardController {
	
	@Autowired
	BoardService service;
	@Autowired
	CommentService cService; 
	
	static final String TABLENAME = "board";
	
	@RequestMapping("/sample/FAQboard.do")
	public String index(Model model, BoardVo vo, CommentVo cv) {
		model.addAttribute("list", service.selectAll(vo));
		return "sample/FAQboard";
	}
	
	@RequestMapping("/sample/board_view.do")
	public String detail(Model model, BoardVo vo, CommentVo cv) {
		model.addAttribute("vo", service.detail(vo));
		
		return "sample/board_view";
	}
	
	@RequestMapping("/sample/board_write.do")
	public String write(Model model, BoardVo vo) {
		return "sample/board_write";
	}
	
	@RequestMapping("/sample/board_reply.do")
	public String board(Model model, BoardVo vo) {
		BoardVo rv = service.detail(vo);
		model.addAttribute("q_gno", rv.getQ_gno());
		model.addAttribute("q_ono", rv.getQ_ono());
		model.addAttribute("q_nested", rv.getQ_nested());
		
		return "sample/board_reply";
	}
	
	@RequestMapping("/sample/insert.do")
	public String insert(Model model, BoardVo vo, 
						 HttpServletRequest req) { //@RequestParam MultipartFile file,
		//service.insert(vo, filename, req)
//		if (!file.isEmpty()) { // 첨부파일이 있으면!
//			try {
//				String org = file.getOriginalFilename(); // 원본파일명..
//				String ext = ""; //확장자
//				
//				ext = org.substring(org.lastIndexOf("."));
//				String real = new Date().getTime()+ext; // 서버에 저장할 파일명
//				// 파일 저장
//				String path = req.getRealPath("/upload/"); // 경로
//				file.transferTo(new File(path+real)); // 경로+파일명 저장
//				// vo에 set
//				vo.setFilename_org(org);
//				vo.setFilename_real(real);
//			} catch (Exception e) {
//				
//			}
//		}
		int r = service.insert(vo);
		// r > 0 : 정상 -> alert -> 목록으로 이동
		// r == 0 : 비정상 -> alert -> 이전페이지로 이동
		if (r > 0) {
			model.addAttribute("msg", "정상적으로 등록되었습니다.");
			model.addAttribute("url", "FAQboard.do");
		} else {
			model.addAttribute("msg", "등록실패");
			model.addAttribute("url", "board_write.do"); 
		}
		return "include/alert";
	}
	
	@RequestMapping("/sample/insertReply.do")
	public String insertReply(Model model, BoardVo vo, 
			@RequestParam MultipartFile file, HttpServletRequest req) {
		if (!file.isEmpty()) { // 첨부파일이 있으면
			try {
				String org = file.getOriginalFilename(); // 원본파일명
				String ext = ""; //확장자
				ext = org.substring(org.lastIndexOf("."));
				String real = new Date().getTime()+ext; // 서버에 저장할 파일명
				String path = req.getRealPath("/upload/"); // 경로
				file.transferTo(new File(path+real)); // 경로+파일명 저장
				vo.setFilename_org(org);
				vo.setFilename_real(real);
			} catch (Exception e) {
			}
		}
		int r = service.insertReply(vo);
		if (r > 0) {
			model.addAttribute("msg", "정상적으로 등록되었습니다.");
			model.addAttribute("url", "FAQboard.do");
		} else {
			model.addAttribute("msg", "등록실패");
			model.addAttribute("url", "board_write.do");
		}
		return "include/alert";
	}
	  
	@RequestMapping("/sample/board_edit.do")
	public String edit(Model model, BoardVo vo) {
		model.addAttribute("vo", service.edit(vo));
		return "sample/board_edit"; 
	}
	
	@RequestMapping("/sample/update.do")
	public String update(Model model, BoardVo vo, HttpServletRequest req) { // , @RequestParam MultipartFile file
		//service.insert(vo, filename, req)
		/*
		 * if (!file.isEmpty()) { // 첨부파일이 있으면 try { String org =
		 * file.getOriginalFilename(); // 원본파일명 String ext = ""; //확장자
		 * 
		 * ext = org.substring(org.lastIndexOf(".")); String real = new
		 * Date().getTime()+ext; // 서버에 저장할 파일명 // 파일 저장 String path =
		 * req.getRealPath("/upload/"); // 경로 file.transferTo(new File(path+real)); //
		 * 경로+파일명 저장 // vo에 set vo.setFilename_org(org); vo.setFilename_real(real); }
		 * catch (Exception e) {
		 * 
		 * } }
		 */
		int r = service.update(vo);
		// r > 0 : 정상 -> alert -> 목록으로 이동
		// r == 0 : 비정상 -> alert -> 이전페이지로 이동
		if (r > 0) {
			model.addAttribute("msg", "정상적으로 수정되었습니다.");
			model.addAttribute("url", "FAQboard.do");
		} else {
			model.addAttribute("msg", "수정실패");
			model.addAttribute("url", "board_edit.do?q_no="+vo.getQ_no());
		}
		return "include/alert";
	}
	
	@RequestMapping("/sample/delete.do")
	public String delete(Model model, BoardVo vo, HttpServletRequest req) {
		int r = service.delete(vo);
		if (r > 0) {
			model.addAttribute("result", "true");
		} else {
			model.addAttribute("result", "false");
		}
		return "include/result";
	}
	
	@RequestMapping("/comment/insert.do")
	public String commentInsert(Model model, CommentVo vo) {
		vo.setC_tablename(TABLENAME);
		int r = cService.insert(vo);
		if (r > 0) {
			model.addAttribute("result", "true");
		} else {
			model.addAttribute("result", "false");
		}
		return "include/result";
	}
	
	@RequestMapping("/comment/list.do")
	public String commentList(Model model, CommentVo cv) {
		cv.setC_tablename(TABLENAME);
		model.addAttribute("list", cService.selectAll(cv));
		return "include/comment";
	}
	
	@RequestMapping("/comment/delete.do")
	public String commentDelete(Model model, CommentVo vo) {
		int r = cService.delete(vo);
		if (r > 0) {
			model.addAttribute("result", "true");
		} else {
			model.addAttribute("result", "false");
		}
		return "include/result";
	}
}
