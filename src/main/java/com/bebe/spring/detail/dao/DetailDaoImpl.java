/*
package com.bebe.spring.detail.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.bebe.spring.vo.ProductVO;

public class DetailDaoImpl implements DetailDao {

	@Autowired
	private SqlSession sqlsession;

	private String namespace = "com.bebe.spring.detail.dao.DetailDao";

	@Override
	public List<ProductVO> selectDetailMain(ProductVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".selectDetailMain", vo);
	}
	
	@Override
	public List<ProductVO> selectReview(ProductVO vo) {
		return sqlsession.selectList(namespace + ".selectReview", vo);
	}


	@Override
	public List<ProductVO> updateReview(int r_no) {
		return null;
	}

	@Override
	public List<ProductVO> selectOne(ProductVO vo) {
		return sqlsession.selectOne(namespace+".selectOne", vo);
	}
	
	@Override
	public List<ProductVO> selectAllQuestion(ProductVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectAllQuestion", vo);
	}
	
	@Override
	public List<ProductVO> selectOneQuestion(ProductVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".selectOneQuestion", vo);
	}
	
	
	@Override
	public List<ProductVO> selectOptions(ProductVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectOptions", vo);
	}
	
	@Override
	public List<ProductVO> selectSecondOptions(ProductVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectSecondOptions", vo);
	}
	
	@Override
	public Integer selectStock(ProductVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".selectStock", vo);
	}	
	
	@Override
	public double selectStarAvg(ProductVO vo) {
		return sqlsession.selectOne(namespace+".selectStarAvg", vo);
	}

	@Override
	public List<ProductVO> starCnt(ProductVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".starCnt", vo);
	}
	
	@Override
	public Integer insertAnswer(ProductVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".insertAnswer", vo);
	}
	
	@Override
	public int starTotal(ProductVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".starTotal", vo);
	}

	@Override
	public Integer insertReview(ProductVO vo) {
		return sqlsession.insert(namespace + ".insertReview", vo);
	}
	
	@Override
	public Integer insertQuestion(ProductVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace + ".insertQuestion", vo);
	}
	
	@Override
	public Integer delAnswer(ProductVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.delete(namespace+".delAnswer", vo);
	}
	
	@Override
	public Integer delQuestion(ProductVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.delete(namespace+".delQuestion", vo);
	}
	
	@Override
	public Integer updateAnswer(ProductVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".updateAnswer", vo);
	}
	
	@Override
	public Integer updateQuestion(ProductVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".updateQuestion", vo);
	}
	
	@Override
	public List<ProductVO> selectRvBest1(ProductVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectRvBest1", vo);
	}
	
	@Override
	public List<ProductVO> selectRvBest0(ProductVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectRvBest0", vo);
	}
	
	@Override
	public Integer updateRvBest1(int cntRvNo) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".updateRvBest1", cntRvNo);
	}
	
	@Override
	public Integer updateRvBest0(int cntRvNo) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".updateRvBest0", cntRvNo);
	}
	
	//cart and order
	@Override
	public List<ProductVO> selectCart(ProductVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectCart", vo);
	}
	
	@Override
	public Integer insertCart(ProductVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".insertCart", vo);
	}
	
	@Override
	public Integer selectProductPrice(ProductVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".selectProductPrice", vo);
	}
	
	
}

*/