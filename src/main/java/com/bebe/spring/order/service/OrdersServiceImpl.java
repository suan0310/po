//package com.bebe.spring.order.service;
//
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//import javax.inject.Inject;
//
//import org.springframework.stereotype.Service;
//
//import com.bebe.spring.order.dao.OrdersDAO;
//import com.bebe.spring.vo.OrdersAddressVO;
//
//@Service("orderService")
//public class OrdersServiceImpl implements OrdersService {
//	@Inject
//	OrdersDAO ordersDAO;
//	
//	@Override
//	public Integer insertOrders(List<OrdersAddressVO> vo) {
//		System.out.println("service ->DAO ->DB->DAO->service");
//		int count=0;
//		Map<String,Object> map = new HashMap<String, Object>();
//		map.put("list", vo);
//		count+=ordersDAO.insertOrders("OrdersAddress.insertOrders",map);
//		return count;
//	}
//
//
//}
