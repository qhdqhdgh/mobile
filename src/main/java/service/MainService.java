package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MainDAO;
import vo.ListVO;
import vo.OrderVO;
import vo.UserVO;

@Service
public class MainService {

	@Autowired
	MainDAO mainDAO;
	
	public UserVO LoginPro(UserVO userVO){		
		return mainDAO.LoginPro(userVO);
	}
	
	public int JoinPro(UserVO userVO){			
		return mainDAO.JoinPro(userVO);
	}
	
	public List<ListVO> ListPro(ListVO listVO){			
		return mainDAO.ListPro(listVO);
	}	
	
	public List<OrderVO> OrderList(OrderVO ordervo){	
		
		//검색 입력값 없을시 기본값 설정
		if(ordervo.getCardCode() == null || ordervo.getCardCode() == "") {
			ordervo.setCardCode("C70000");
			ordervo.setStartDate("2000-01-01");
			ordervo.setEndDate("2020-01-31");
		}
		
		List<OrderVO> OrderList = mainDAO.OrderList(ordervo);
		if(OrderList.size() != 0) {
			for(int i=0; OrderList.size()>i; i++) {
				//DocDate 필요날짜 자르기
				String docdate = OrderList.get(i).getDocDate().substring(0, 10);
				OrderList.get(i).setDocDate(docdate);					
				//VisOrder +1 처리				
				int visorder = OrderList.get(i).getVisOrder()+1;
				OrderList.get(i).setVisOrder(visorder);		
			}
		}		
		
		return OrderList;
	}
	
	public OrderVO OrderDetail(OrderVO ordervo){		
		
		OrderVO OrderDetail = mainDAO.OrderDetail(ordervo);
		if(OrderDetail != null) {
				//DocDate 필요날짜 자르기
				String docdate = OrderDetail.getDocDate().substring(0, 10);
				OrderDetail.setDocDate(docdate);					
				//VisOrder +1 처리				
				int visorder = OrderDetail.getVisOrder()+1;
				OrderDetail.setVisOrder(visorder);		
		}		
		return OrderDetail;
	}
}
