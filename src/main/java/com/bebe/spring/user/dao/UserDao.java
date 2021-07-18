package com.bebe.spring.user.dao;

import java.util.List;
import java.util.Map;

import com.bebe.spring.vo.OrdersAddressVO;
import com.bebe.spring.vo.ProductOrdersVO;

public interface UserDao {
	List<ProductOrdersVO> selectOrdersList(String id); 
	OrdersAddressVO selectAddress(int orderNo);
	Integer updatePostCancel(int orderNo);
}
