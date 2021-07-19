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


	@Override
	public Integer scount(Criteria cri) {
		// TODO Auto-generated method stub
		System.out.println("쟤");
		System.out.println(searchDao.scount(cri));
		System.out.println(cri);
		return searchDao.scount(cri);
	}


	@Override
	public List<ProductVO> searchlist(Criteria cri) {
		// TODO Auto-generated method stub
		System.out.println("얘");
		System.out.println(searchDao.searchlist(cri));
		System.out.println(searchDao);
		System.out.println(cri);
		return searchDao.searchlist(cri);
	}

}
