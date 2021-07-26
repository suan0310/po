package com.bebe.spring.search.service;

import java.util.List;

import com.bebe.spring.vo.Criteria;
import com.bebe.spring.vo.ProductVO;

public interface SearchService {
<<<<<<< HEAD

	int action(Criteria cri);

	//카테고리별 수량
	public Integer count(Criteria cri);
=======
	int action(Criteria cri);
//카테고리별 수량
	public Integer count(Criteria cri);
//출력
	public List<Criteria> getlist(Criteria cri);
>>>>>>> origin/oyw_work_backup

	//출력
	public List<Criteria> getlist(Criteria cri);

	// 검색기준 수량
	public Integer scount(Criteria cri);
<<<<<<< HEAD

	// 검색상품 출력
=======
>>>>>>> origin/oyw_work_backup
	public List<Criteria> searchlist(Criteria cri);
}
