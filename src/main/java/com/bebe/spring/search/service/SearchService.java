package com.bebe.spring.search.service;

import java.util.List;

import com.bebe.spring.vo.Criteria;
import com.bebe.spring.vo.ProductVO;

public interface SearchService {
	
//카테고리별 수량
	public Integer count(Criteria cri);
//출력
	public List<ProductVO> getlist(Criteria cri);


}
