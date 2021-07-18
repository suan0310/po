package com.bebe.spring.user.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.bebe.spring.vo.OrdersAddressVO;
import com.bebe.spring.vo.ProductOrdersVO;

public class UserDaoImpl implements UserDao {
	private String namespaceEx = "com.bebe.spring.user.dao.UserDao";


	@Autowired
	private SqlSession sqlsession;

	@Override
	public List<ProductOrdersVO> selectOrdersList(String id) {
		return sqlsession.selectList(namespaceEx+".selectOrdersList", id);
	}

	
	@Override
	public OrdersAddressVO selectAddress(int orderNo) {
		return sqlsession.selectOne(namespaceEx+".selectAddress", orderNo);
	}


	@Override
	public Integer updatePostCancel(int orderNo) {
		return sqlsession.update(namespaceEx+".updatePostCancel", orderNo);
	}	
	
	
}
