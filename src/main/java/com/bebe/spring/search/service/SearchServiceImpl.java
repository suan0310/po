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
	public int action(Criteria cri) {
		System.out.println(cri.getSubCategory());
		if(cri.getSubCategory()==null || cri.getSubCategory().equals("")) {
			System.out.println();
			return 0;
		}else  {
			return 1;
		}
	}
	@Override
	public Integer count(Criteria cri) {
		return searchDao.count(cri);
	}
	@Override
	public List<Criteria> getlist(Criteria cri) {
		return searchDao.getlist(cri);
	}
	@Override
	public Integer scount(Criteria cri) {
		return searchDao.scount(cri);
	}
	@Override
	public List<Criteria> searchlist(Criteria cri) {
		return searchDao.searchlist(cri);
	}

}
