package com.bebe.spring.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bebe.spring.user.dao.UserDao;
import com.bebe.spring.vo.OrdersAddressVO;
import com.bebe.spring.vo.OrdersVO;
import com.bebe.spring.vo.UsersVO;

@Service ("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;

	@Override
	public List<OrdersVO> selectOrdersList(String id) {
		return userDao.selectOrdersList(id);
	}

	@Override
	public OrdersAddressVO selectAddress(int orderNo) {
		return userDao.selectAddress(orderNo);
	}

	@Override
	public Integer updatePostCancel(int orderNo) {
		// TODO Auto-generated method stub

		return userDao.updatePostCancel(orderNo);
	}
	
	@Override
	public void modify(UsersVO vo) {
		userDao.modify(vo);
	}
	
	
	
}
