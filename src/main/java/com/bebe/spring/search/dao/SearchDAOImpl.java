package com.bebe.spring.search.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.bebe.spring.vo.Criteria;
import com.bebe.spring.vo.ProductVO;

public class SearchDAOImpl implements SearchDAO {
	@Inject
	SqlSession sqlSession;

	private String namespaceEx = "com.bebe.spring.search.dao.SearchDAO";

	@Override
	public Integer count(Criteria cri) {
		
		return sqlSession.selectOne(namespaceEx + ".count", cri);
	}

	@Override
	public List<ProductVO> getlist(Criteria cri) {
		
		return sqlSession.selectList(namespaceEx+".getlist",cri);
	}






}
