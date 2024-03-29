package cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CartServiceimpl implements CartService {
	@Autowired
	CartDao dao ;

	@Override
	public List<CartVo> selectAll(CartVo vo) {
		return dao.selectAll(vo);
	}
	
	@Override
	public int insert(CartVo vo) {
		if(dao.selectcheak(vo) != null) {
			return dao.ifdue(vo);
		}else {
			return dao.insert(vo);
		}
	}

	@Override
	public int update(CartVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(CartVo vo) {
		return dao.delete(vo);
	}

	@Override
	public CartVo selectone(CartVo vo) {
		return dao.selectone(vo);
	}



}
