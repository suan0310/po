package com.bebe.spring.user.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.bebe.spring.vo.CartVO;

public class CartDAOImpl implements CartDAO{
	@Inject
	SqlSession sqlSession;

	private String namespaceEx = "com.bebe.spring.user.dao.CartDAO";

	@Override
	public List<CartVO> cart() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespaceEx+".cart");
	}

	@Override
	public int delete(CartVO cv) {
		 return sqlSession.delete(namespaceEx+".delete",cv);
	}

	@Override
	public List<CartVO> order(CartVO cv) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespaceEx+".order",cv);
	}
	
}
