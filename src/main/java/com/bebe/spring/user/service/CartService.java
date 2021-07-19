package com.bebe.spring.user.service;

import java.util.List;

import com.bebe.spring.vo.CartVO;

public interface CartService {
		public List<CartVO> cart();
		public int delete(CartVO cv);
		
		public List<CartVO> order(CartVO cv);
}
