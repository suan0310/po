package com.bebe.spring.index.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bebe.spring.vo.ProductVO;
import com.bebe.spring.vo.ReviewVO;

public class IndexDAOImpl implements IndexDAO {
	@Inject
	SqlSession sqlSession;

	private String namespaceEx = "com.bebe.spring.index.dao.IndexDAO";
	@Override
	public List<ProductVO> newItem(ProductVO pv) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespaceEx+".newItem",pv);
	}

	@Override
	public List<ProductVO> hotItem(ProductVO pv) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespaceEx+".hotItem",pv);
	}

	@Override
	public List<ReviewVO> bestRv(ReviewVO rv) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespaceEx+".bestRv",rv);
	}





}
