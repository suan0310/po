package com.bebe.spring.index.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bebe.spring.index.dao.IndexDAO;
import com.bebe.spring.vo.ProductVO;
import com.bebe.spring.vo.ReviewVO;
@Service(value = "indexService")
public class IndexServiceImpl implements IndexService {
	@Inject
	IndexDAO indexDAO;

	@Override
	public List<ProductVO> newItem(ProductVO pv) {
		// TODO Auto-generated method stub
		return indexDAO.newItem(pv);
	}
	@Override
	public List<ProductVO> hotItem(ProductVO pv) {
		System.out.println("이건");
		return indexDAO.hotItem(pv);
	}

	@Override
	public List<ReviewVO> bestRv(ReviewVO rv) {
		System.out.println("얘");
		return indexDAO.bestRv(rv);
	}



	
	
		
}
