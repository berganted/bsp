package returning;

import java.util.List;


public interface ReturningService {
	
	List<ReturningVo> selectAll(ReturningVo vo);
	
	ReturningVo selectPopupRt(ReturningVo vo);
	
	ReturningVo selectPopupRp(ReturningVo vo);
	
	ReturningVo detail1(ReturningVo vo);
	
	List<ReturningVo> detail2(ReturningVo vo);

	int insertRd(ReturningVo vo);
	int insertRt(ReturningVo vo);
	void updatePs(int no);
	int updatePi(int no);
	int updatePb(int no);
	int delete(ReturningVo vo);
	
	List<ReturningVo> selectop(ReturningVo vo);
	int updatepsno(ReturningVo vo);
	
	List<ReturningVo> selectAlladmin(ReturningVo vo);
	


}
