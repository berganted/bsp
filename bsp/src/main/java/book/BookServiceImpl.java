package book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import order.OrderVo;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	BookDao dao;
	@Override
	public List<BookVo> selectAll(BookVo vo) {
		int totCount = dao.count(vo); // 총갯수
		// 총페이지수
		int totPage = totCount / vo.getPageRow();
		if (totCount % vo.getPageRow() > 0) totPage++;
		// 시작페이지
		int strPage = (vo.getReqPage()-1)/vo.getPageRange()
						*vo.getPageRange()+1;
		int endPage = strPage+vo.getPageRange()-1;
		if (endPage > totPage) endPage = totPage;
		
		vo.setStrPage(strPage);
		vo.setEndPage(endPage);
		vo.setTotCount(totCount);
		vo.setTotPage(totPage);
		System.out.println(vo);
		return dao.selectAll(vo);
	}



	@Override
	public int insert(BookVo vo) {
		return dao.insert(vo);
	}

	
	@Override
	public BookVo edit(BookVo vo) {
		return dao.detail(vo);
	}
	
	@Override
	public int update(BookVo vo) {
		return dao.update(vo);
	}
	
	@Override
	public int delete(BookVo vo) {
		return dao.delete(vo);
	}
	@Override
	public int deletead(BookVo vo) {
		return dao.deletead(vo);
	}

	@Override
	public BookVo deatil(BookVo vo) {
		return  dao.detail(vo);
	}

	
	
	
	
	@Override
	public List<BookVo> selectAll1(BookVo vo) {
		return dao.selectAll1(vo);
	}

	@Override
	public List<BookVo> selectAll2(BookVo vo) {
		return dao.selectAll2(vo);
	}
	@Override
	public List<BookVo> selectAll3(BookVo vo) {
		return dao.selectAll3(vo);
	}
	
	// index.do 오늘의 책	
	@Override
	public List<BookVo> selectAll4(BookVo vo) {
		return dao.selectAll4(vo);
	}
	// index.do 광고
	@Override
	public List<BookVo> selectAll5(BookVo vo) {
		return dao.selectAll5(vo);
	}
	@Override
	public List<BookVo> selectAll6(BookVo vo) {
		return dao.selectAll6(vo);
	}
	// index.do 베스트샐러
	@Override
	public List<BookVo> selectAll7(BookVo vo) {
		return dao.selectAll7(vo);
	}
	// index.do 신상
	@Override
	public List<BookVo> selectAll8(BookVo vo) {
		return dao.selectAll8(vo);
	}
	// popular 인기검색어
	@Override
	public int popular(BookVo vo) {
		return dao.popular(vo);
	}
	@Override
	public List<BookVo> popular_search(BookVo vo) {
		return dao.popular_search(vo);
	}

	@Override
	public BookVo selectCtgno2(BookVo vo) {
		return dao.selectCtgno2(vo);
	}

	@Override
	public List<BookVo> selectctgnamed(BookVo vo) {
		return dao.selectctgnamed(vo);
	}



	@Override
	public List<BookVo> selectAllBasic(BookVo vo) {
		int totCount = dao.smallCount(vo); // 총갯수
		// 총페이지수
		int totPage = totCount / vo.getPageRow();
		if (totCount % vo.getPageRow() > 0) totPage++;
		// 시작페이지
		int strPage = (vo.getReqPage()-1)/vo.getPageRange()
						*vo.getPageRange()+1;
		int endPage = strPage+vo.getPageRange()-1;
		if (endPage > totPage) endPage = totPage;
		
		vo.setStrPage(strPage);
		vo.setEndPage(endPage);
		vo.setTotCount(totCount);
		vo.setTotPage(totPage);
		System.out.println(vo);
		return dao.selectAllBasic(vo);
	}

	//베스트셀러
	@Override
	public List<BookVo> solbestBook(BookVo vo) {
		int totCount = dao.solbestCount(vo); // 총갯수
		// 총페이지수
		int totPage = totCount / vo.getPageRow();
		if (totCount % vo.getPageRow() > 0) totPage++;
		// 시작페이지
		int strPage = (vo.getReqPage()-1)/vo.getPageRange()
						*vo.getPageRange()+1;
		int endPage = strPage+vo.getPageRange()-1;
		if (endPage > totPage) endPage = totPage;
		
		vo.setStrPage(strPage);
		vo.setEndPage(endPage);
		vo.setTotCount(totCount);
		vo.setTotPage(totPage);
		System.out.println(vo);
		
		return dao.solbestBook(vo);
	}
	
	//신간도서

	@Override
	public List<BookVo> solnewBook(BookVo vo) {
		int totCount = dao.solnewCount(vo); // 총갯수
		// 총페이지수
		int totPage = totCount / vo.getPageRow();
		if (totCount % vo.getPageRow() > 0) totPage++;
		// 시작페이지
		int strPage = (vo.getReqPage()-1)/vo.getPageRange()
						*vo.getPageRange()+1;
		int endPage = strPage+vo.getPageRange()-1;
		if (endPage > totPage) endPage = totPage;
		
		vo.setStrPage(strPage);
		vo.setEndPage(endPage);
		vo.setTotCount(totCount);
		vo.setTotPage(totPage);
		System.out.println(vo);
		
		return dao.solnewBook(vo);
	}


	
	
	// 관리자 //
	// 관리자 상품 리스트
	@Override
	public List<BookVo> selectAlladmin(BookVo vo) {
		int totCount = dao.selectAlladmincnt(vo); // 총갯수
		// 총페이지수
		int totPage = totCount / vo.getPageRow();
		if (totCount % vo.getPageRow() > 0) totPage++;
		// 시작페이지
		int strPage = (vo.getReqPage()-1)/vo.getPageRange()
						*vo.getPageRange()+1;
		int endPage = strPage+vo.getPageRange()-1;
		if (endPage > totPage) endPage = totPage;
		
		vo.setStrPage(strPage);
		vo.setEndPage(endPage);
		vo.setTotCount(totCount);
		vo.setTotPage(totPage);
		System.out.println(vo);
		return dao.selectAlladmin(vo);
	}


	// 책 이미지 등록
	@Override
	public int bookimg(BookVo vo) {
		return dao.bookimg(vo);
	}

	// 책 광고 리스트
	@Override
	public List<BookVo> adselect(BookVo vo) {
		int totCount = dao.countad(vo);
		// 총페이지수
		int totPage = totCount / vo.getPageRow();
		if (totCount % vo.getPageRow() > 0) totPage++;
		// 시작페이지
		int strPage = (vo.getReqPage()-1)/vo.getPageRange()
						*vo.getPageRange()+1;
		int endPage = strPage+vo.getPageRange()-1;
		if (endPage > totPage) endPage = totPage;
		
		vo.setStrPage(strPage);
		vo.setEndPage(endPage);
		vo.setTotCount(totCount);
		vo.setTotPage(totPage);
		System.out.println(vo);
		return dao.adselect(vo);
	}


	// 광고 이미지 등록
	@Override
	public int bookimgad(BookVo vo) {
		return dao.bookimgad(vo);
	}


	// 광고 상세
	@Override
	public BookVo detailAD(BookVo vo) {
		return dao.detailAD(vo);
	}
	//책 상세
	@Override
	public int adupdate(BookVo vo) {
		return dao.adupdate(vo);
	}
	@Override
	public List<BookVo> ctg(BookVo vo) {
		return dao.ctg(vo);
	}



	@Override
	public List<BookVo> newBook(BookVo vo) {
		return dao.newBook(vo);
	}



	@Override
	public BookVo isOrder(BookVo vo) {
		return dao.isOrder(vo);
	}



	@Override
	public BookVo isReview(BookVo vo) {
		return dao.isReview(vo);
	}
}
