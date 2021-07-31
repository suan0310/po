package com.bebe.spring.user.service;

import java.util.List;

import com.bebe.spring.vo.OrdersAddressVO;
import com.bebe.spring.vo.OrdersVO;

public interface UserService {
	List<OrdersVO> selectOrdersList(String id); 	
	OrdersAddressVO selectAddress(int orderNo);
	Integer updatePostCancel(int orderNo);

}