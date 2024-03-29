package book;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public List<BookVo> selectAll(BookVo vo) {
		return sqlSession.selectList("book.selectAll", vo);
	}
	
	public List<BookVo> solbestBook(BookVo vo) {
		return sqlSession.selectList("book.solbestBook", vo);
	}
	
	public List<BookVo> solnewBook(BookVo vo) {
		return sqlSession.selectList("book.solnewBook", vo);
	}
	
	public List<BookVo> selectAllBasic(BookVo vo) {
		return sqlSession.selectList("book.selectAllBasic", vo);
	}
	public List<BookVo> ctg(BookVo vo) {
		return sqlSession.selectList("book.ctg", vo);
	}
	
	public List<BookVo> selectAlladmin(BookVo vo) {
		return sqlSession.selectList("book.selectAlladmin", vo);
	}
	public int bookimg(BookVo vo) {
		return sqlSession.insert("book.bookimg",vo);
	}
	public int bookimgad(BookVo vo) {
		return sqlSession.insert("book.bookimgad",vo);
	}

	public BookVo isOrder(BookVo vo) {
		return sqlSession.selectOne("book.isOrder", vo);
	}
	public BookVo isReview(BookVo vo) {
		return sqlSession.selectOne("book.isReview", vo);
	}
	
	public List<BookVo> selectAll1(BookVo vo) {
		return sqlSession.selectList("book.selectAll1", vo);
	}
	public List<BookVo> selectAll2(BookVo vo) {
		return sqlSession.selectList("book.selectAll2", vo);
	}
	public List<BookVo> selectAll3(BookVo vo) {
		return sqlSession.selectList("book.selectAll3", vo);
	}
	
	
	public BookVo selectCtgno2(BookVo vo) {
		return sqlSession.selectOne("book.selectCtgno2", vo);
	}
	
	// index.do 오늘의책
	public List<BookVo> selectAll4(BookVo vo) {
		return sqlSession.selectList("book.selectAll4", vo);
	}
	// index.do 광고
	public List<BookVo> selectAll5(BookVo vo) {
		return sqlSession.selectList("book.selectAll5", vo);
	}
	public List<BookVo> selectAll6(BookVo vo) {
		return sqlSession.selectList("book.selectAll6", vo);
	}
	// index.do 베스트샐러
	public List<BookVo> selectAll7(BookVo vo) {
		return sqlSession.selectList("book.selectAll7", vo);
	}
	// index.do 신상
	public List<BookVo> selectAll8(BookVo vo) {
		return sqlSession.selectList("book.selectAll8", vo);
	}
	// popular 인기검색어 
	public int popular(BookVo vo) {
		return sqlSession.insert("book.popular", vo);
	}
	public List<BookVo> popular_search(BookVo vo) {
		return sqlSession.selectList("book.popular_search", vo);
	}
	
	public List<BookVo> selectctgnamed(BookVo vo) {
		return sqlSession.selectList("book.selectctgnamed", vo);
	}
	
	public int count(BookVo vo) {
		return sqlSession.selectOne("book.count", vo);
	}
	
	public int smallCount(BookVo vo) {
		return sqlSession.selectOne("book.smallCount", vo);
	}
	public int solbestCount(BookVo vo) {
		return sqlSession.selectOne("book.solbestCount", vo);
	}
	
	public int solnewCount(BookVo vo) {
		return sqlSession.selectOne("book.solnewCount", vo);
	}
	
	public int countad(BookVo vo) {
		return sqlSession.selectOne("book.countad", vo);
	}
	
	public BookVo detail(BookVo vo) {
		return sqlSession.selectOne("book.detail", vo);
	}
	
	public int insert(BookVo vo) {
		return sqlSession.insert("book.insert", vo);
	}
	
	public int update(BookVo vo) {
		return sqlSession.update("book.update", vo);
	}
	public int adupdate(BookVo vo) {
		return sqlSession.update("book.adupdate", vo);
	}
	
	public int delete(BookVo vo) {
		return sqlSession.delete("book.delete", vo);
	}
	public int deletead(BookVo vo) {
		return sqlSession.delete("book.deletead", vo);
	}
	
	public List<BookVo> adselect(BookVo vo){
		return sqlSession.selectList("book.adselect",vo);
	}
	public BookVo detailAD(BookVo vo) {
		return sqlSession.selectOne("book.detailAD", vo);
	}
	
	//신상품
	public List<BookVo> newBook(BookVo vo) {
		return sqlSession.selectList("book.newBook", vo);
	}
	public int selectAlladmincnt(BookVo vo) {
		return sqlSession.selectOne("book.selectAlladmincnt",vo);
	}
}
