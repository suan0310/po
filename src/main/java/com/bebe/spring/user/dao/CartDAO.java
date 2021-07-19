package com.bebe.spring.user.dao;

import java.util.List;

import com.bebe.spring.vo.CartVO;

public interface CartDAO {
		public List<CartVO> cart();
		public int delete(CartVO cv);
		
		
		public List<CartVO> order(CartVO cv);
		
}
