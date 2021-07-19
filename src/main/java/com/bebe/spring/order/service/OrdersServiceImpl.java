package com.bebe.spring.order.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bebe.spring.order.dao.OrdersDAO;
import com.bebe.spring.vo.OrdersAddressVO;

@Service("orderService")
public class OrdersServiceImpl implements OrdersService {
	@Inject
	OrdersDAO ordersDAO;
	
	@Override
	public int insertOrders(OrdersAddressVO vo) {
		System.out.println("service ->DAO ->DB->DAO->service");
		return ordersDAO.insertOrders(vo);
	}

}
