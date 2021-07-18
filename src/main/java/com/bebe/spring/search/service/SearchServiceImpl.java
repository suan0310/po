package com.bebe.spring.search.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bebe.spring.search.dao.SearchDAO;
import com.bebe.spring.vo.Criteria;
import com.bebe.spring.vo.ProductVO;

@Service(value = "searchService")
public class SearchServiceImpl implements SearchService {
	@Inject
	SearchDAO searchDao;
	

	@Override
	public Integer count(Criteria cri) {
		
		return searchDao.count(cri);
	}


	@Override
	public List<ProductVO> getlist(Criteria cri) {
		
		return searchDao.getlist(cri);
	}

}
