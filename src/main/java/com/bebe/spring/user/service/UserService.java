package com.bebe.spring.user.service;

import java.util.List;

import com.bebe.spring.vo.OrdersAddressVO;
import com.bebe.spring.vo.ProductOrdersVO;

public interface UserService {
	List<ProductOrdersVO> selectOrdersList(String id); 	
	OrdersAddressVO selectAddress(int orderNo);
	Integer updatePostCancel(int orderNo);

}