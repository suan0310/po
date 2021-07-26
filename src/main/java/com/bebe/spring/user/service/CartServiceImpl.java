package com.bebe.spring.user.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bebe.spring.user.dao.CartDAO;
import com.bebe.spring.vo.CartVO;

@Service(value = "cartService")
public class CartServiceImpl implements CartService {
	@Inject
	CartDAO cartDAO;

	@Override
	public List<CartVO> cart( CartVO cv) {
		// TODO Auto-generated method stub
		return cartDAO.cart(cv);
	}

	@Override
	public int delete(CartVO cv) {

		 return cartDAO.delete(cv);
		
	}

	@Override
	public CartVO order(CartVO cv) {
		// TODO Auto-generated method stub
		return cartDAO.order(cv);
	}
}
