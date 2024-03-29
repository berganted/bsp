package book;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import comment.CommentVo;
import user.UserVo;

@Controller
public class BookController {

	@Autowired
	BookService service;
	
//------------베스트셀러(국내)	
	@RequestMapping("/book/Book_KbestSeller.do")
	public String solbestBook(Model model, BookVo vo) {
		vo.setB_ctgno1(1);
		model.addAttribute("list", service.solbestBook(vo));
		return "book/Book_KbestSeller";
	}
	
	
//------------베스트셀러(외국)	
	@RequestMapping("/book/Book_FbestSeller.do")
	public String solbestBookF(Model model, BookVo vo) {
		vo.setB_ctgno1(2);
		model.addAttribute("list", service.solbestBook(vo));
		return "book/Book_FbestSeller";
	}	
//------------신간도서(국내)	
	@RequestMapping("/book/Book_Knew.do")
	public String solnewBookK(Model model, BookVo vo) {
		vo.setB_ctgno1(1);
		model.addAttribute("list", service.solnewBook(vo));
		return "book/Book_Knew";
	}	
//------------신간도서(외국)	
	@RequestMapping("/book/Book_Fnew.do")
	public String solnewBookF(Model model, BookVo vo) {
		vo.setB_ctgno1(2);
		model.addAttribute("list", service.solnewBook(vo));
		return "book/Book_Fnew";
	}	

	
	
//-------------책상세	
	
	@RequestMapping("book/Book_detail.do")
	public String bookDetail(BookVo vo, UserVo uv, Model model,HttpSession sess) {
		
		model.addAttribute("vo", service.deatil(vo));
		sess.setAttribute("quick", service.deatil(vo));
		if(sess.getAttribute("userInfo")!=null) {
			uv = (UserVo) sess.getAttribute("userInfo");
			vo.setM_no(uv.getM_no());
		model.addAttribute("isOrder", service.isOrder(vo));
		model.addAttribute("isReview", service.isReview(vo));
		System.out.println(vo.getIsorder());
	}
		return "book/Book_detail";
	}
 //-----------------국내도서 상세분류 클릭시 나오는 list-----------------
	@RequestMapping("/book/Book_KsmallIdx.do")
	public String ksmall(Model model, BookVo vo) {
		
		model.addAttribute("list", service.selectAllBasic(vo));// list란 이름으로 전체 데이터가 dao에 담겨서 모델에 담김(=request에 담김=스프링이
		return "book/Book_KsmallIdx";
	}
	
	 //-----------------외국도서 상세분류 클릭시 나오는 list-----------------	
	@RequestMapping("/book/Book_FsmallIdx.do")
	public String fsmall(Model model, BookVo vo) {
		
		model.addAttribute("list", service.selectAllBasic(vo));
		return "book/Book_FsmallIdx";
	}
	

	//--------------------------국내도서 장르부분 (대분류중분류)---------------------------------------------------------------

	@RequestMapping("/book/Book_KbigIdx.do") // 가정살림
	public String kbig(BookVo vo, Model model) {
		//vo에 셋을 먼저 해줌
		vo.setDirect("ASC");
		vo.setB_ctgno1(1); //국내도서
		vo.setB_ctgno2key(1); // 중분류 이름값이 나온다 (ex가정살림)
		vo.setB_ctgno2(1); //상세분류 이름값(가정살림 안에 상세분류)
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));
		model.addAttribute("vo", service.selectCtgno2(vo)); // 중분류값
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo)); //상세분류값

		return "/book/Book_KbigIdx";

	}

	@RequestMapping("/book/Book_KbigIdx1.do") // 경제경영
	public String kbig1(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(1);
		vo.setB_ctgno2key(5); 
		vo.setB_ctgno2(2);
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));
	
		
		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));

		return "/book/Book_KbigIdx";
		
		//1. vo에 셋을 하면 됨 --> vo셋을 젤 위로
		//2. 넘어올 때 주소에 파라미터를 주는 방법

	}

	@RequestMapping("/book/Book_KbigIdx2.do") // 소설
	public String kbig2(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(1);
		vo.setB_ctgno2key(8); 
		vo.setB_ctgno2(3);
	
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));
		
	
		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		return "/book/Book_KbigIdx";
	}
	@RequestMapping("/book/Book_KbigIdx3.do") // 에세이
	public String kbig3(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(1);
		vo.setB_ctgno2key(12); 
		vo.setB_ctgno2(4);
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));

		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		return "/book/Book_KbigIdx";
	}
	@RequestMapping("/book/Book_KbigIdx4.do") // 여행
	public String kbig4(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(1);
		vo.setB_ctgno2key(16); 
		vo.setB_ctgno2(5);
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));

		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		return "/book/Book_KbigIdx";
	}
	@RequestMapping("/book/Book_KbigIdx5.do") // 인문
	public String kbig5(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(1);
		vo.setB_ctgno2key(19); 
		vo.setB_ctgno2(6);
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));
	
		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		return "/book/Book_KbigIdx";
	}
	@RequestMapping("/book/Book_KbigIdx6.do") // 자기계발
	public String kbig6(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(1);
		vo.setB_ctgno2key(23); // 자연과학
		vo.setB_ctgno2(7);
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));

		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		return "/book/Book_KbigIdx";
	}
	@RequestMapping("/book/Book_KbigIdx7.do") // IT모바일
	public String kbig7(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(1);
		vo.setB_ctgno2key(27); // 자연과학
		vo.setB_ctgno2(8);
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));

		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		return "/book/Book_KbigIdx";
	}
	
	//--------------------------외국도서 장르부분 (대분류중분류)---------------------------------------------------------------
	
	@RequestMapping("/book/Book_FbigIdx.do") // ELT사전
	public String fbig(BookVo vo, Model model) {
		//vo에 셋을 먼저 해줌
		vo.setDirect("ASC");
		vo.setB_ctgno1(2); //외국도서
		vo.setB_ctgno2key(31); // 중분류 이름값이 나온다 (ex가정살림)
		vo.setB_ctgno2(9); //상세분류 이름값(가정살림 안에 상세분류)
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));
		model.addAttribute("vo", service.selectCtgno2(vo)); // 중분류값
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo)); //상세분류값
		
		return "/book/Book_FbigIdx";
		
	}
	
	@RequestMapping("/book/Book_FbigIdx1.do") // 경제 경영
	public String fbig1(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(2);
		vo.setB_ctgno2key(35); 
		vo.setB_ctgno2(10);
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));
		
		
		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		
		return "/book/Book_FbigIdx";
		
		//1. vo에 셋을 하면 됨 --> vo셋을 젤 위로
		//2. 넘어올 때 주소에 파라미터를 주는 방법
		
	}
	
	@RequestMapping("/book/Book_FbigIdx2.do") // 라이프스타일
	public String fbig2(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(2);
		vo.setB_ctgno2key(39); 
		vo.setB_ctgno2(11);
		
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));
		
		
		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		return "/book/Book_FbigIdx";
	}
	@RequestMapping("/book/Book_FbigIdx3.do") // 소설
	public String fbig3(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(2);
		vo.setB_ctgno2key(43); 
		vo.setB_ctgno2(12);
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));
		
		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		return "/book/Book_FbigIdx";
	}
	@RequestMapping("/book/Book_FbigIdx4.do") // 인문/사회
	public String fbig4(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(2);
		vo.setB_ctgno2key(47); 
		vo.setB_ctgno2(13);
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));
		
		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		return "/book/Book_FbigIdx";
	}
	@RequestMapping("/book/Book_FbigIdx5.do") // 해외잡지
	public String fbig5(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(2);
		vo.setB_ctgno2key(51); 
		vo.setB_ctgno2(14);
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));
		
		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		return "/book/Book_FbigIdx";
	}
	@RequestMapping("/book/Book_FbigIdx6.do") // 컴퓨터
	public String fbig6(BookVo vo, Model model) {
		vo.setDirect("ASC");
		vo.setB_ctgno1(2);
		vo.setB_ctgno2key(54); // 자연과학
		vo.setB_ctgno2(15);
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));
		
		model.addAttribute("vo", service.selectCtgno2(vo));
		model.addAttribute("selectctgnamed", service.selectctgnamed(vo));
		return "/book/Book_FbigIdx";
	}

	
//-----------------------------------------------------------------------------------------------------------------------


	@RequestMapping("/sample/index.do")
	public String index(BookVo vo, Model model) {
		model.addAttribute("list1", service.selectAll1(vo));
		model.addAttribute("list2", service.selectAll2(vo));
		model.addAttribute("list3", service.selectAll3(vo));

		model.addAttribute("list4", service.selectAll4(vo));
		model.addAttribute("list5", service.selectAll5(vo));
		model.addAttribute("list6", service.selectAll6(vo));
		model.addAttribute("best", service.selectAll7(vo));
		model.addAttribute("popular", service.popular_search(vo));
		model.addAttribute("newbook", service.selectAll8(vo));

		System.out.println(vo.getP_word());
	return "/sample/index" ;
	}
	// index_search 검색 페이지 
	@RequestMapping("/book/index_search.do")
	public String search(Model model, BookVo vo, CommentVo cv) {
		System.out.println(vo.getSval());
		service.popular(vo);
		model.addAttribute("list0", service.selectAll(vo));
		return "sample/index_search";
	}

}
