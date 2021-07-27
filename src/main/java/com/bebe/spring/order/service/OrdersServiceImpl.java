package com.bebe.spring.order.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bebe.spring.order.dao.OrdersDAO;
import com.bebe.spring.vo.OrdersAddressVO;

@Service("orderService")
public class OrdersServiceImpl implements OrdersService {
	@Inject
	OrdersDAO ordersDAO;
	
	@Override
	public Integer insertOrders(OrdersAddressVO oav) {
				return ordersDAO.insertOrders(oav);
	}

	@Override
	public Integer deleteCart(OrdersAddressVO oav) {
		// TODO Auto-generated method stub
		return ordersDAO.deleteCart(oav);
	}

	@Override
	public Integer stock(OrdersAddressVO oav) {
		// TODO Auto-generated method stub
		return ordersDAO.stock(oav);
	}

	@Override
	public Integer sales(OrdersAddressVO oav) {
		// TODO Auto-generated method stub
		return ordersDAO.sales(oav);
	}


}
