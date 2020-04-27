package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.ListVO;
import vo.OrderVO;
import vo.UserVO;

@Repository
public class MainDAO {

	@Autowired
	SqlSessionTemplate sqlSession;	
	
	public UserVO LoginPro(UserVO userVO){
		
		return sqlSession.selectOne("pp.LoginPro", userVO);
	}
	
	public int JoinPro(UserVO userVO){
		
		return sqlSession.insert("pp.JoinPro", userVO);
	} 
	
	public List<ListVO> ListPro(ListVO listVO){
		
		return sqlSession.selectList("pp.ListPro", listVO);
	}

	
	public List<OrderVO> OrderList(OrderVO ordervo){
		
		return sqlSession.selectList("pp.OrderList", ordervo);
	}
	
	public OrderVO OrderDetail(OrderVO ordervo){
		
		return sqlSession.selectOne("pp.OrderDetail", ordervo);
	}
	
}
