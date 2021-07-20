/*
package com.bebe.spring.detail.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.bebe.spring.vo.DetailVO;

public class DetailDaoImpl implements DetailDao {

	@Autowired
	private SqlSession sqlsession;

	private String namespace = "com.bebe.spring.detail.dao.DetailDao";

	@Override
	public List<DetailVO> selectDetailMain(DetailVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".selectDetailMain", vo);
	}
	
	@Override
	public List<DetailVO> selectReview(DetailVO vo) {
		return sqlsession.selectList(namespace + ".selectReview", vo);
	}


	@Override
	public List<DetailVO> updateReview(int r_no) {
		return null;
	}

	@Override
	public List<DetailVO> selectOne(DetailVO vo) {
		return sqlsession.selectOne(namespace+".selectOne", vo);
	}
	
	@Override
	public List<DetailVO> selectAllQuestion(DetailVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectAllQuestion", vo);
	}
	
	@Override
	public List<DetailVO> selectOneQuestion(DetailVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".selectOneQuestion", vo);
	}
	
	
	@Override
	public List<DetailVO> selectOptions(DetailVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectOptions", vo);
	}
	
	@Override
	public List<DetailVO> selectSecondOptions(DetailVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectSecondOptions", vo);
	}
	
	@Override
	public Integer selectStock(DetailVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".selectStock", vo);
	}	
	
	@Override
	public double selectStarAvg(DetailVO vo) {
		return sqlsession.selectOne(namespace+".selectStarAvg", vo);
	}

	@Override
	public List<DetailVO> starCnt(DetailVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".starCnt", vo);
	}
	
	@Override
	public Integer insertAnswer(DetailVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".insertAnswer", vo);
	}
	
	@Override
	public int starTotal(DetailVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".starTotal", vo);
	}

	@Override
	public Integer insertReview(DetailVO vo) {
		return sqlsession.insert(namespace + ".insertReview", vo);
	}
	
	@Override
	public Integer insertQuestion(DetailVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace + ".insertQuestion", vo);
	}
	
	@Override
	public Integer delAnswer(DetailVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.delete(namespace+".delAnswer", vo);
	}
	
	@Override
	public Integer delQuestion(DetailVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.delete(namespace+".delQuestion", vo);
	}
	
	@Override
	public Integer updateAnswer(DetailVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".updateAnswer", vo);
	}
	
	@Override
	public Integer updateQuestion(DetailVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".updateQuestion", vo);
	}
	
	@Override
	public List<DetailVO> selectRvBest1(DetailVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectRvBest1", vo);
	}
	
	@Override
	public List<DetailVO> selectRvBest0(DetailVO vo) {
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
	public List<DetailVO> selectCart(DetailVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".selectCart", vo);
	}
	
	@Override
	public Integer insertCart(DetailVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".insertCart", vo);
	}
	
	@Override
	public Integer selectProductPrice(DetailVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".selectProductPrice", vo);
	}
	
	
}

*/