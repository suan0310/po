package com.bebe.spring.detail.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bebe.spring.detail.dao.DetailDao;
import com.bebe.spring.vo.ProductVO;


@Service("detailService")
public class DetailServiceImpl implements DetailService {

	@Autowired
	private DetailDao detailDao;

	@Override
	public List<ProductVO> selectDetailMain(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.selectDetailMain(vo);
	}
	
	@Override
	public List<ProductVO> selectReview(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.selectReview(vo);
	}

	@Override
	public List<ProductVO> updateReview(int r_no) {
		
		return detailDao.updateReview(r_no);
	}
	
	@Override
	public List<ProductVO> selectOne(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.selectOne(vo);
	}	

	@Override
	public List<ProductVO> selectAllQuestion(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.selectAllQuestion(vo);
	}
	
	@Override
	public List<ProductVO> selectOneQuestion(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.selectOneQuestion(vo);
	}
	
	@Override
	public List<ProductVO> selectOptions(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.selectOptions(vo);
	}
	
	@Override
	public List<ProductVO> selectSecondOptions(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.selectSecondOptions(vo);
	}
	
	
	@Override
	public Integer selectStock(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.selectStock(vo);
	}
	
	
	@Override
	public double selectStarAvg(ProductVO vo) {
		return detailDao.selectStarAvg(vo);
	}
	
	@Override
	public List<ProductVO> starCnt(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.starCnt(vo);
	}
	
	@Override
	public int starTotal(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.starTotal(vo);
	}
	
	@Override
	public Integer insertReview(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.insertReview(vo);
	}
	
	@Override
	public Integer insertAnswer(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.insertAnswer(vo);
	}

	
	@Override
	public Integer insertQuestion(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.insertQuestion(vo);
	}

	@Override
	public Integer delAnswer(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.delAnswer(vo);
	}
	
	@Override
	public Integer delQuestion(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.delQuestion(vo);
	}
	
	@Override
	public Integer updateAnswer(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.updateAnswer(vo);
	}
	
	@Override
	public Integer updateQuestion(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.updateQuestion(vo);
	}
	
	@Override
	public List<ProductVO> selectRvBest1(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.selectRvBest1(vo);
	}
	
	@Override
	public List<ProductVO> selectRvBest0(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.selectRvBest0(vo);
	}
	
	@Override
	public Integer updateRvBest1(int[] cntRvNo) {
		for(int i : cntRvNo) detailDao.updateRvBest1(i);		
		return null;
	}
	
	@Override
	public Integer updateRvBest0(int[] cntRvNo) {
		for(int i : cntRvNo) detailDao.updateRvBest0(i);	
		return null;
	}


	//cart and order
	@Override
	public List<ProductVO> selectCart(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.selectCart(vo);
	}
	
@Override
	public Integer insertCart(ProductVO vo) {
		// TODO Auto-generated method stub
		return detailDao.insertCart(vo);
	}

@Override
public Integer selectProductPrice(ProductVO vo) {
	// TODO Auto-generated method stub
	return detailDao.selectProductPrice(vo);
}

}


