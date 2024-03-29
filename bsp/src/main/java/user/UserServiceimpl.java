package user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import common.SendMail;

@Service
public class UserServiceimpl implements UserService {
	@Autowired
	UserDao dao ; 
	@Override
	public List<UserVo> selectAll(UserVo vo) {
		int totCount = dao.count(vo);	
		int totPage = totCount/vo.getPageRow();
		if(totCount % vo.getPageRow()>0) totPage++;
		int strPage = (vo.getReqPage()-1)/vo.getPageRange()*vo.getPageRange()+1;
		int endPage = strPage + (vo.getPageRange()-1);
		if(endPage>totPage) {
			endPage = totPage;
		}
		vo.setStrPage(strPage);
		vo.setEndPage(endPage);
		vo.setTotCount(totCount);
		vo.setTotPage(totPage);
		return dao.selectAll(vo);
	}
	@Override
	public UserVo detail(UserVo vo) {
		return dao.detail(vo);
	}
	@Override
	public UserVo edit(UserVo vo) {
		return dao.detail(vo);
	}
	@Override
	public int insert(UserVo vo) {
		return dao.insert(vo);
		
	}
	@Override
	public int update(UserVo vo) {
		return dao.update(vo);
		
	}
	@Override
	public int delete(UserVo vo) {
		return dao.delete(vo);
		 
	}
	@Override
	public int isDuplicateld(String id) {
		return dao.isDuplicateld(id);
	}
	@Override
	public UserVo login(UserVo vo) {
		return dao.login(vo);
	}
	@Override
	public UserVo searchid(UserVo vo) {
		return dao.searchid(vo);
	}
	@Override
	public UserVo searchpwd(UserVo vo) {
		UserVo uv = dao.searchpwd(vo);
		if(uv != null) {
			// 임시비밀번호 생성 
			String tempPwd = "";
			for(int i = 0 ;i<3; i++) {
				tempPwd += (char)((Math.random()*26)+65);
			}
			for(int i =0; i<3; i++) {
				tempPwd+=(int)((Math.random()*9));
			}
			uv.setM_pwd(tempPwd);
			dao.updateTempPwd(uv);
			//이메일 전송
			SendMail.sendMail("cksgh901@naver.com", uv.getM_email()+'@'+uv.getM_email_d(),
					"BSP 비밀번호 찾기 서비스입니다.",
					uv.getM_name()+"님에 임시비밀번호는"+tempPwd+"입니다.");
			
		}
		
		return uv;
	}
	@Override
	public int updatepwd(UserVo vo) {
		return dao.updatepwd(vo);
	}
	@Override
	public int isDuplicateemail(UserVo vo) {
		return dao.isDuplicateemail(vo);
	}
	@Override
	public int insertwhydel(UserVo vo) {
		return dao.insertwhydel(vo);
	}
	@Override
	public int selectpoint(UserVo vo) {
		return dao.selectpoint(vo);
	}

}
