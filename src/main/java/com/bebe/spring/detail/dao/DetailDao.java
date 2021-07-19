package com.bebe.spring.detail.dao;

import java.util.List;

import com.bebe.spring.vo.ProductVO;

public interface DetailDao {

	List<ProductVO> selectDetailMain(ProductVO vo);
	List<ProductVO> selectReview(ProductVO vo);
	List<ProductVO> updateReview(int r_no);
	List<ProductVO> selectOne(ProductVO vo);
	List<ProductVO> selectAllQuestion(ProductVO vo);
	List<ProductVO> selectOneQuestion(ProductVO vo);
	List<ProductVO> selectOptions(ProductVO vo);
	List<ProductVO> selectRvBest1(ProductVO vo);
	List<ProductVO> selectRvBest0(ProductVO vo);
	List<ProductVO> selectSecondOptions(ProductVO vo);
	Integer selectStock(ProductVO vo);
	
	double selectStarAvg(ProductVO vo);
	List <ProductVO> starCnt(ProductVO vo);
	int starTotal(ProductVO vo);	
	Integer insertReview(ProductVO vo);
	Integer insertQuestion(ProductVO vo);
	Integer insertAnswer(ProductVO vo);
	Integer updateAnswer(ProductVO vo);
	Integer updateQuestion(ProductVO vo);
	Integer delQuestion(ProductVO vo);
	Integer delAnswer(ProductVO vo);
	Integer updateRvBest1(int cntRvNo);
	Integer updateRvBest0(int cntRvNo);
	

	//cart
	Integer insertCart(ProductVO vo);
	List<ProductVO> selectCart(ProductVO vo);
	Integer selectProductPrice(ProductVO vo);
	
	
}
