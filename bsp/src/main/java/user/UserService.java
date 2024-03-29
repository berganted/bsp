package user;

import java.util.List;

public interface UserService {
	List<UserVo> selectAll(UserVo vo);

	UserVo detail(UserVo vo);

	int insert(UserVo vo);

	UserVo edit(UserVo vo);

	int update(UserVo vo);

	int updatepwd(UserVo vo);

	int delete(UserVo vo);

	int isDuplicateld(String id);

	int isDuplicateemail(UserVo vo);

	UserVo login(UserVo vo);

	UserVo searchid(UserVo vo);

	UserVo searchpwd(UserVo vo);
	
	int insertwhydel(UserVo vo);
	
	int selectpoint(UserVo vo);
}
