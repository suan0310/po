package com.bebe.spring.search.service;

import java.util.List;

import com.bebe.spring.vo.Criteria;
import com.bebe.spring.vo.ProductVO;

public interface SearchService {
	int action(Criteria cri);
//카테고리별 수량
	public Integer count(Criteria cri);
//출력
	public List<Criteria> getlist(Criteria cri);

	public Integer scount(Criteria cri);
	public List<Criteria> searchlist(Criteria cri);
}
