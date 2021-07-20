package com.bebe.spring.order.service;

import java.util.List;
import java.util.Map;

import com.bebe.spring.vo.OrdersAddressVO;

public interface OrdersService {
	Integer insertOrders(List<OrdersAddressVO> vo );
	
}
