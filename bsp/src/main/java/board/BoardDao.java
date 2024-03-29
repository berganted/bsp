package board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class BoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<BoardVo> selectAll(BoardVo vo) {
		return sqlSession.selectList("board.selectAll", vo);
	}
	
	public int count(BoardVo vo) {
		return sqlSession.selectOne("board.count", vo);
	}
	
	public BoardVo detail(BoardVo vo) {
		return sqlSession.selectOne("board.detail", vo);
	}
	
	public void updateReadcount(BoardVo vo) {
		sqlSession.update("board.updateReadcount", vo);
	}
	
	public void q_gno(int vo) {
		sqlSession.update("board.q_gno", vo);
	}
	
	public int insert(BoardVo vo) {
		return sqlSession.insert("board.insert", vo);
	}
	
	public int insertReply(BoardVo vo) {
		return sqlSession.insert("board.insertReply", vo);
	}
	public int onoUpdate(BoardVo vo) {
		return sqlSession.update("board.onoUpdate", vo);
	}
	
	public int update(BoardVo vo) {
		return sqlSession.update("board.update", vo);
	}
	
	public int delFilename(BoardVo vo) {
		return sqlSession.update("board.delFilename", vo);
	}
	
	public int delete(BoardVo vo) {
		return sqlSession.delete("board.delete", vo);
	}
}
