package com.bebe.spring.search.dao;

import java.util.List;

import com.bebe.spring.vo.Criteria;
import com.bebe.spring.vo.ProductVO;


public interface SearchDAO {
	//카테고리별 수량
	public Integer count(Criteria cri);
	//출력
	public List<ProductVO> getlist(Criteria cri);
	
	
	public Integer scount(Criteria cri);
	public List<ProductVO> searchlist(Criteria cri);

	
}